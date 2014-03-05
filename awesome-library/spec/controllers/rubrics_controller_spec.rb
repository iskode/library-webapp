require 'spec_helper'

describe RubricsController do


  describe '#show' do
    it "returns http success and show template" do
      Rubric.stub(:find)
      assigns(:rubric).stub(:books)
      get 'show', {id: 1}
      expect(response).to be_success
      expect(response).to render_template 'show'
    end

    it 'loads the rubric ant its books' do
      expect(Rubric).to receive(:find)
      expect(assigns(:rubric)).to receive(:books)
      controller.show
    end
  end

  describe '#edit' do

    it "returns http success and edit template" do
      Rubric.stub(:find)
      get 'edit', {id: 1}
      expect(response).to be_success
      expect(response).to render_template 'edit'
    end

    it 'loads requested rubric' do
      expect(Rubric).to receive(:find)
      controller.edit
    end
  end

  describe '#update' do

    it "redirects to rubric#show" do
      Rubric.stub(:find)
      controller.stub(:rubric_params)
      assigns(:rubric).stub(:update_attributes!)
      put 'update', {id: 1}
      expect(response).to redirect_to rubric_path(1)
    end

    it 'saves changes' do
      expect(Rubric).to receive(:find)
      expect(controller).to receive(:rubric_params)
      expect(assigns(:rubric)).to receive(:update_attributes!)
      put 'update', {id: 1}
      #controller.send(:update)
    end
  end


  #def common_http_ops(request_name, )

end
