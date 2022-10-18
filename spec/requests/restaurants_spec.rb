require 'rails_helper'

describe 'Restaurant'do
  describe 'GET /restaurants' do
    it 'finds the restaurants index' do
      get api_v1_restaurants_path

      expect(response).to have_http_status(:ok)
    end
  end

  describe 'GET /restaurants/:id' do
    it 'finds the restaurants show' do
      get api_v1_restaurants_path(Restaurant.first)

      expect(response).to have_http_status(:ok)
    end
  end
end
