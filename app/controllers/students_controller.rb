class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    if params[:student][:first_name] !="" && params[:student][:last_name] !="" then
    @student = Student.create(params.require(:student))
    redirect_to @student
  else
    redirect_to new_student_path
  end
end
  def edit
    @student = Student.find(params[:id])
  end
  def update
    @student = Student.find(params[:id])
    @student.update(params.require(:student))
    redirect_to @student
  end
end
