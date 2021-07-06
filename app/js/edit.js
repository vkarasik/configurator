document.addEventListener('DOMContentLoaded', function (e) {
  document.querySelector('.button_add').addEventListener('click', getFields);
  document.querySelector('.button_insert').addEventListener('click', insertItem);
  document.getElementById('components').addEventListener('change', xhrequest);

  document.querySelectorAll('.modal__close').forEach(function (i) {
    i.addEventListener('click', hideModal);
  });

  function insertItem(e) {
    e.preventDefault();
    var formData = new FormData(e.target.parentElement);
    var currentComponent = document.getElementById('components').value;
    var message = document.querySelector('.modal__message');
    formData.set('cmpt', currentComponent);
    var url = 'add-component.php';

    var xhr = new XMLHttpRequest();
    xhr.open('POST', url, true);
    xhr.onload = function () {
      var data = JSON.parse(this.response);

      if (data.status === 'success') {
        message.classList.add('modal__message_success');
        message.innerHTML = data.message;

        setTimeout(function () {
          message.classList.remove('modal__message_success');
          hideModal('modal_form');
        }, 1500);
      } else {
        message.classList.add('modal__message_error');
        message.innerHTML = data.message;

        setTimeout(function () {
          message.classList.remove('modal__message_error');
        }, 2000);
      }
    };
    xhr.send(formData);
  }

  function getFields() {
    var currentComponent = document.getElementById('components').value;
    if (currentComponent === '') return;
    var url = 'get-fields.php?cmpt=' + currentComponent;

    var xhr = new XMLHttpRequest();
    xhr.open('GET', url, true);
    xhr.onload = function () {
      var data = JSON.parse(this.response);
      renderAddForm(data);
    };
    xhr.send();
  }

  function renderAddForm(fields) {
    var inputs = '';
    var form = document.querySelector('.add-cmpt__inner');

    // Start from 1 to exclude id field
    for (var i = 1; i < fields.length; i++) {
      inputs += '<input type="text" name="' + fields[i].Field + '" placeholder="' + fields[i].Field + '">';
    }
    form.innerHTML = inputs;
    showModal();
  }

  // Show modal content window
  function showModal(e) {
    document.querySelector('body').classList.add('modal-open'); // prevent scroll body

    var target = '.modal_form';

    document.querySelector(target).classList.add('modal_show');
    document.querySelector('.modal').scrollTop = 0;

    setTimeout(function () {
      document.querySelector(target).classList.add('modal_fadein');
      document.querySelector(target).firstElementChild.classList.add('modal__inner_rollout');
    }, 250);
  }

  // Hide modal window
  function hideModal(e) {
    var target = '.modal_form';

    document.querySelector(target).firstElementChild.classList.remove('modal__inner_rollout');
    document.querySelector(target).classList.remove('modal_fadein');

    setTimeout(function () {
      document.querySelector(target).classList.remove('modal_show');
      document.querySelector('body').classList.remove('modal-open'); // allow scroll body
      if (target == '.modal_content') {
        document.querySelector('.components tbody').innerHTML = ''; // clean content inside when closing
      }
    }, 250);
  }

  function updateItem(e) {
    var component = e.target.dataset.currentComponent;
    var id = e.target.dataset.componentid;
    var price = document.getElementById('price_' + component + '_' + id).value;
    var term = document.getElementById('term_' + component + '_' + id).value;

    var url = '../update-component.php?cmpt=' + component + '&id=' + id + '&price=' + price + '&term=' + term;

    console.log(url);

    var xhr = new XMLHttpRequest();
    xhr.open('GET', url, true);
    xhr.onload = function () {
      var data = JSON.parse(this.response);
      var status = 'highlight_' + data.status;
      e.target.parentElement.parentElement.classList.add(status);
      setTimeout(function () {
        e.target.parentElement.parentElement.classList.remove(status);
      }, 1000);
    };
    xhr.send();
  }

  function xhrequest(e) {
    var curComponent = e.target.value;
    if (curComponent === '') {
      document.querySelector('.components tbody').innerHTML = '';
      return false;
    }

    var url = '../get-component.php?cmpt=' + curComponent;

    var requestPrice = new XMLHttpRequest();
    requestPrice.open('GET', url, true);
    requestPrice.onload = function () {
      var data = JSON.parse(this.response);
      var componentsList = data;
      renderEditTable(componentsList, curComponent);
    };
    requestPrice.send();
  }

  function renderEditTable(componentsList, curComponent) {
    document.querySelector('.components tbody').innerHTML = '';

    for (component of componentsList) {
      var row = document.createElement('tr');
      row.classList.add('components__item');
      var id = component[curComponent + '_id'];

      var tdName = `<td class="components__item-desc">${component.name}</td>`;
      var tdPrice = `<td class="components__item-price"><input id="price_${curComponent}_${id}" type="text" value="${component.price}"></td>`;
      var tdTerm = `<td class="components__item-term"><input id="term_${curComponent}_${id}" type="text" value="${component.term}"></td>`;
      var tdSave = `<td class="components__item-select"><button class="button button_save" data-current-component="${curComponent}" data-componentid="${id}">Сохранить</button></td>`;

      row.innerHTML = tdName + tdPrice + tdTerm + tdSave;
      document.querySelector('.components tbody').appendChild(row);

      var buttons = document.querySelectorAll('.button_save');
      for (button of buttons) {
        button.addEventListener('click', updateItem);
      }
    }
  }
});
