class RubricsController < ApplicationController

  def show
    @rubric = Rubric.find params[:id]
    @books = @rubric.books
  end

  def edit
    @rubric = Rubric.find params[:id]
  end

  def update
    @rubric = Rubric.find params[:id]
    @rubric.update_attributes! rubric_params
    redirect_to rubric_url(params[:id])
  end


  private

  def rubric_params
    params.require(:rubric).permit(:description)
  end
end
