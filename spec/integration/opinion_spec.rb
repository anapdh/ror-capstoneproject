require 'rails_helper'
require 'capybara/rails'

RSpec.describe 'Create Opinion', type: :feature do
  let(:user) { User.create(fullname: 'Tester2', username: 'tester2', email: 'tester2@test.com', password: '12345678') }
  scenario 'New opinion with valid inputs' do
    visit '/users/sign_up'
    fill_in 'Fullname', with: 'Tester2'
    fill_in 'Username', with: 'tester2'
    fill_in 'Email', with: 'tester2@test.com'
    fill_in 'Password', with: '12345678'
    fill_in 'Password confirmation', with: '12345678'
    click_on 'signup_btn'
    visit '/opinions/new'
    fill_in 'opiniontext', with: 'Hello World!'
    click_on 'Create Opinion'
    sleep(2)
    expect(page).to have_content('Hello World!')
  end

  scenario 'New opinion with blank input' do
    visit '/users/sign_in'
    fill_in 'user_login', with: user.username
    fill_in 'user_password', with: user.password
    click_on 'Log in'
    visit '/opinions/new'
    fill_in 'opiniontext', with: ''
    click_on 'Create Opinion'
    sleep(2)
    expect(page).to have_selector('.alert')
  end
end
