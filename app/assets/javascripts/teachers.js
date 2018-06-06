
$(document).ready(function(){

teachersList()


})

function teachersList(){
$(`a[href='/teachers']`).click(function(e) {
     e.preventDefault();

     $.get("/teachers", function(teachers) {

       let source = $("#index-template").html()

       let template = Handlebars.compile(source)
       console.log(template(teachers))
       $("div.project-results").html(template(teachers))
     });

  })
}
