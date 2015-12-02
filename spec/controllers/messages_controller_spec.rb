require 'spec_helper'

describe MessagesController do
  describe 'GET #index' do
    it 'can get all message' do
      message = FactoryGirl.create(:message)
      get :index
      expect(assigns(:messages)).to match_array([message])
    end
    it 'renders the index template' do
      get :index
      expect(response).to render_template :index
    end
  end
  describe 'GET #new' do
    it 'can get Message instance' do
      get :new
      expect(assigns(:message)).to be_a_new(Message)
    end
    it 'renders the new template' do
      get :new
      expect(response).to render_template :new
    end
  end
end
