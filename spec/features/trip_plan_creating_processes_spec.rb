require 'rails_helper'

RSpec.feature 'The trip plan creating process', type: :feature do
  scenario 'can create a trip plan' do
    visit new_trip_plan_path
    within('#new_trip_plan') do
      fill_in 'Title', with: 'Test Title'
      fill_in 'Time', with: 'Test Time'
      fill_in 'Date', with: 67
      fill_in 'Duration', with: 'Test Duration'
      fill_in 'Notes', with: 'Test Notes'
    end
    click_button 'Save'
    expect(page).to have_content 'Add a Place'

    within('#new_place') do
      fill_in 'Name', with: 'Test Name'
      fill_in 'Location', with: 'Great Water'
      fill_in 'place_lat', with: 56
      fill_in 'place_long', with: 3
      fill_in 'Description', with: 'Test Description'
      fill_in 'Url', with: 'Test Url'
    end
    click_button 'Save'
    expect(page).to have_content 'Test Title'
    expect(page).to have_content 'Test Name'
  end
end
