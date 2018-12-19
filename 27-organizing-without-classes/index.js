document.addEventListener("DOMContentLoaded", initPage);

const BASE_URL = "http://localhost:3000"

function initPage() {
  renderBookList()
}

// "View" function. just exists to turn an object -> html
function bookView(book) {
  let users = book.users.map(user => user.username).join(",")
  return `<li class="book-item"
              data-id="${book.id}"
              data-image="${book.img_url}"
              data-description="${book.description}"
              data-users="${users}">
            ${book.title}
          </li>`
}
// "Model" function or fetch function. just exists to get the data
function getBooks() {
  return fetch(`${BASE_URL}/books`).then(res => res.json())
}

function getBook(id) {
  return fetch(`${BASE_URL}/books/${id}`).then(res => res.json())
}

function patchBook(id, users) {
  let url = `${BASE_URL}/books/${id}`
  let options = {
    method: 'PATCH',
    headers: {
      "Content-Type": "application/json"
    },
    body: JSON.stringify({
      users: users
    })
  }
  return fetch(url, options).then(res => res.json())
}

function bookListView() {
  return getBooks().then(json => json.map(bookView).join(""))
}

function bookShowView(bookId, thumbnail, description, users) {
  let userListHtml = users.split(",").map(user => `<li>${user}</li>`).join("")
  return `<div data-id="${bookId}">
            <img src="${thumbnail}" />
            <p>${description}</p>
            <ul class="user-list">
            Users who liked it:
              ${userListHtml}
            </ul>

            <button>Like this book!</button>
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
  let html = bookShowView(dataset.id, dataset.image, dataset.description, dataset.users)
  showPanel.innerHTML = html
  const button = document.querySelector("button")
  button.addEventListener('click', likeBook)
}

function likeBook(event) {
  let bookId = event.target.parentNode.dataset.id
  getBook(bookId).then(book => {
    book.users.push({ id: 1, username: 'pouros' })
    patchBook(bookId, book.users)
    let userList = document.querySelector(".user-list")
    userList.innerHTML += "<li>pouros</li>"
  })
}
