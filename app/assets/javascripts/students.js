$(document).ready(function(){
  eventListeners()
})



function eventListeners(){
  $(`form.button_to`).click(function(e) {
    e.preventDefault();
    let url = this.action
    debugger
    studentShow(url)
    // newPledgeForm(url)
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
    // Need to access the student_id to render pleadges associated with student?
  }


function newPledgeForm(url){
  debugger
}
