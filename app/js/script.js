var currentConfig = {
    base: [],
    cpu: [],
    ram: [],
    hdd: [],
    ssd: [],
    options: []
};

var resultConfig = {
    config: '',
    quantity: 0,
    price: 0,
    term: 0
}

document.addEventListener('DOMContentLoaded', function (e) {

    // Event listeners
    document.querySelector('.config').addEventListener('click', function (e) {

        // set on clear button
        if (e.target.classList.contains('config__item-icon_clear')) {
            // check if row is cloned
            if (e.target.parentElement.parentNode.dataset.iscloned === 'true') {
                delItem(e);
            } else {
                var node = e.target.parentElement.parentElement; // node to be cleaned
                clearItem(node);
            }
        }
        // set on addbutton
        else if (e.target.classList.contains('config__item-icon_add')) {
            addItem(e);
        }
        // set on component icon and title
        else if (e.target.classList.contains('config__item-type-img') || e.target.classList.contains('config__item-type-name')) {
            getData(e)
        }
        // set on plus and minus icons for item quantity
        else if (e.target.classList.contains('config__item-quantity-button')) {
            changeItemQuantity(e);
        }
    })

    document.querySelector('.result').addEventListener('click', function (e) {
        // set on plus and minus icons for config quantitty
        if (e.target.classList.contains('result__item-quantity-button')) {
            changeConfigQuantity(e);
        }
    })

    document.querySelectorAll('.modal__close').forEach(function (i) {
        i.addEventListener('click', hideModal);
    })

    document.querySelector('.components').addEventListener('click', function (e) {
        if (e.target.className === 'components__item-select-icon') {
            choseComponent(e.target);
        }
    })
    document.querySelector('.button_copy').addEventListener('click', copyConfig)

    // Copy to clipboard
    function copyConfig(e) {
        var node = document.querySelector(".result__item-description");

        // Using Range Object
        // var range = new Range();
        // range.setStart(node, 0);
        // range.setEnd(node, 1);
        // document.getSelection().removeAllRanges();
        // document.getSelection().addRange(range);

        // Using Selection Object
        document.getSelection().removeAllRanges();
        document.getSelection().selectAllChildren(node);

        document.execCommand('copy');

        e.target.innerHTML = "Скопировано";
        setTimeout(function () {
            e.target.innerHTML = "Копировать";
        }, 1000)
    }

    // Change Item Quantity
    function changeItemQuantity(e) {
        var item = e.target.parentElement.parentElement.dataset.configItemType;
        var index = e.target.parentElement.parentElement.dataset.index;

        if (e.target.classList.contains('config__item-quantity-button_plus')) {
            ++currentConfig[item][index].quantity; // increment quantity
        } else if (e.target.classList.contains('config__item-quantity-button_minus') && currentConfig[item][index].quantity > 1) {
            --currentConfig[item][index].quantity; // decrement quantity
        }
        refreshData();
    }

    // Change Config Quantity
    function changeConfigQuantity(e) {
        var resultQuantity = document.querySelector('.result__item-quantity-number');
        var resultPrice = document.querySelector('.result__item-price');

        if (e.target.classList.contains('result__item-quantity-button_plus')) {
            ++resultConfig.quantity; // increment result quantity
            resultQuantity.innerHTML = resultConfig.quantity;
            resultPrice.innerHTML = resultConfig.price * resultConfig.quantity + "&nbsp;$";
        } else if (e.target.classList.contains('result__item-quantity-button_minus') && parseInt(resultQuantity.innerHTML) > 1) {
            --resultConfig.quantity; // decrement result quantity
            resultQuantity.innerHTML = resultConfig.quantity;
            resultPrice.innerHTML = resultConfig.price * resultConfig.quantity + "&nbsp;$";
        }
    }

    // Show modal window
    function showModal(e) {
        document.querySelector('body').classList.add('modal-open'); // prevent scroll body
        document.querySelector('.modal__head').innerHTML = e.firstElementChild.dataset.configItemTitle;
        document.querySelector('.modal').classList.add('modal_show');

        setTimeout(function(){
            document.querySelector('.modal').classList.add('modal_fadein');
            document.querySelector('.modal__content').classList.add('modal__content_rollout');
        }, 300)
    }

    // Hide modal window
    function hideModal() {
        document.querySelector('.modal__content').classList.remove('modal__content_rollout');

        setTimeout(function(){
        document.querySelector('.modal').classList.remove('modal_fadein');
        document.querySelector('.modal').classList.remove('modal_show');
        document.querySelector('body').classList.remove('modal-open'); // allow scroll body
        document.querySelector('.components tbody').innerHTML = ""; // clean content inside when closing
        }, 400)
    }

    // Chose Component
    function choseComponent(item) {
        var table = document.querySelector('.components');
        var componentType = table.dataset.componentType; // get component type
        var index = table.dataset.nodeIndex; // get index of calling component
        var componentId = item.parentElement.parentElement.dataset.componentid; // get component id for request
        var url = 'get-component.php?cmpt=' + componentType + '&id=' + componentId;

        var component = getItem(url); // get element from server
        component.quantity = 1; // set quantity

        currentConfig[componentType].splice(index, 1, component); // insert item

        refreshData();
        hideModal();
    }

    // Refresh Data
    function refreshData() {
        var configItems = document.querySelectorAll('.config__item'); // get config items

        var resultName = document.querySelector('.result__item-description');
        var resultQuantity = document.querySelector('.result__item-quantity-number');
        var resultPrice = document.querySelector('.result__item-price');
        var resultTerm = document.querySelector('.result__item-term');

        resultConfig.config = '';
        resultConfig.price = 0;
        resultConfig.quantity = 0;
        resultConfig.term = [];

        // Fill config items
        for (i = 0; i < configItems.length; i++) {
            var itemType = configItems[i].dataset.configItemType;
            var itemIndex = configItems[i].dataset.index;
            var item = currentConfig[itemType][itemIndex]; // Config item

            if (item === undefined) {
                continue; // if there isn't data in config object, then skip this item
            }

            configItems[i].children[0].children[1].textContent = item.name; // set name;
            configItems[i].children[1].children[1].innerHTML = item.quantity; // set quantity
            configItems[i].children[2].innerHTML = item.price * item.quantity + "&nbsp;$"; // set price;
            configItems[i].children[3].innerHTML = item.term + "&nbsp;дн."; // set term;

            resultConfig.config += item.name + ' × ' + item.quantity + ' / '; // generate result config name
            resultConfig.price += item.price * item.quantity; // calculate result config price
            resultConfig.term.push(item.term); // push terms to calculate max term
        }

        resultName.textContent = 'Сервер CDL [' + resultConfig.config + ' ТУ РБ 101290106.001-2017]'; // generate full result line
        resultQuantity.innerHTML = resultConfig.price > 0 ? '1' : '0';
        resultConfig.quantity = resultConfig.price > 0 ? 1 : 0;
        resultPrice.innerHTML = resultConfig.price + "&nbsp;$";
        resultTerm.innerHTML = (resultConfig.term.length > 0 ? Math.max.apply(Math, resultConfig.term) : 0) + "&nbsp;дн."; //check if there are data in array and get max from array, or Math.max(...term) for ES6
    }

    // Add Item
    function addItem(e) {
        var node = e.target.parentElement.parentElement; // get current node
        if (currentConfig[node.dataset.configItemType].length == 0) {
            alert("Сначала выберите первый диск");
            return;
        }
        var clnNode = node.cloneNode(true); // clone with children
        clnNode.dataset.iscloned = 'true'; // set this attr for deleteItem()
        clnNode.children[4].children[0].remove(); // delete add button
        clnNode.dataset.index = currentConfig[node.id].length; // get array length from currentConfig
        clnNode.id += currentConfig[node.id].length; // set new id

        clearItem(clnNode); // clear item row
        document.querySelector('.config').insertBefore(clnNode, node.nextElementSibling); // add item on the page
    }

    // Del Item
    function delItem(e) {
        var node = e.target.parentElement.parentNode;
        delete currentConfig[node.dataset.configItemType][parseInt(node.dataset.index)]; // delete item from array
        node.remove();
        refreshData();
    }

    // Clear Item
    function clearItem(node) {
        var items = node.children; // get cells from component row
        var itemType = node.dataset.configItemType;
        var itemIndex = node.dataset.index;

        delete currentConfig[itemType][itemIndex]; // delete object by index from currentConfig

        items[0].children[1].innerHTML = items[0].dataset.configItemTitle; // reset item name to title
        items[1].children[1].innerHTML = 0; // clear quantity
        items[2].innerHTML = "—"; // clear price
        items[3].innerHTML = "—"; // clear term

        refreshData();
    }

    // Getting components list from JSON
    function getData(e) {
        var curNode = e.target.parentElement.parentElement; // node to put data into
        var curComponent = curNode.dataset.configItemType; // current component
        var swichState = document.getElementById('compatibility').checked; // get compatibility switch state
        var url = 'get-component.php?cmpt=' + curComponent;

        if (curComponent !== 'base' && swichState) {
            if(currentConfig['base'][0] == undefined){
                alert("В режиме совместимости сначала выберите платформу.");
                return;
            }
            var filter = currentConfig['base'][0][curComponent]; // get condition for MYSQL WHERE clause
            var url = url + '&filter=' + filter;

            xhrequest(url, curNode, curComponent);
        } else {
            xhrequest(url, curNode, curComponent);
        }
    }

    // Sending request
    function xhrequest(url, curNode, curComponent) {

        // var requestPrice = new XMLHttpRequest();
        // requestPrice.open('GET', 'json/price.json', true);
        // requestPrice.onload = function () {
        //     var data = JSON.parse(this.response);
        //     var curComponentList = data[curComponent];
        //     renderTable(curComponentList, curNode, curComponent);
        // }
        // requestPrice.send();

        var requestPrice = new XMLHttpRequest();
        requestPrice.open('GET', url, true);
        requestPrice.onload = function () {
            var data = JSON.parse(this.response);
            var curComponentList = data;
            renderTable(curComponentList, curNode, curComponent);
        }
        requestPrice.send();
    }

    // Sending request
    function getItem(url) {
        var data;
        var request = new XMLHttpRequest();
        request.open('GET', url, false);
        request.onload = function () {
            data = JSON.parse(this.response);
        }
        request.send();
        return data[0];
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
            var componentId = curComponentList[i][curComponent + '_id'];
            var componentName = curComponentList[i].name;
            var componentDescription = curComponentList[i].name + ' (' + curComponentList[i].description + ')';
            var componentPrice = curComponentList[i].price;
            var componentTerm = curComponentList[i].term;
            var componentSubcategory = curComponentList[i].subcategory;

            // Add subcat row
            var rowSubCat = document.createElement('tr');
            rowSubCat.classList.add('components__category');
            rowSubCat.innerHTML = '<td colspan="4">' + componentSubcategory + '</td>';
            document.querySelector('.components tbody').appendChild(rowSubCat);

            // Add component row 
            var row = document.createElement('tr');
            row.classList.add('components__item');
            row.dataset.shortname = componentName;
            row.dataset.price = componentPrice;
            row.dataset.term = componentTerm;
            row.dataset.componentid = componentId;

            var tdName = '<td class="components__item-desc">' + componentDescription + '</td>';
            var tdPrice = '<td class="components__item-price">' + componentPrice + '&nbsp;$</td>';
            var tdTerm = '<td class="components__item-term">' + componentTerm + '&nbsp;дн.</td>';
            var tdSelect = '<td class="components__item-select" title="Выбор компонента"><img class="components__item-select-icon" src="img/icon_add-blue.svg" title="Выбор компонента"></td>';

            row.innerHTML = tdName + tdPrice + tdTerm + tdSelect;
            document.querySelector('.components tbody').appendChild(row);
        }

        // Delete double subcats
        var subCategories = document.querySelectorAll('.components__category');
        for (i = 0; i < subCategories.length - 1; i++) { // Don't take last element
            if (subCategories[i].innerHTML === subCategories[i + 1].innerHTML) {
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