document.addEventListener("DOMContentLoaded", renderBookList);

// "Model" function or fetch function. just exists to get the data
function getBooks() {
  return fetch("http://localhost:3000/books").then(res => res.json())
}

// "View" function. just exists to turn an object -> html
function bookListView(book) {
  return `<li>${book.title}</li>`
}

function renderBookList () {
  const list = document.querySelector("#list")
  getBooks().then(json => {
    json.forEach(book => {
      let html = bookListView(book)
      list.innerHTML += html
    })
  })
}
