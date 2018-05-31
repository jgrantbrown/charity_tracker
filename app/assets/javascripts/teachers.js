
$(document).ready(function(){
  $(`a[href='/teachers']`).on("click", function(e){
    // Need to remove div w/background
    // $( ".hometext" ).remove()

    $.get(this.href, function(e){
      $('.teacherList').append(e)
        console.log(e)
    })
    e.preventDefault()
  })
})
