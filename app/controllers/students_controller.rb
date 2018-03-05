class StudentsController < ApplicationController


  def show
    @student = Student.find(params[:id])
    @pledge = Pledge.new
  end
end
 
