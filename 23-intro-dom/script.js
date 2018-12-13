console.log("sup");

document.addEventListener('DOMContentLoaded', function () {
  var links = document.querySelectorAll(".item-link");

  var title = document.querySelector(".title");

  addGoogleLink(title);
  addBritClickHandler();
  addFormHandler();
})

function addGoogleLink(node) {
  var html = `<a href="www.google.com">Google Link</a>`;

  node.innerHTML += html;
}

function addBestEntry(item, link, category, submitter) {
  // Look up the part of the page to modify
  var tbody = document.querySelector('tbody')

  // Generate HTML for the new row
  var html = `
  <tr class="best-entry">
    <td><a class="item-link" href="${link}">${item}</a></td>
    <td>${category}</td>
    <td>${submitter}</td>
  </tr>`;

  // Add the generated HTML to the page
  tbody.innerHTML += html;
}

// function makeFunOfBrit () {
//   var britNode = document.querySelector("#row-1")
//
//   britNode.addEventListener('click', function () {
//      alert("lol, hi");
//   }
// }

function britPopup() {
  alert("lol, brit is dumb, lectures are long. why do I suffer?");
}

function processForm(event) {
  event.preventDefault();
  var item = document.querySelector("#best-item").value
  var link = document.querySelector("#best-link").value
  var category = document.querySelector("#best-category").value
  var submitter = document.querySelector("#best-submitter").value
  addBestEntry(item, link, category, submitter)
  event.target.reset()
}

function addBritClickHandler () {
  var trNode = document.querySelector("#row-1")
  var britNode = trNode.children[trNode.children.length - 1]

  trNode.addEventListener('click', britPopup)
}

function addFormHandler() {
  var form = document.querySelector("#best-of-form")

  form.addEventListener('submit', processForm)
}

// For Part 2
// Two changes to make:
//   * Only have event listener target the name "Brit" not the whole row
//   * Make it so when the form submits the page updates appropriately
// One thing I forgot to mention about DOM querying:
//   * document.getFoo methods return an HTMLCollection
//   * document.queryFoo methods return a NodeList
//   * NodeLists have a forEach method but HTMLCollection doesn't!
