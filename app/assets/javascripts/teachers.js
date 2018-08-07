
$(document).ready(function(){
teachersList()


})

function teachersList(){
$(`a[href='/teachers']`).click(function(e) {
     e.preventDefault();

     $.get("/teachers", function(teachers) {
       // Why does jquery not create the soucre?
       let source = (document.getElementById("index-template").innerHTML)
       // why is this not compliling template with each

       let template = Handlebars.compile(source)

       // Pass {{#each this}} for teachers
       // clear the html not to double render
       $(".teacherList").html("")
       $(".teacherList").append(template(teachers))
      // Need to render more cleannly
     });

  })
}
