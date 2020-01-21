var currentConfig = {
    base: '121212',
    cpu: '323423423',
    ram: '',
    hdd: '',
    ssd: '',
    options: ''
};

var currentConfig_1 = {
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
        name: '12',
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

    document.querySelector('.config').addEventListener('click', function (e) {
        if (e.target.classList.contains('config__item-icon_clear')) {
            if (e.target.parentElement.parentNode.dataset.iscloned == 'true') {
                delItem(e);
            } else {
                var rowItems = e.target.parentElement.parentElement.children;
                clearItem(rowItems);
            }
        } else if (e.target.classList.contains('config__item-icon_add')) {
            addItem(e);
        } else if (e.target.classList.contains('config__item-type-img') || e.target.classList.contains('config__item-type-name')) {
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

        document.querySelector('.modal__head').innerHTML = e.target.parentElement.dataset.configItemTitle;
    }

    // Hide modal window
    function hideModal() {
        document.querySelector('.modal').classList.remove('modal_show');
        document.querySelector('body').classList.remove('modal-open'); // allow scroll body
        document.querySelector('.components tbody').innerHTML = ""; // clean content inside
    }

    // Chose Component
    function choseComponent(item) {
        var row = item.parentElement.parentElement;
        var nodeIndex = row.dataset.nodeIndex;

        currentConfig['base'] = e.target.parentElement.parentElement.dataset.componentName;

        hideModal();
    }

    // Add Item
    function addItem(e) {
        var node = e.target.parentElement.parentNode;
        var clnNode = node.cloneNode(true);
        clnNode.dataset.iscloned = 'true'; // set attr for deleteItem
        clnNode.children[4].children[0].remove(); // delete add button
        clnNode.dataset.index = currentConfig_1[node.id].length; // get array length
        clnNode.id += currentConfig_1[node.id].length; // set new id
        currentConfig_1[node.id].push({
            brand: null,
            name: null,
            description: null,
            quantity: null,
            price: null,
            term: null,
        }); // add new item into array
        clearItem(clnNode.children); // clear item row
        document.querySelector('.config').insertBefore(clnNode, node.nextElementSibling); // add item on the page
    }

    // Del Item
    function delItem(e) {
        var node = e.target.parentElement.parentNode;
        delete currentConfig_1[node.dataset.configItemType][parseInt(node.dataset.index)]; // del item from array
        node.remove();
    }

    // Clear Item
    function clearItem(rowItems) {
        rowItems[0].children[1].innerHTML = rowItems[0].dataset.configItemTitle; // item type
        rowItems[1].firstElementChild.value = null; // item quantity
        rowItems[1].firstElementChild.disabled = true;
        rowItems[2].innerHTML = "—"; // item price
        rowItems[3].innerHTML = "—"; // item term
    }

    // Getting components list from JSON
    function getData(e) {
        var curNode = e.target.parentElement.parentElement; // node to put data into
        var curComponent = curNode.dataset.configItemType; // current component
        var swichState = document.getElementById('compatibility').checked; // get compatibility switch state
        var url = 'get-component.php?cmpt=' + curComponent;

        if (curComponent !== 'base' && swichState) {
            var filter = currentConfig_1['base'][0][curComponent]; // get filter for MYSQL WHERE clause
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
            row.dataset.node = curNode.id;
            row.dataset.nodeIndex = curNode.dataset.index;

            var tdName = '<td class="components__item-desc" data-shortname="' + componentShortName + '">' + componentName + '</td>';
            var tdPrice = '<td class="components__item-price" data-price="' + componentPrice + '">' + componentPrice + '&nbsp;$</td>';
            var tdTerm = '<td class="components__item-term" data-term="' + componentAvailability + '">' + componentAvailability + '&nbsp;дн.</td>';
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
        showModal();
    }


    // Select data for rendering table
    function selectionData(curComponentList, curNode, curComponent) {

        // if (curComponent == 'base' || (curComponent != 'base' && !swichState)) {
        //     renderTable(curComponentList, curComponent); // send full data to render
        // } else if (curComponent != 'platform' && swichState) {
        //     var currentPlatformRelevant = currentConfig.platform.relevant;
        //     // Check if platform was not choosen yet
        //     if (currentPlatformRelevant == '') {
        //         alert('Сначала выберете платформу, или отключите подбор с учетом совместимости!');
        //     } else {
        //         // Delete unrelevant components
        //         for (i = 0; i < curComponentList.length; ++i) {
        //             var item = curComponentList[i].relevant;
        //             var platform = currentPlatformRelevant;
        //             if (item.indexOf(platform) == -1) { // check forall;
        //                 curComponentList.splice(i, 1);
        //             }
        //         }
        //         renderTable(curComponentList, curComponent);
        //     }
        // }
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

    // Select data for rendering table
    // function selectionData(curComponentList, curComponent){
    //     var swichState = document.getElementById('compatible').checked; // Check switch state

    //     if(curComponent == 'platform' || (curComponent != 'platform' && !swichState)){
    //         renderTable(curComponentList, curComponent); // Send full data to render
    //     }
    //     else if(curComponent != 'platform' && swichState){
    //         var currentPlatformRelevant = currentConfig.platform.relevant;
    //         // Check if platform was not choosen yet
    //         if(currentPlatformRelevant == '') {
    //             alert('Сначала выберете платформу, или отключите подбор с учетом совместимости!');
    //         }
    //         else{
    //             // Delete unrelevant components
    //             for(i=0; i < curComponentList.length; ++i){
    //                 var item = curComponentList[i].relevant;
    //                 var platform = currentPlatformRelevant;
    //                 if(item.indexOf(platform) == -1){ // check forall;
    //                     curComponentList.splice(i,1);
    //                 }
    //             }
    //             renderTable(curComponentList, curComponent);
    //         }
    //     }
    // }

    // Render components table
    // function renderTable(curComponentList, curComponent) {

    //     for (i = 0; i < curComponentList.length; i++) {
    //         var componentName = curComponentList[i].name + ' ('+ curComponentList[i].spec +')';
    //         var componentShortName = curComponentList[i].name;
    //         var componentPrice = curComponentList[i].price;
    //         var componentAvailability = curComponentList[i].availability;
    //         var componentSubcategory = curComponentList[i].subcategory;

    //         // Add subcat row
    //         var rowSubCat = document.createElement('tr');
    //         rowSubCat.classList.add('subcat');
    //         rowSubCat.innerHTML = '<td colspan="4">' + componentSubcategory + '</td>';
    //         document.querySelector('.components-list tbody').appendChild(rowSubCat);

    //         // Add component row 
    //         var row = document.createElement('tr');
    //         row.innerHTML = '<td class="name" data-shortname="' + componentShortName + '">' + componentName + '</td><td class="price">' + componentPrice + '</td><td class="availability">' + componentAvailability + '</td><td class="chose"><button>выбрать</button></td>';
    //         document.querySelector('.components-list tbody').appendChild(row);
    //     }

    //     // Delete double subcats
    //     var subCategories = document.querySelectorAll('.subcat');
    //     for (i = 0; i < subCategories.length - 1; i++) { // Don't take last element
    //         if (subCategories[i].innerHTML == subCategories[i + 1].innerHTML) {
    //             var tbody = subCategories[i + 1].parentElement;
    //             tbody.removeChild(subCategories[i + 1]);
    //             //subCategories[i + 1].remove(); // IE11+
    //         }
    //     }

    //     // Set addeventlisteners on buttons
    //     document.querySelectorAll('.chose button').forEach(function (item) {
    //         item.addEventListener('click', function (e) {
    //             var shortName = e.currentTarget.parentElement.parentElement.children[0].dataset.shortname;
    //             var price = e.currentTarget.parentElement.parentElement.children[1].innerHTML;
    //             var availability = e.currentTarget.parentElement.parentElement.children[2].innerHTML;

    //             if (currentConfig[curComponent] == undefined) {
    //                 currentConfig[curComponent] = {};
    //                 currentConfig[curComponent].name = shortName;
    //                 currentConfig[curComponent].price = parseInt(price);
    //                 currentConfig[curComponent].availability = parseInt(availability);
    //             } else {

    //             }

    //             currentConfig[curComponent] = {};
    //             currentConfig[curComponent].name = shortName;
    //             currentConfig[curComponent].price = parseInt(price);
    //             currentConfig[curComponent].availability = parseInt(availability);

    //             var componenIitemChoice = document.createElement('div');
    //             componenIitemChoice.classList.add('component-item-choice');

    //             componenIitemChoice.innerHTML = '<img src="img/plus.svg" alt="" width="25px"><span>' + currentConfig[curComponent].name + '</span><img src="img/remove.svg" alt="" width="25px">';

    //             var t = document.getElementById(curComponent);
    //             t.appendChild(componenIitemChoice);

    //             hideModal();
    //         })
    //     })

    //     showModal(curComponent);
    // }




    // index добавленного элемента в дом 0
    // index 1 
    // при удалении можно брать индекс элемета в дом

})