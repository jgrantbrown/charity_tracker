
// function Pledge(attributes){
//   this.amount = attributes.amount
//   this.id =   attributes.id
//   this.student_id = attributes.student_id
//   this.charity_id = attributes.charity_id
//   this.user_id = attributes.current_user.id
// }



function newPledgeForm(url){

  // HOw do I pass charity_id and student_id to this form
  $.get('/pledges/new', function(e){
    debugger
      $.get(url,function(student){
        console.log(student)
        $("div.pledge_form").html(e)

      })
      // console.log(e)
      // $("div.pledge_form").html(e)
    })
    // $.get(url, function(student) {
    //   var studentID = student.id
    // })
}
