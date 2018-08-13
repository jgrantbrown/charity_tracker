$(document).ready(function(){

})

function Pledge(amount ,comment){
  this.amount = amount
  this.comment = comment
}

 Pledge.prototype.formatHTML = function (){

   return `<p>Comment: ${this.comment} Amount: $${this.amount}</p> `
}

  function newPledgeForm(url){
    var split = url.split('/')
    var id = split[split.length - 1]
    // HOw do I pass charity_id  this form
    $.get(`/students/${id}/pledges/new`, function(el){
          $("div.pledge_form").html(el)
          

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

            newPledge = new Pledge(response.amount,response.comments[0].content)
            $( ".new_pledge" ).html(newPledge.formatHTML())

          },

        });
      // get return value of last pledge saved
      // create js object form return value
      // render to dom js object that is created
    })
  }
