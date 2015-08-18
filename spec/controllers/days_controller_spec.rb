require 'rails_helper'

RSpec.describe DaysController, type: :controller do
  describe '#index' do
    it 'responds with 200 status code' do
      get :index
      expect(response).to have_http_status(200).and be_success
    end

    it 'renders the index template' do
      get :index
      expect(response).to render_template('index')
    end

    it 'gets all the days in @days' do
      d1 = create(:day)
      d2 = create(:day)
      get :index
      expect(assigns(:days)).to match_array [d1, d2]
    end
  end
end
