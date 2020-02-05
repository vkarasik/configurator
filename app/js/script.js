var currentConfig = {
    base: [{
        brand: '',
        name: '',
        description: '',
        cpu: null,
        ram: null,
        hdd: null,
        ssd: '212',
        quantity: null,
        price: null,
        term: null,
    }],
    cpu: [{
        brand: '',
        name: '',
        description: '',
        quantity: null,
        price: null,
        term: null,
    }],
    ram: [{
        brand: '',
        name: '',
        description: '',
        quantity: null,
        price: null,
        term: null,
    }],
    hdd: [{
        brand: '',
        name: '',
        description: '',
        quantity: null,
        price: null,
        term: null,
    }],
    ssd: [{
        brand: '',
        name: '',
        description: '',
        quantity: null,
        price: null,
        term: null,
    }],
    options: [{
        brand: '',
        name: '',
        description: '',
        quantity: null,
        price: null,
        term: null,
    }]
};

document.addEventListener('DOMContentLoaded', function (e) {

    // Event listeners
    document.querySelector('.config').addEventListener('click', function (e) {

        // set on clear button
        if (e.target.classList.contains('config__item-icon_clear')) {
            // check if row is cloned
            if (e.target.parentElement.parentNode.dataset.iscloned == 'true') {
                delItem(e);
            } else {
                clearItem(e);
            }
        }
        // set on add button
        else if (e.target.classList.contains('config__item-icon_add')) {
            addItem(e);
        }
        // set on icon and title
        else if (e.target.classList.contains('config__item-type-img') || e.target.classList.contains('config__item-type-name')) {
            getData(e)
        }
    })

    document.querySelectorAll('.modal__close').forEach(function (e) {
        e.addEventListener('click', hideModal);
    })

    document.querySelector('.components').addEventListener('click', function (e) {
        if (e.target.className == 'components__item-select-icon') {
            choseComponent(e.target);
        }
    })

    // Show modal window
    function showModal(e) {
        document.querySelector('body').classList.add('modal-open'); // prevent scroll body
        document.querySelector('.modal').classList.add('modal_show');

        document.querySelector('.modal__head').innerHTML = e.firstElementChild.dataset.configItemTitle;


    }

    // Hide modal window
    function hideModal() {
        document.querySelector('.modal').classList.remove('modal_show');
        document.querySelector('body').classList.remove('modal-open'); // allow scroll body
        document.querySelector('.components tbody').innerHTML = ""; // clean content inside
    }

    // Chose Component
    function choseComponent(item) {
        var table = document.querySelector('.components'); // get nodeinfo from data attr
        var node = table.dataset.node;
        var componentType = table.dataset.componentType;
        var index = table.dataset.nodeIndex;
        var componentObj = currentConfig[componentType][index];

        var item = item.parentElement.parentElement;
        componentObj.name = item.dataset.shortname;
        componentObj.price = item.dataset.price;
        componentObj.term = item.dataset.term;
        componentObj.quantity = 1;

        refreshData();
        hideModal();
    }

    // Refresh Data
    function refreshData() {
        var configItems = document.querySelectorAll('.config__item'); // get config items
        var resultLine = document.querySelector('.result__item-description');
        resultLine.textContent = '';


        // Fill config items
        for (i = 0; i < configItems.length; i++) {
            var itemType = configItems[i].dataset.configItemType;
            var itemIndex = configItems[i].dataset.index;
            var item = currentConfig[itemType][itemIndex]; // Config item

            if (item.name == '') {
                continue; // if there isn't data in config object, then skip this item
            }

            configItems[i].children[0].children[1].textContent = item.name; // set name;
            configItems[i].children[1].children[0].value = item.quantity; // set quantity;
            configItems[i].children[1].children[0].disabled = false; // set quantity;
            configItems[i].children[2].innerHTML = item.price + "&nbsp;$"; // set price;
            configItems[i].children[3].innerHTML = item.term + "&nbsp;дн."; // set term;

            resultLine.textContent += 'Hi';
        }
    }

    // Add Item
    function addItem(e) {
        var node = e.target.parentElement.parentNode; // why node? might be better Element?
        var clnNode = node.cloneNode(true);
        clnNode.dataset.iscloned = 'true'; // set attr for deleteItem
        clnNode.children[4].children[0].remove(); // delete add button
        clnNode.dataset.index = currentConfig[node.id].length; // get array length
        clnNode.id += currentConfig[node.id].length; // set new id
        currentConfig[node.id].push({
            brand: null,
            name: null,
            description: null,
            quantity: null,
            price: null,
            term: null,
        }); // add new item into array
        // clearItem(clnNode.children); // clear item row
        clearItem(e); // clear item row
        document.querySelector('.config').insertBefore(clnNode, node.nextElementSibling); // add item on the page
    }

    // Del Item
    function delItem(e) {
        var node = e.target.parentElement.parentNode;
        delete currentConfig[node.dataset.configItemType][parseInt(node.dataset.index)]; // del item from array
        node.remove();
        refreshData();

    }

    // Clear Item
    function clearItem(e) {
        var rowItems = e.target.parentElement.parentElement.children; // get items in row
        var node = e.target.parentElement.parentElement.dataset.configItemType;
        var currentObject = currentConfig[node][0];

        rowItems[0].children[1].innerHTML = rowItems[0].dataset.configItemTitle; // item type
        rowItems[1].firstElementChild.value = null; // item quantity
        rowItems[1].firstElementChild.disabled = true;
        rowItems[2].innerHTML = "—"; // item price
        rowItems[3].innerHTML = "—"; // item term

        // clear info in currentConfig object
        for (key in currentObject) {
            currentObject[key] = '';
        }
        refreshData();
    }

    // Getting components list from JSON
    function getData(e) {
        var curNode = e.target.parentElement.parentElement; // node to put data into
        var curComponent = curNode.dataset.configItemType; // current component
        var swichState = document.getElementById('compatibility').checked; // get compatibility switch state
        var url = 'get-component.php?cmpt=' + curComponent;

        if (curComponent !== 'base' && swichState) {
            var filter = currentConfig['base'][0][curComponent]; // get filter for MYSQL WHERE clause
            var url = url + '?filter=' + filter;
            // если база еще не выбрана то на рендер только строка с предупреждением
            xhrequest(url, curNode, curComponent);
        } else {
            xhrequest(url, curNode, curComponent);
        }
    }

    // Sending request
    function xhrequest(url, curNode, curComponent) {

        var requestPrice = new XMLHttpRequest();
        requestPrice.open('GET', 'json/price.json', true);
        requestPrice.onload = function () {
            var data = JSON.parse(this.response);
            var curComponentList = data[curComponent];
            renderTable(curComponentList, curNode, curComponent);
        }
        requestPrice.send();
    }

    // Rendering table
    function renderTable(curComponentList, curNode, curComponent) {

        // Link with current node
        var componentsTable = document.querySelector('.components');
        componentsTable.dataset.node = curNode.id;
        componentsTable.dataset.componentType = curComponent;
        componentsTable.dataset.nodeIndex = curNode.dataset.index;

        // Render rows
        for (i = 0; i < curComponentList.length; i++) {
            var componentName = curComponentList[i].name + ' (' + curComponentList[i].spec + ')';
            var componentShortName = curComponentList[i].name;
            var componentPrice = curComponentList[i].price;
            var componentAvailability = curComponentList[i].availability;
            var componentSubcategory = curComponentList[i].subcategory;

            // Add subcat row
            var rowSubCat = document.createElement('tr');
            rowSubCat.classList.add('components__category');
            rowSubCat.innerHTML = '<td colspan="4">' + componentSubcategory + '</td>';
            document.querySelector('.components tbody').appendChild(rowSubCat);

            // Add component row 
            var row = document.createElement('tr');
            row.classList.add('components__item');
            row.dataset.shortname = componentShortName;
            row.dataset.price = componentPrice;
            row.dataset.term = componentAvailability;

            var tdName = '<td class="components__item-desc">' + componentName + '</td>';
            var tdPrice = '<td class="components__item-price">' + componentPrice + '&nbsp;$</td>';
            var tdTerm = '<td class="components__item-term">' + componentAvailability + '&nbsp;дн.</td>';
            var tdSelect = '<td class="components__item-select" title="Выбор компонента"><img class="components__item-select-icon" src="img/icon_add-blue.svg" title="Выбор компонента"></td>';

            row.innerHTML = tdName + tdPrice + tdTerm + tdSelect;
            document.querySelector('.components tbody').appendChild(row);
        }

        // Delete double subcats
        var subCategories = document.querySelectorAll('.components__category');
        for (i = 0; i < subCategories.length - 1; i++) { // Don't take last element
            if (subCategories[i].innerHTML == subCategories[i + 1].innerHTML) {
                var tbody = subCategories[i + 1].parentElement;
                tbody.removeChild(subCategories[i + 1]);
                //subCategories[i + 1].remove(); // IE11+
            }
        }
        showModal(curNode);
    }

    // Get components list from DB
    // function getData(component) { //component = e
    //     var curComponent = component.currentTarget.parentElement.id;

    //     var requestPrice = new XMLHttpRequest();
    //     requestPrice.open('GET', 'get-component.php?cmpt=' + curComponent);
    //     requestPrice.onload = function () {
    //         var data = JSON.parse(this.response);
    //         var curComponentList = data;
    //         selectionData(curComponentList, curComponent);
    //     }
    //     requestPrice.send();
    // }

})