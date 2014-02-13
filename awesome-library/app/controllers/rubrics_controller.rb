class RubricsController < ApplicationController

  def show
    @rubric = Rubric.find params[:id]
    @books = @rubric.books
  end
end
