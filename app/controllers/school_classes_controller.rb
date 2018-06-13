class SchoolClassesController < ApplicationController

  def index
    @school_classes = SchoolClass.all
    render :index
  end

  def new
    @school_class = SchoolClass.new
    render :new
  end

  def create
    @school_class = SchoolClass.create(school_class_params)
    redirect_to school_class_path(@school_class)
  end

  def show
    @school_class = find_school_class(params[:id])
    render :show
  end

  def edit
    @school_class = find_school_class(params[:id])
    render :edit
  end

  def update
    @school_class = find_school_class(params[:id])
    @school_class.update(school_class_params)
    redirect_to school_class_path(@school_class)
  end



  private

  def school_class_params
    params.require(:school_class).permit(:title, :room_number)
  end

  def find_school_class(id)
    school_class = SchoolClass.find(id)
  end









end
