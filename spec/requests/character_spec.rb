require 'rails_helper'

RSpec.describe "Characters", type: :request do
  describe "GET /index" do
    pending "add some examples (or delete) #{__FILE__}"
    it "render index" do
      get '/characters'
      expect(response).to render_template(:index)
    end
    it "response 200" do
      get '/characters/1'
      expect(response).to have_http_status(:ok)
    end
  end
end
