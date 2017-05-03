require 'rails_helper'

RSpec.describe "Mothers", type: :request do
  describe "GET /mothers" do
    it "works! (now write some real specs)" do
      get mothers_path
      expect(response).to have_http_status(200)
    end
  end
end
