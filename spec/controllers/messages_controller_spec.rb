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
end
