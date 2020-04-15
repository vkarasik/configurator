document.addEventListener('DOMContentLoaded', function (e) {

    // document.querySelector('.button_get').addEventListener('click', renderEditTable);
    document.getElementById('components').addEventListener('change', xhrequest)


    function xhrequest(e) {

        var curComponent = e.target.value;
        if (curComponent === '') {
            document.querySelector('.components tbody').innerHTML = '';
            return false;
        }

        var url = 'get-component.php?cmpt=' + curComponent;

        var requestPrice = new XMLHttpRequest();
        requestPrice.open('GET', url, true);
        requestPrice.onload = function () {
            var data = JSON.parse(this.response);
            var componentsList = data;
            renderEditTable(componentsList, curComponent);
        }
        requestPrice.send();
    }


    function renderEditTable(componentsList, curComponent) {

        document.querySelector('.components tbody').innerHTML = '';

        for (component of componentsList) {

            var row = document.createElement('tr');
            row.classList.add('components__item');
            var id = component[curComponent + '_id'];

            var tdName = '<td class="components__item-desc">' + component.name + '</td>';
            var tdPrice = '<td class="components__item-price"><input type="text" value="' + component.price + '"></td>';
            var tdTerm = '<td class="components__item-term"><input type="text" value="' + component.term + '"></td>';
            var tdSave = '<td class="components__item-select"><img class="components__item-select-icon" src="img/icon_save.svg" title="Сохранить" data-componentid="'+ id +'"></td>';

            row.innerHTML = tdName + tdPrice + tdTerm + tdSave;
            document.querySelector('.components tbody').appendChild(row);
        }
    }

})