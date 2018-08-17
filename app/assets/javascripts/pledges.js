$(document).ready(function(){

})

  function Pledge(amount,comment){
    this.amount = amount
    this.comment = comment
  }

 Pledge.prototype.formatHTML = function (){
   return `THANK YOU FOR THE PLEDGE:<p>Comment: ${this.comment} Amount: $${this.amount}</p> `
 }

 function newPledgeForm(url){
    var split = url.split('/')
    var id = split[split.length - 1]
    $.get(`/students/${id}/pledges/new`, function(el){
          $("div.pledge_form").html(el)
          newPledgeSubmission()
      })
  }

  function newPledgeSubmission(){
    $(`form.new_pledge`).submit(function(e){
      e.preventDefault();

      $.ajax({
          type: "POST",
          url: this.action,
          data: ($(this).serialize()),
          success: function(response){
            newPledge = new Pledge(response.amount,response.comments[0].content)
            $( ".newest_pledge" ).append(newPledge.formatHTML())
            $.get(`/students/${response.student_id}/pledges/new`, function(el){
                  $("div.pledge_form").html(el)
                  newPledgeSubmission()
              })
          },
        });
    })
  }
