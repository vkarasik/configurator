document.addEventListener("DOMContentLoaded", function (e) {
  // document.querySelector('.button_get').addEventListener('click', renderEditTable);
  document.getElementById("components").addEventListener("change", xhrequest);

  function updateItem(e) {
    var component = e.target.dataset.currentComponent;
    var id = e.target.dataset.componentid;
    var price = document.getElementById("price_" + component + "_" + id).value;
    var term = document.getElementById("term_" + component + "_" + id).value;

    var url =
      "../update-component.php?cmpt=" +
      component +
      "&id=" +
      id +
      "&price=" +
      price +
      "&term=" +
      term;

    console.log(url);

    var xhr = new XMLHttpRequest();
    xhr.open("GET", url, true);
    xhr.onload = function () {
      var data = JSON.parse(this.response);
      var status = "highlight_" + data.status;
      e.target.parentElement.parentElement.classList.add(status);
      setTimeout(function () {
        e.target.parentElement.parentElement.classList.remove(status);
      }, 1000);
    };
    xhr.send();
  }

  function xhrequest(e) {
    var curComponent = e.target.value;
    if (curComponent === "") {
      document.querySelector(".components tbody").innerHTML = "";
      return false;
    }

    var url = "../get-component.php?cmpt=" + curComponent;

    var requestPrice = new XMLHttpRequest();
    requestPrice.open("GET", url, true);
    requestPrice.onload = function () {
      var data = JSON.parse(this.response);
      var componentsList = data;
      renderEditTable(componentsList, curComponent);
    };
    requestPrice.send();
  }

  function renderEditTable(componentsList, curComponent) {
    document.querySelector(".components tbody").innerHTML = "";

    for (component of componentsList) {
      var row = document.createElement("tr");
      row.classList.add("components__item");
      var id = component[curComponent + "_id"];

      var tdName =
        '<td class="components__item-desc">' + component.name + "</td>";
      var tdPrice =
        '<td class="components__item-price"><input id="price_' +
        curComponent +
        "_" +
        id +
        '" type="text" value="' +
        component.price +
        '"></td>';
      var tdTerm =
        '<td class="components__item-term"><input id="term_' +
        curComponent +
        "_" +
        id +
        '"type="text" value="' +
        component.term +
        '"></td>';
      var tdSave =
        '<td class="components__item-select"><button class="button button_save" data-current-component="' +
        curComponent +
        '" data-componentid="' +
        id +
        '">Сохранить</button></td>';

      row.innerHTML = tdName + tdPrice + tdTerm + tdSave;
      document.querySelector(".components tbody").appendChild(row);

      var buttons = document.querySelectorAll(".button_save");
      for (button of buttons) {
        button.addEventListener("click", updateItem);
      }
    }
  }
});
