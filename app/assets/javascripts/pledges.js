$(document).ready(function(){

})
// function Pledge(attributes){
//   this.amount = attributes.amount
//   this.id =   attributes.id
//   this.studentId = attributes.student_id
//   this.charityId = attributes.charity_id
//   this.userId = attributes.current_user.id
// }
//  Pledge.prototype.formatHTML = function (){
//  RETURN `${this.comment} ${this.amount}; `
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
      
      // save info back as pledge to db
      $.ajax({
          type: "POST",
          url: this.action,
          data: ($(this).serialize()),
          success: function(response){
            debugger
          },

        });
      // get return value of last pledge saved
      // create js object form return value
      // render to dom js object that is created
    })
  }
