document.addEventListener("DOMContentLoaded", initPage);

function initPage() {
  renderBookList()
}

// "View" function. just exists to turn an object -> html
function bookView(book) {
  return `<li class="book-item">${book.title}</li>`
}
// "Model" function or fetch function. just exists to get the data
function getBooks() {
  return fetch("http://localhost:3000/books").then(res => res.json())
}

function bookListView() {
  return getBooks().then(json => json.map(bookView).join(""))
}

function renderBookList() {
  let list = document.querySelector("#list")
  bookListView().then(booksHtml => {
      list.innerHTML = booksHtml
      let books = document.querySelectorAll(".book-item")
      books.forEach(book => book.addEventListener('click', console.log))
  })
}

function renderBookShow() {
  console.log("inside book show")
}
