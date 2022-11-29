require 'spec_helper'
require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'GET /index' do
    it "Redirects to the User Posts' page" do
      get '/users/:id/posts'
      expect(response).to render_template(:index)
    end
  end

  describe 'GET /show' do
    it "Redirects to the Posts' show page" do
      get '/users/:id/posts/:id'
      expect(response).to render_template(:show)
    end
  end
end
