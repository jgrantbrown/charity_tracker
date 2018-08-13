$(document).ready(function(){

})

  function Pledge(amount,comment){
    this.amount = amount
    this.comment = comment
  }

 Pledge.prototype.formatHTML = function (){
   return `<p>Comment: ${this.comment} Amount: $${this.amount}</p> `
 }

 function newPledgeForm(url){
    var split = url.split('/')
    var id = split[split.length - 1]
    $.get(`/students/${id}/pledges/new`, function(el){
          $("div.pledge_form").html(el)
          newPledgeSubmission()
      })

  }

  // Add this to newPledgeForm so listener is availbale after form is renderd
  // but now when submmsion of pledge js redering fine but the form is over writen by a duplication of the
  // js object pledge also?
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

          },
        });
    })
  }
