require 'rails_helper'

RSpec.describe 'groups_controller_requests', type: :request do
  before(:all) do
    Rails.application.load_seed
  end

  describe 'GET #index' do
    before(:example) { get groups_path }

    it 'is receiving an Ok response from the server' do
      expect(response).to have_http_status(302)
    end
  end

  describe 'GET #show' do
    before(:example) { get '/groups/1' }

    it 'is receiving an Ok response from the server' do
      expect(response).to have_http_status(302)
    end

    it 'renders index template correctly' do
      expect(response).to redirect_to('/users/sign_in')
    end
  end
end
