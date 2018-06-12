$(document).ready(function(){
  eventListeners()
})



function eventListeners(){
  $(`form.button_to`).click(function(e) {
    e.preventDefault();
    var url = this.action
    studentShow(url)
    newPledgeForm(url)
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
       $(".studentinfo").html(template(student))
      // Need to render more cleannly
     });

  }


function newPledgeForm(url){

  $.get('/pledges/new', function(e){
    console.log(url)
    console.log(e)
    debugger
      $("div.pledge_form").html(e)
  })
  // $("div.pledge_form").html("<div> Add a Pledge Form Here</div>")

}
