function newPledgeForm(url){
  debugger
  // HOw do I pass current_user and student_id to this form
  $.get('/pledges/new', function(e){
      console.log(url)
      console.log(e)
      $("div.pledge_form").html(e)
    })
    // $.get(url, function(student) {
    //   var studentID = student.id
    // })
}
