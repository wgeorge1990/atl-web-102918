document.addEventListener("DOMContentLoaded", function(){
  document.querySelector('#get-pokemon-form').addEventListener('submit',
    function(event){
      event.preventDefault()
      console.log(`form submitted but does nothing`)
    })
});
