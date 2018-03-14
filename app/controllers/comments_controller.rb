class CommentsController < ApplicationController



  def create
    binding.pry
    comment = Comment.new(comment_params)
    comment.save
    newcomments = PledgeComment.create(:comment_id => params[:pledgecomment_attributes][:comment_id], :pledge_id =>
    params[:pledgecomment_attributes][:pledge_id])
    # comment.newcommnets = pledgecomment.id
    commnet.save
  end

  private
  def comment_params
    params.require(:comment).permit(:content, :user_id)
  end



end


# pledgecomment = PledgeComment.find_by(:comment_id => params[:pledgecomment_attributes][:comment_id], :pledge_id =>
# params[:pledgecomment_attributes][:pledge_id])
