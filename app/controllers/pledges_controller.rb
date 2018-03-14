class PledgesController < ApplicationController

 attr_accessor :student_charities

  def create
    @pledge = Pledge.new(pledge_params)
    studentcharity = Studentcharity.find_or_create_by(:student_id => params[:studentcharities_attributes][:student_id], :charity_id =>
    params[:studentcharities_attributes][:charity_id])
    @pledge.studentcharity_id = studentcharity.id
    if @pledge.save
        comment = Comment.new(comment_params)
        if comment.content != nil
          comment.pledge_id = @pledge.id
          comment.save
        end
        redirect_to student_path( params[:studentcharities_attributes][:student_id])
    else
      # how to I carry the error on @pledge to the redirect?
      @student = Student.find(params[:studentcharities_attributes][:student_id])
      @pledge 
      @comment = Comment.new
      render "students/show"
      end
  end

  private

    def pledge_params
      params.require(:pledge).permit(:amount, :user_id)
    end

    def comment_params
      params.require(:comment).permit(:content, :user_id)
    end

end
