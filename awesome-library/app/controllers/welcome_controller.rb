require 'rubric'

class WelcomeController < ApplicationController
  def index

    @rubrics = Rubric.all

    @message = "Welcome to Awesome Library!"

  end
end
