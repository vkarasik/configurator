document.addEventListener('DOMContentLoaded', function (e) {

    document.querySelector('.button_get').addEventListener('click', renderEditTable);


    function xhrequest(url, curComponent) {

        var requestPrice = new XMLHttpRequest();
        requestPrice.open('GET', url, true);
        requestPrice.onload = function () {
            var data = JSON.parse(this.response);
            var curComponentList = data;
            renderTable(curComponentList, curNode, curComponent);
        }
        requestPrice.send();
    }


    function renderEditTable(){
        var componentsTable = document.querySelector('.components');
        componentsTable.innerHTML = '!'
    }

})