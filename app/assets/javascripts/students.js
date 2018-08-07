$(document).ready(function(){
  eventListeners()
})

  function eventListeners(){
    // Rename or use a class to narrow down button click
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

       let template = Handlebars.compile(source)
       // Pass {{#each this}} for teachers
       // clear the html not to double render
       $(".student_details").html("")
       $(".studentinfo").html(template(student))
      // Need to render more cleannly
     });
  }
