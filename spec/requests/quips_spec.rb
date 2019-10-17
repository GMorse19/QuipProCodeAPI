require 'rails_helper'

RSpec.describe "Quips", type: :request do
  describe "GET /quips" do
    it "works! (now write some real specs)" do
      get quips_path
      expect(response).to have_http_status(200)
    end
  end
end
