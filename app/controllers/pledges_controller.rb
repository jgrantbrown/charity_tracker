class PledgesController < ApplicationController

 attr_accessor :student_charities

  def create

    pledge = Pledge.new(pledge_params)
    charity = Studentcharity.find_or_create_by(:student_id => params[:studentcharities_attributes][:student_id], :charity_id =>
    params[:studentcharities_attributes][:charity_id])
    pledge.studentcharity_id = charity.id
    if pledge.save
    redirect_to student_path(params[:studentcharities_attributes][:student_id])
    else
      # NEed to creat flash for erro message validation
      pledge[:errors][:message] = "Amount must be present"
      redirect_to student_path(params[:studentcharities_attributes][:student_id])
    end
  end

  private

    def pledge_params
      params.require(:pledge).permit(:amount, :user_id)
    end

end
