require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET index' do
    it "Redirects to the users' list page " do
      get '/users'
      expect(response).to render_template(:index)
    end
  end

  describe 'GET /show' do
    it 'Redirects to the users/show page ' do
      get '/users/:id'
      expect(response).to render_template(:show)
    end
  end
end
