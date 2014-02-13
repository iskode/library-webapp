require 'spec_helper'

describe WelcomeController do

  describe "GET 'index'" do

    it "returns http success" do
      get 'index'
      response.should be_success
    end

    it "shows all rubrics" do
      expect(Rubric).to receive(:names)
      controller.index
    end

  end

end
