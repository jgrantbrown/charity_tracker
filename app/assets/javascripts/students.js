$(document).ready(function(){
studentShow()
})

function studentShow(){
$(`form.button_to`).click(function(e) {
     e.preventDefault();

     let url = this.action
     $.get(url, function(student) {

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
