require 'rails_helper'

RSpec.describe TripsController, type: :controller do
  describe '#index' do
    it 'responds with 200 status code' do
      get :index
      expect(response).to have_http_status(200).and be_success
    end

    it 'renders the index template' do
      get :index
      expect(response).to render_template('index')
    end

    it 'gets all the days in @trips' do
      d1 = create(:trips)
      d2 = create(:trips)
      get :index
      expect(assigns(:trips)).to match_array [d1, d2]
    end
  end
end
