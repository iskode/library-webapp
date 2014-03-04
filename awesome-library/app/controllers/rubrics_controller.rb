class RubricsController < ApplicationController

  def show
    @rubric = Rubric.find params[:id]
    @books = @rubric.books
  end

  def edit
    @rubric = Rubric.find params[:id]
  end

  def update

    redirect_to rubric_url(params[:id])
  end
end
