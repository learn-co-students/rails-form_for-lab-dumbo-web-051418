class StudentsController < ApplicationController
  def index
    @students = students
  end
  def new
    @student = Student.new
  end
  def create
    @student = Student.create(student_params)
    redirect_to student_path(@student)
  end
  def edit
    @student = student
  end
  def update
    @student = student
    @student.update(student_params)
    redirect_to student_path
  end
  def show
    @student = student
  end

  private
  def students
    Student.all
  end
  def student
    Student.find(params[:id])
  end
  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end
end
