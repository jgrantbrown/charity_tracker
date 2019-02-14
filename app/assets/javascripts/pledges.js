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
        $.post(this.action, ($(this).serialize()) ).success(function(response){
          console.log(response)
          newPledge = new Pledge(response.amount,response.comments[0].content)
          $( ".newest_pledge" ).append(newPledge.formatHTML())
          $.get(`/students/${response.student_id}/pledges/new`, function(el){
                $("div.pledge_form").html(el)
                newPledgeSubmission()
            })
        },)
    })
  }

  function sortPledge(){
    // [x]Hijack the link
    // [X]get data for specfic student  pledges
    // [x] sort data by pledge amount
    // [x]re-render replacing class=comments_section
    $("a.pledge-sort").click(function(e){
      e.preventDefault();
      $.get(this.href, function(el){
        el.pledges.sort(function (a,b){
          return a.amount - b.amount
        })
        // This is the sorted array of pledges
        // Need to ge just the comment and amount for each
        $(".comments_section").html(" ")
        $.each(el.pledges, function (key, value){
          $(".comments_section").append(`<p>Amount: $ ${value.amount} </p> <p>Comment: ${ value.comments[0] ? value.comments[0].content : "N/A"}</p>`)
        })
        // Need to  jquery overwrite the commnets_section with above info
      })
    })
  }
