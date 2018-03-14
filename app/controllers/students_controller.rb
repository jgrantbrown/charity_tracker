class StudentsController < ApplicationController

  def new
    @student = Student.new
  end

  def create
    @student = Student.new
    # NEed to check if found user email has a teacher?
      if  user = User.find_by(:email => params[:student][:email])
          @student.user_id = user.id
          @student.teacher_id = current_user.id
          @student.save
          # What path do we want to send this to
          redirect_to teacher_path
      else
          @student.first_name = params[:student][:first_name]
          @student.last_name = params[:student][:last_name]
          @student.teacher_id = current_user.id
          @student.save
          redirect_to teacher_path(current_user)
      end
  end

  def show
    @student = Student.find(params[:id])
    @pledge = Pledge.new
    @comment = Comment.new
  end


  private

    def student_params
        params.require(:student).permit(:first_name, :last_name, :email,:teacher_id, :user_id)
    end

end
