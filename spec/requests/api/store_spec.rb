require 'swagger_helper'

RSpec.describe 'api/store', type: :request do
  describe "get all stores route", :type => :request do
  
  before {get '/api/stores'}
  it 'returns all stores' do
      expect(JSON.parse(response.body).size).to eq(20)
    end
  it 'returns status code 200' do
      expect(response).to have_http_status(:success)
    end
  end
end
