class StudentsController < ApplicationController
    before_action :set_student, only: [:show, :edit, :update]

    def new
        @student = Student.new
    end

    def create
        @student = Student.create(params.require(:student).permit(:first_name, :last_name))
        redirect_to @student
    end

    def show

    end

    def edit
    end

    def update
        @student.update(params.require(:student).permit(:first_name, :last_name))
        redirect_to @student
    end

    private 
    def set_student
        @student = Student.find(params[:id])
    end
end