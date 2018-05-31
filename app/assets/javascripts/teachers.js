
$(document).ready(function(){
  $(`a[href='/teachers']`).on("click", function(e){
    $( ".homelogo" ).remove()
    console.log(this)
    e.preventDefault()
  })
})
