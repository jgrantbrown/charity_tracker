
$(document).ready(function(){
  $(`a[href='/teachers']`).on("click", function(e){
    // Need to remove div w/background
    // $( ".hometext" ).remove()

    $.get(this.href, function(teachers){
        teachers.forEach(function(teacher){
          $('.teacherList').append(teacher.first_name)
        })

    })
    e.preventDefault()
  })
})
