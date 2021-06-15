require 'rails_helper'

RSpec.describe "Characters", type: :request do
  describe "GET /index" do
    character_params = {character: {
      name: "Skywalker Luke"
    }}

    it "render index" do
      get '/characters'
      expect(response.body).to include(Character.first.name)
    end

    it "response 200" do
      get '/characters/1'
      expect(response).to have_http_status(:ok)
    end

    context "update" do
      before {put "/characters/#{Character.last.id}", params: character_params}
      it "show updated character" do
        expect(Character.last.name).to eq("Skywalker Luke")
        expect(response).to have_http_status(302)
      end
    end
  end

end
