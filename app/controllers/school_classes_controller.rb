class SchoolClassesController < ApplicationController
  def index
    @school_classes = schoolclasses
  end
  def new
    @school_class = SchoolClass.new
  end
  def create
    @school_class = SchoolClass.create(schoolclass_params)
    redirect_to school_class_path(@school_class)
  end
  def edit
    @school_class = schoolclass
  end
  def update
    @school_class = schoolclass
    @school_class.update(schoolclass_params)
    redirect_to school_class_path(@school_class)
  end
  def show
    @school_class = schoolclass
  end

  private
  def schoolclasses
    SchoolClass.all
  end
  def schoolclass
    SchoolClass.find(params[:id])
  end
  def schoolclass_params
    params.require(:school_class).permit(:title, :room_number)
  end
end
