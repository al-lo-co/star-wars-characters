require 'rails_helper'

RSpec.describe "Characters", type: :request do
  describe "GET /index" do
    character_params = {character: {
      name: "Skywalker Luke"
    }}

    context "Index" do
      it "render index" do
        get '/characters'
        expect(response.body).to include(Character.first.name)
      end
    end

    context "Show" do
      it "response 200" do
        get '/characters/1'
        expect(response).to have_http_status(:ok)
        expect(response.body).to include(Character.first.name)
      end
    end

    context "update" do
      before {put "/characters/#{Character.last.id}", params: character_params}
      it "show updated character" do
        expect(Character.last.name).to eq("Skywalker Luke")
        expect(response).to have_http_status(302)
      end
    end

    context "favorite" do
      before {get "/favorite", params: {id: Character.last.id}}

      it "show updated as a favorite the last character" do
        expect(Character.last.favorite).to eq(true)
      end

      it "index updated the last character as a favorite" do
        get '/characters?favs=true'
        expect(response.body).to include(Character.last.name)
      end
    end
  end

end
