require 'rails_helper'
require 'capybara/rails'

RSpec.describe 'Sign Up', type: :model do
  scenario 'Sign up with valid inputs' do
    visit '/users/sign_up'
    fill_in 'Fullname', with: 'Foo Bar'
    fill_in 'Username', with: 'foo'
    fill_in 'Email', with: 'foo@bar.com'
    fill_in 'Password', with: '12345678'
    fill_in 'Password confirmation', with: '12345678'
    click_on 'signup_btn'
    sleep(2)
    expect(page).to have_content('Foo Bar')
  end

  scenario 'Sign up with invalid inputs' do
    visit 'users/sign_up'
    fill_in 'Fullname', with: 'Foo Bar'
    fill_in 'Username', with: 'foo'
    fill_in 'Email', with: 'foo@bar.com'
    fill_in 'Password', with: '12345678'
    fill_in 'Password confirmation', with: '12345678'
    click_on 'signup_btn'
    sleep(2)
    expect(page).to_not have_content('Foo Bar')
  end
end

RSpec.describe 'Log In', type: :feature do
  let(:user) { User.create(fullname: 'Foo Bar', username: 'foo', email: 'foo@bar.com', password: '12345678') }
  scenario 'Log in with valid inputs' do
    visit '/users/sign_in'
    fill_in 'user_login', with: user.username
    fill_in 'user_password', with: user.password
    click_on 'Log in'
    sleep(2)
    expect(page).to have_content('Foo Bar')
  end

  scenario 'Log in with invalid inputs' do
    visit '/users/sign_in'
    fill_in 'user_login', with: 'Banana'
    fill_in 'user_password', with: user.password
    click_on 'Log in'
    sleep(2)
    expect(page).to_not have_content('Foo Bar')
  end
end

RSpec.describe 'Log Out', type: :feature do
  let(:user) { User.create(fullname: 'Foo Bar', username: 'foo', email: 'foo@bar.com', password: '12345678') }
  scenario 'Log Out' do
    visit '/users/sign_in'
    fill_in 'user_login', with: user.email
    fill_in 'user_password', with: user.password
    click_on 'Log in'
    sleep(2)
    click_on 'logout_btn'
    sleep(2)
    visit root_path
    expect(page).to have_content('You need to sign in or sign up before continuing.')
  end
end
