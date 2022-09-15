# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs title' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'JKR'
    fill_in 'Price', with: 20
    fill_in 'Date', with: '01-01-2000'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end

  scenario 'valid inputs author' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'JKR'
    fill_in 'Price', with: 20
    fill_in 'Date', with: '01-01-2000'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('JKR')
  end

  scenario 'valid inputs price' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'JKR'
    fill_in 'Price', with: 20
    fill_in 'Date', with: '01-01-2000'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content(20)
  end

  scenario 'valid inputs date' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'JKR'
    fill_in 'Price', with: 20
    fill_in 'Date', with: '01-01-2000'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('01-01-2000')
  end
end
