$(document).ready(function(){
  eventListeners()
})



function eventListeners(){
  $(`form.button_to`).click(function(e) {
    e.preventDefault();
    let url = this.action
    studentShow(url)
    newCommentForm(url)
  })
}


function studentShow(url){
     $.get(url, function(student) {
       // Why does jquery not create the soucre?
       let source = (document.getElementById("student-template").innerHTML)
       // why is this not compliling template with each
       let template = Handlebars.compile(source)
       // Pass {{#each this}} for teachers
       // clear the html not to double render
       $(".student_details").html("")
       $(".rightcolumnteacher").html(template(student))
      // Need to render more cleannly
     });
  }


function newCommentForm(){
  debugger
}
