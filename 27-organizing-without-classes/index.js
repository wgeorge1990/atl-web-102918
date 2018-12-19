document.addEventListener("DOMContentLoaded", initPage);

function initPage() {
  renderBookList()
}

// "View" function. just exists to turn an object -> html
function bookView(book) {
  return `<li id="book-${book.id}" class="book-item"
              data-image="${book.img_url}"
              data-description="${book.description}">
            ${book.title}
          </li>`
}
// "Model" function or fetch function. just exists to get the data
function getBooks() {
  return fetch("http://localhost:3000/books").then(res => res.json())
}

function bookListView() {
  return getBooks().then(json => json.map(bookView).join(""))
}

function bookShowView(thumbnail, description, users) {
  return `<div>
            <img src="${thumbnail}" />
            <p>${description}</p>
            <p>Users who liked it: ${users}</p>
          </div>`
}

function renderBookList() {
  let list = document.querySelector("#list")
  bookListView().then(booksHtml => {
      list.innerHTML = booksHtml
      let books = document.querySelectorAll(".book-item")
      books.forEach(book => book.addEventListener('click', renderBookShow))
  })
}

function renderBookShow(event) {
  const showPanel = document.querySelector("#show-panel")
  let dataset = event.target.dataset
  let html = bookShowView(dataset.image, dataset.description, [])
  showPanel.innerHTML = html
}
