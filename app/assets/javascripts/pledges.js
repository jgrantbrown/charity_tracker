$(document).ready(function(){

})
// function Pledge(attributes){
//   this.amount = attributes.amount
//   this.id =   attributes.id
//   this.student_id = attributes.student_id
//   this.charity_id = attributes.charity_id
//   this.user_id = attributes.current_user.id
// }

  function newPledgeForm(url){
    var split = url.split('/')
    var id = split[split.length - 1]
    // HOw do I pass charity_id  this form
    $.get(`/students/${id}/pledges/new`, function(el){
          $("div.pledge_form").html(el)
          newPledgeSubmission()
      })

  }

  // Add this to newPledgeForm so listener is availbale after form is renderd
  function newPledgeSubmission(){
    $(`form.new_pledge`).submit(function(e){
      e.preventDefault();
      console.log($(this).serializeArray())

    })
  }
