console.log("sup");

document.addEventListener('DOMContentLoaded', function () {
  var title = document.querySelector(".title");

  addGoogleLink(title);
})

var links = document.querySelectorAll(".item-link");

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

  tbody.innerHTML += html;
}

function britPopup () {
  alert("lol, brit is dumb, lectures are long. why do I suffer?");
}

// function makeFunOfBrit () {
//   var britNode = document.querySelector("#row-1")
//
//   britNode.addEventListener('click', function () {
//      alert("lol, hi");
//   }
// }

function makeFunOfBrit () {
  var britNode = document.querySelector("#row-1")

  britNode.addEventListener('click', britPopup);
}
