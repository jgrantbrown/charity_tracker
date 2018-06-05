
$(document).ready(function(){
  // $(`a[href='/teachers']`).on("click", function(e){
  //   // Need to remove div w/background
  //   // $( ".hometext" ).remove()
  //
  //   $.get(this.href, function(teachers){
  //
  //       teachers.forEach(function(teacher){
  //         // How to I use the json response in the index page template
  //         // $('.teacherList').append(teacher.first_name)
  //         // $('.teacherList').append(teachers_html)
  //         console.log(teacher)
  //
  //       })
  //
  //   })
  //   e.preventDefault()
  // })

  $(`a[href='/teachers']`).click(function(e) {
     e.preventDefault();

     $.getJSON("/teachers", function(json) {
       debugger
     let source = $("#index-template").html();

     let template = Handlebars.compile(source);

     $("div.project-results").html(template(json))
  });

  })

})
