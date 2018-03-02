class PledgesController < ApplicationController
  def create
    Pledge.create(pledge_params)
    redirect_to student_path(params[:pledge][:student_id])
  end

  private
    def pledge_params
      params.require(:pledge).permit(:amount, :charity_id, :user_id, :student_id)
    end

end
