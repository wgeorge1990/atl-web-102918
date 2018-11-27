class StudentsController < ApplicationController
  def new
    @student = Student.new
    @cohorts = Cohort.all
    render :new
  end

  def create
    @student = Student.new(name: params[:name],
                           cohort_id: params[:cohort_id])
    if @student.save
      redirect_to student_path(@student)
    else
      @message = "Your student couldn't be saved."
      render :new
    end
  end

  def edit
    @student = Student.find(params[:id])
    @cohorts = Cohort.all
    render :edit
  end

  def update
    @student = Student.find(params[:id])
    byebug
    @student.update(student_params)
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

  def student_params
    params.permit(:name, :cohort_id)
  end

end
