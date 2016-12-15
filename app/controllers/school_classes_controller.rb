class SchoolClassesController < ApplicationController
def index
    @school_classes=SchoolClass.all
  end
def new
  @school_class=SchoolClass.new
end
def create
  if params[:school_class][:title] !="" && params[:school_class][:room_number]!=""
    @school_class=SchoolClass.create(params.require(:school_class))
    redirect_to @school_class
  else
    redirect_to '/school_classes/new'
  end
end
def show
  @school_class=SchoolClass.find(params[:id])
end
def edit
  @school_class=SchoolClass.find(params[:id])

end
def update
  @school_class=SchoolClass.find(params[:id])
  @school_class.update(params.require(:school_class))
  redirect_to @school_class
end
end
