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
        ssd: null,
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
            getData()
        }
    })

    // document.querySelectorAll('.config__item-type > span, .config__item-type > img').forEach(function (item) {
    //     item.addEventListener('click', getData);
    // })

    // document.querySelectorAll('.modal__close').forEach(function (item) {
    //     item.addEventListener('click', hideModal);
    // })

    // document.querySelectorAll('.components__item-select > img').forEach(function (item) {
    //     item.addEventListener('click', choseComponent);
    // })

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
        // document.querySelector('.components-list tbody').innerHTML = ""; // clean content inside
    }

    // Chose Component
    function choseComponent(e) {
        currentConfig['base'] = e.target.parentElement.parentElement.dataset.componentName;

        hideModal();
    }

    // Add Item
    function addItem(e) {
        var node = e.target.parentElement.parentNode;
        var clnNode = node.cloneNode(true);
        clnNode.dataset.iscloned = 'true'; // Set attr for deleteItem
        clnNode.children[4].children[0].remove(); // Delete add button
        clnNode.dataset.index = currentConfig_1[node.id].length; // get array length
        currentConfig_1[node.id].push({name: currentConfig_1[node.id].length}); // add new item into array
        clearItem(clnNode.children); // clear item
        document.querySelector('.config').insertBefore(clnNode, node.nextElementSibling); // add item on the page
    }

    // Del Item
    function delItem(e) {
        var node = e.target.parentElement.parentNode;
        delete currentConfig_1[node.id][parseInt(node.dataset.index)]; // delete item from array
        node.remove();
    }

    // Clear Item
    function clearItem(rowItems) {
        rowItems[0].children[1].innerHTML = rowItems[0].dataset.configItemTitle; // Item Type
        rowItems[1].firstElementChild.value = null; // Item Quantity
        rowItems[1].firstElementChild.disabled = true;
        rowItems[2].innerHTML = "—"; // Item Price
        rowItems[3].innerHTML = "—"; // Item Term

        // Clear Item in currentConfig Object
        // currentConfig[e.target.parentElement.parentElement.id] = '';
    }

    // Get components list from JSON
    function getData(component) { //component = e
        var curComponent = component.target.parentElement.parentElement.id;

        var requestPrice = new XMLHttpRequest();
        requestPrice.open('GET', 'json/price.json');
        requestPrice.onload = function () {
            var data = JSON.parse(this.response);
            var curComponentList = data[curComponent];
            selectionData(curComponentList, curComponent);
        }
        requestPrice.send();
    }

    // Select data for rendering table
    function selectionData(curComponentList, curComponent) {
        var swichState = document.getElementById('compatibility').checked; // Check switch state

        if (curComponent == 'base' || (curComponent != 'base' && !swichState)) {
            renderTable(curComponentList, curComponent); // Send full data to render
        } else if (curComponent != 'platform' && swichState) {
            var currentPlatformRelevant = currentConfig.platform.relevant;
            // Check if platform was not choosen yet
            if (currentPlatformRelevant == '') {
                alert('Сначала выберете платформу, или отключите подбор с учетом совместимости!');
            } else {
                // Delete unrelevant components
                for (i = 0; i < curComponentList.length; ++i) {
                    var item = curComponentList[i].relevant;
                    var platform = currentPlatformRelevant;
                    if (item.indexOf(platform) == -1) { // check forall;
                        curComponentList.splice(i, 1);
                    }
                }
                renderTable(curComponentList, curComponent);
            }
        }
    }









    // Get components list from JSON
    /* function getData(component) { //component = e
        var curComponent = component.currentTarget.parentElement.id;

        var requestPrice = new XMLHttpRequest();
        requestPrice.open('GET', 'json/price.json');
        requestPrice.onload = function () {
            var data = JSON.parse(this.response);
            var curComponentList = data[curComponent];
            selectionData(curComponentList, curComponent);
        }
        requestPrice.send();
    } */

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