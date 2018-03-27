class TeachersController < ApplicationController
  def index
      @teachers = Teacher.all

  end

  def show
    @teacher = Teacher.find(params[:id])
  end

  def edit
    @teacher = Teacher.find(params[:id])
  end

  def update
    if params[:student_ids] != nil
       params[:student_ids].each do |student_id|
          student = Student.find(student_id)
          student.teacher_id = params[:id]

          student.save
          redirect_to teacher_path(params[:id])
       end
    else
      redirect_to teacher_path(params[:id])
    end
  end

end
