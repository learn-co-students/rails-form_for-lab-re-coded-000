class SchoolClassesController < ApplicationController
  def index
    @school_class = SchoolClass.all
  end

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    if params[:school_class][:title] !="" && params[:school_class][:room_number] !="" then
    @school_class = SchoolClass.create(params.require(:school_class))
    redirect_to @school_class
  else
    redirect_to new_school_class_path
  end
end
  def edit
    @school_class = SchoolClass.find(params[:id])
  end
  def update
    @school_class = SchoolClass.find(params[:id])
    @school_class.update(params.require(:school_class))
    redirect_to @school_class
  end
end
