class StudentsController < ApplicationController
 before_action :must_be_current_student, only: :edit
  def new
    @student = Student.new
  end

  def create
    if User.find_by(:email => params[:student][:email]) == nil
      Student.new(student_params)
    end
    binding.pry
  end

  def show
    @student = Student.find(params[:id])
    # REfactor to have new forms in own view
    @pledge = Pledge.new
    @comment = Comment.new
    render json: @student
  end

private
  def student_params
      params.require(:student).permit(:first_name, :last_name)
  end
    # def student_params
    #     params.require(:student).permit(:first_name, :last_name, :email,:teacher_id, :user_id)
    # end
    def must_be_current_student
      # Need to match current user to current student id
    unless current_user.id == params[:id]
      redirect_to root_path, notice: "This is not you!"
    end
  end

end

# def create
#   binding.pry
#   @student = Student.new
#   @teacher = Teacher.find(params[:teacher_id])
#   # NEed to check if found user email has a teacher?
#     if  user = User.find_by(:email => params[:student][:email])
#         @student.user_id = user.id
#         @student.teacher_id = params[:teacher][:teacher_id]
#         @student.save
#         # What path do we want to send this to
#         redirect_to teacher_path
#     else
#         binding.pry
#         @student.first_name = params[:student][:first_name]
#         @student.last_name = params[:student][:last_name]
#         @student.teacher_id = params[:teacher][:teacher_id]
#         @student.save
#         redirect_to teacher_path(@teacher)
#     end
# end
