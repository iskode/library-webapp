require 'spec_helper'

describe RubricsController do


  describe '#show' do

    before(:each) do
      assigns(:rubric).stub(:books)
      Rubric.stub(:find)
    end

    it "returns http success and show template" do
      get 'show', {id: 1}
      expect(response).to be_success
      expect(response).to render_template 'show'
    end

    it 'loads requested rubric ant its books' do
      expect(Rubric).to receive(:find)
      expect(assigns(:rubric)).to receive(:books)
      controller.show
    end
  end

end
