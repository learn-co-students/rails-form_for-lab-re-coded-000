class StudentsController < ApplicationController

  def index
    @students=Student.all
  end
  def new
    @student=Student.new
  end
  def create
    if params[:student][:first_name] !='' && params[:student][:first_name]!=''
      @student=Student.create(params.require(:student))
      redirect_to @student
    else
      redirect_to '/students/new'
    end
  end
  def show
    @student=Student.find(params[:id])
  end

  def edit
    @student=Student.find(params[:id])

  end
  def update
    @student=Student.find(params[:id])
    @student.update(params.require(:student))
    redirect_to @student
  end
end
