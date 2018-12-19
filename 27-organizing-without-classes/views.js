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
