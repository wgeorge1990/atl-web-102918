document.addEventListener("DOMContentLoaded", initPage);

function initPage() {
  renderBookList()
}

function bookListView() {
  return getBooks().then(json => json.map(bookView).join(""))
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
