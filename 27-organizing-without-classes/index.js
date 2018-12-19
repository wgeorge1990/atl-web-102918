document.addEventListener("DOMContentLoaded", addUsersToPage);

const BASE_URL = "http://localhost:3000"

// A "model" function
function getUsers() {
  let url = `${BASE_URL}/users`

  return fetch(url).then(res => res.json())
}

// A "view" function
function renderUser(user) {
  return `<li class="user" data-id="${user.id}">
            ${user.username}
          </li>`;
}

// A "controller" function
function addUsersToPage(event) {
  getUsers().then(users => {
    let ul = document.createElement("ul")
    users.forEach(user => {
      ul.innerHTML += renderUser(user)
    })
    document.body.appendChild(ul)
  })
}
