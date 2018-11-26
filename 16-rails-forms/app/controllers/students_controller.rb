class StudentsController < ApplicationController
  def new
    render :new
  end

  def create
    @student = Student.new(name: params[:name],
                           cohort_id: params[:cohort_id])
    @student.save
    # byebug
    redirect_to student_path(@student)
  end

  def index
    @students = Student.all
    # render :index
  end

  def show
    @student = Student.find(params[:id])
    render :show
  end

end
