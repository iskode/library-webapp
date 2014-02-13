require 'rubric'

class WelcomeController < ApplicationController
  def index

    @rubric_names = Rubric.names
    @message = "Welcome to Awesome Library!"

  end
end
