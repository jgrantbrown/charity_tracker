class PledgesController < ApplicationController

 attr_accessor :student_id,:charity_id

 def new
   @pledge = Pledge.new
   render layout: false
 end
  def create
    @pledge = Pledge.new
    @pledge.amount = params[:amount]
    @pledge.student_id = params[:student][:student_id]
    @pledge.charity_id = params[:charity][:charity_id]
    @pledge.user_id = current_user.id
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


    def comment_params
      params.require(:comment).permit(:content, :user_id)
    end

end




# def create
#   @pledge = Pledge.new(pledge_params)
#   binding.pry
#   @pledge.amount = params[:amount]
#   @pledge.user_id = current_user.id
#   if @pledge.save
#       comment = Comment.new(comment_params)
#       if comment.content != nil
#         comment.pledge_id = @pledge.id
#         comment.save
#       end
#       redirect_to student_path( params[:student][:student_id])
#   else
#     @student = Student.find(params[:student][:student_id])
#     @pledge
#     @comment = Comment.new
#     render "students/show"
#     end
# end

# Had a pledge_params but issues with hash passing in params
  # def pledge_params
  #   params.require(:pledge).permit(pledge:[:student_id,:charity_id])
  # end
