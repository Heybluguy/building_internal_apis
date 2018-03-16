require 'rails_helper'

RSpec.describe Api::V1::OrdersController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      order = create(:order)

      get :show, params:{id: order.id}

      expect(response).to have_http_status(:success)
    end
  end

end
