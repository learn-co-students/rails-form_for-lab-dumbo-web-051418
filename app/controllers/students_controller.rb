class StudentsController < ApplicationController

  def index
    @students = Student.all
    render :index
  end

  def new
    @student = Student.new
    render :new
  end

  def create
    @student = Student.create(student_params)
    redirect_to student_path(@student)
  end

  def show
    @student = find_student
    render :show
  end

  def edit
    @student = find_student
    render :edit
  end

  def update
    @student = find_student
    @student.update(student_params)

    redirect_to student_path(@student)
  end

  private
  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end

  def find_student
    @student = Student.find(params[:id])
  end

end
