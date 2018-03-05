class PledgesController < ApplicationController

 attr_accessor :student_charities

  def create
    binding.pry
    pledge = Pledge.new(pledge_params)
    pledge.studentcharities_id = pledge.student_charity
    # Associate the student_id and charity_id to Pledge.studentcharity_id
    pledge.save
    redirect_to student_path(params[:pledge][:student_id])
  end

  private

    def student_charity
      s = Studentcharity.find_or_create_by(:student_id => params[:studentcharities_attributes][:student_id], :charity_id =>
      params[:studentcharities_attributes][:charity_id])
      s.id
    end

    def pledge_params
      params.require(:pledge).permit(:amount, :user_id)
    end

end



# student_charities.new(studentcharities_attributes)
