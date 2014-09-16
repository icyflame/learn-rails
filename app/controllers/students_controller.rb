class StudentsController < ApplicationController
  def index
  end

  def create
    # render plain: @post.inspect
    @student = Student.new(students_params)

    @student.save
    redirect_to @student
  end

  def new
  end

  def edit
  end

  def show
    @student = Student.find(params[:id])
  end

  def update
  end

  private
  def students_params
    params.require(:students).permit(:name, :dept)
  end
end
