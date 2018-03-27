class PledgesController < ApplicationController

 attr_accessor :student_id,:charity_id

  def create
    @pledge = Pledge.new
    student = Student.find(params[:student][:student_id])
    charity =Charity.find(params[:charity][:charity_id])
    @pledge.amount= params[:amount]
    @pledge.student_id = student.id
    @pledge.charity_id = charity.id
    @pledge.user_id=params[:comment][:user_id]
    if @pledge.save
        comment = Comment.new(comment_params)
        if comment.content != nil
          comment.pledge_id = @pledge.id
          comment.save
        end
        redirect_to student_path( params[:student][:student_id])
    else
      @student = Student.find(params[:student][:student_id])
      @pledge
      @comment = Comment.new
      render "students/show"
      end
  end

  

  private
  # Had a pledge_params but issues with hash passing in params

    def comment_params
      params.require(:comment).permit(:content, :user_id)
    end

end
