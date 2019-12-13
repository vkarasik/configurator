document.addEventListener('DOMContentLoaded', function (e) {
    var currentConfig = {
        platform: {},
        cpu: {},
        ram: {},
        hdd: {},
        ssd: {},
        options: {}
    }

    document.querySelectorAll('.component-item-button').forEach(function (item) {
        item.addEventListener('click', getData);
    })

    document.querySelectorAll('.close').forEach(function (item) {
        item.addEventListener('click', hideModal);
    })

    // Show modal window
    function showModal(component) {
        document.querySelector('body').style.overflow = "hidden"; // prevent scroll body
        document.querySelector('.modal').style.display = "block";
        document.querySelector('.modal-head').innerHTML = document.querySelector('#' + component + ' > div.component-item-button > h3').textContent;
    }

    // Hide modal window
    function hideModal() {
        document.querySelector('body').style.overflow = "auto"; // allow scroll body
        document.querySelector('.modal').style.display = "none";
        document.querySelector('.components-list tbody').innerHTML = ""; // clean content inside
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
    function getData(component) { //component = e
        var curComponent = component.currentTarget.parentElement.id;

        var requestPrice = new XMLHttpRequest();
        requestPrice.open('GET', 'get-component.php?cmpt=' + curComponent);
        requestPrice.onload = function () {
            var data = JSON.parse(this.response);
            var curComponentList = data;
            selectionData(curComponentList, curComponent);
        }
        requestPrice.send();
    }

    // Select data for rendering table
    function selectionData(curComponentList, curComponent){
        var swichState = document.getElementById('compatible').checked; // Check switch state

        if(curComponent == 'platform' || (curComponent != 'platform' && !swichState)){
            renderTable(curComponentList, curComponent); // Send full data to render
        }
        else if(curComponent != 'platform' && swichState){
            var currentPlatformRelevant = currentConfig.platform.relevant;
            // Check if platform was not choosen yet
            if(currentPlatformRelevant == '') {
                alert('Сначала выберете платформу, или отключите подбор с учетом совместимости!');
            }
            else{
                // Delete unrelevant components
                for(i=0; i < curComponentList.length; ++i){
                    var item = curComponentList[i].relevant;
                    var platform = currentPlatformRelevant;
                    if(item.indexOf(platform) == -1){ // check forall;
                        curComponentList.splice(i,1);
                    }
                }
                renderTable(curComponentList, curComponent);
            }
        }
    }

    // Render components table
    function renderTable(curComponentList, curComponent) {

        for (i = 0; i < curComponentList.length; i++) {
            var componentName = curComponentList[i].name + ' ('+ curComponentList[i].spec +')';
            var componentShortName = curComponentList[i].name;
            var componentPrice = curComponentList[i].price;
            var componentAvailability = curComponentList[i].availability;
            var componentSubcategory = curComponentList[i].subcategory;

            // Add subcat row
            var rowSubCat = document.createElement('tr');
            rowSubCat.classList.add('subcat');
            rowSubCat.innerHTML = '<td colspan="4">' + componentSubcategory + '</td>';
            document.querySelector('.components-list tbody').appendChild(rowSubCat);

            // Add component row 
            var row = document.createElement('tr');
            row.innerHTML = '<td class="name" data-shortname="' + componentShortName + '">' + componentName + '</td><td class="price">' + componentPrice + '</td><td class="availability">' + componentAvailability + '</td><td class="chose"><button>выбрать</button></td>';
            document.querySelector('.components-list tbody').appendChild(row);
        }

        // Delete double subcats
        var subCategories = document.querySelectorAll('.subcat');
        for (i = 0; i < subCategories.length - 1; i++) { // Don't take last element
            if (subCategories[i].innerHTML == subCategories[i + 1].innerHTML) {
                var tbody = subCategories[i + 1].parentElement;
                tbody.removeChild(subCategories[i + 1]);
                //subCategories[i + 1].remove(); // IE11+
            }
        }

        // Set addeventlisteners on buttons
        document.querySelectorAll('.chose button').forEach(function (item) {
            item.addEventListener('click', function (e) {
                var shortName = e.currentTarget.parentElement.parentElement.children[0].dataset.shortname;
                var price = e.currentTarget.parentElement.parentElement.children[1].innerHTML;
                var availability = e.currentTarget.parentElement.parentElement.children[2].innerHTML;

                if (currentConfig[curComponent] == undefined) {
                    currentConfig[curComponent] = {};
                    currentConfig[curComponent].name = shortName;
                    currentConfig[curComponent].price = parseInt(price);
                    currentConfig[curComponent].availability = parseInt(availability);
                } else {

                }

                currentConfig[curComponent] = {};
                currentConfig[curComponent].name = shortName;
                currentConfig[curComponent].price = parseInt(price);
                currentConfig[curComponent].availability = parseInt(availability);

                var componenIitemChoice = document.createElement('div');
                componenIitemChoice.classList.add('component-item-choice');

                componenIitemChoice.innerHTML = '<img src="img/plus.svg" alt="" width="25px"><span>' + currentConfig[curComponent].name + '</span><img src="img/remove.svg" alt="" width="25px">';

                var t = document.getElementById(curComponent);
                t.appendChild(componenIitemChoice);

                hideModal();
            })
        })

        showModal(curComponent);
    }

    function choseComponent(e) {

    }


    // index добавленного элемента в дом 0
    // index 1 
    // при удалении можно брать индекс элемета в дом

})