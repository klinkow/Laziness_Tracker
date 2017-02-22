require 'rails_helper'

RSpec.describe "Lazies", type: :request do
  describe "GET /lazies" do
    it "works! (now write some real specs)" do
      get lazies_path
      expect(response).to have_http_status(200)
    end
  end
end
