class CommentsController < ApplicationController

  # Comments created via pledge
  # def create
  #
  #   comment = Comment.new(comment_params)
  #   comment.save
  #   newcomments = PledgeComment.create(:comment_id => params[:pledgecomment_attributes][:comment_id], :pledge_id =>
  #   params[:pledgecomment_attributes][:pledge_id])
  #   # comment.newcommnets = pledgecomment.id
  #   comment.save
  # end
  #
  # private
  # def comment_params
  #   params.require(:comment).permit(:content, :user_id)
  # end

  # Want to add private params something like this
  # def pledgecomment_params
  #   params.require(:pledgecooment_attribute).permit(:pledge_id, :comment_id)
  # end


end


# pledgecomment = PledgeComment.find_by(:comment_id => params[:pledgecomment_attributes][:comment_id], :pledge_id =>
# params[:pledgecomment_attributes][:pledge_id])
