const BASE_URL = "http://localhost:3000"

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
