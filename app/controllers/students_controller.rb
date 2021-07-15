class StudentsController < ApplicationController

  skip_before_action :require_user , only:[ :new , :create]
  before_action :require_same_student, only: [:edit, :update]


  def index
    @students = Student.all
  end
  def new
    @students = Student.new
  end
  def show
    @students = Student.find(params[:id])
  end

  def edit
    @students = Student.find(params[:id])

  end
  def update
    @students = Student.find(params[:id])
    if @students.update(student_params)
      flash[:notice] = "You have successfully updated your profile"
      redirect_to @students

    else
      render 'edit'
    end
  end

  def create
    @students = Student.new(student_params)
    if @students.save
      flash[:notice] = "You have successfully signed up"
      redirect_to @students
    else
      render 'new'
    end
  end


  end

  private
  def student_params
    params.require(:student).permit(:name, :email, :password, :password_confirmation)
  end

 def require_same_student
   if  current_user != @students
     flash[:notice] = "you can only edit your profile"
     redirect_to students_path(current_user)


   end

 end

