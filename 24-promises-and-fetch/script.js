const SERVER_URL = "http://localhost:3000/pokemon/"

document.addEventListener("DOMContentLoaded", initPage)

function initPage () {
  fetch(SERVER_URL).then(function (data) {
    return data.json()
  }).then(function (json) {
    // debugger;
    json.forEach(renderPokemon)
    var buttons = document.querySelectorAll("button")
    buttons.forEach(addDeleteHandler)
  })
}

function addDeleteHandler(button) {
  button.addEventListener('click', deletePokemon)
}

function deletePokemon(event) {
  var pokemon = event.target.parentNode
  var id = pokemon.id.split("-")[1]

  // Remove the pokemon from the database
  var request = new Request(`http://localhost:3000/pokemon/${id}`)
  var options = {
    method: 'DELETE'
  }
  fetch(request, options).then(function (data) {
      console.log(data)
      // Remove the part of the page they clicked
      pokemon.remove()
  })
}

function renderPokemon(pokemon) {
  var container = document.querySelector("#pokemon-container")

  var pokemonHTML = `
    <div class="card" id="pokemon-${pokemon.id}">
      <img src="${pokemon.sprite}" />
      <p class="center-text">${pokemon.name}</p>
      <button>Delete me!</button>
    </div>`

  container.innerHTML += pokemonHTML

}
