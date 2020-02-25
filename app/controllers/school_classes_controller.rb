class SchoolClassesController < ApplicationController

  before_action :define_item, only: [:show, :edit, :update, :destroy]

  def index
    @school_classes = SchoolClass.all
  end

  def show

  end

  def edit

  end

  def update
    @school_class.update(strong_params)
    redirect_to school_class_path(@school_class)
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.create(strong_params)
    redirect_to school_class_path(@school_class)
  end

  def destroy
    @school_class.destroy
    redirect_to school_classes_path
  end

  private

  def define_item
    @school_class = SchoolClass.find(params[:id])
  end

  def strong_params
    params.require(:school_class).permit(:title, :room_number)
  end

end
