require 'rails_helper'
require 'capybara/rails'

RSpec.describe 'Following', type: :feature do
  scenario 'Follow' do
    visit '/users/sign_up'
    fill_in 'Fullname', with: 'Foo Bar'
    fill_in 'Username', with: 'foo'
    fill_in 'Email', with: 'foo@bar.com'
    fill_in 'Password', with: '12345678'
    fill_in 'Password confirmation', with: '12345678'
    click_on 'signup_btn'
    sleep(2)
    click_on 'logout_btn'
    visit '/users/sign_up'
    fill_in 'Fullname', with: 'Tester'
    fill_in 'Username', with: 'tester'
    fill_in 'Email', with: 'test@test.com'
    fill_in 'Password', with: '12345678'
    fill_in 'Password confirmation', with: '12345678'
    click_on 'signup_btn'
    sleep(2)
    visit '/users/1'
    sleep(2)
    click_on 'Follow'
    sleep(2)
  end

  scenario 'Unfollow' do
    visit '/'
    fill_in 'user_login', with: 'tester'
    fill_in 'user_password', with: '12345678'
    click_on 'Log in'
    sleep(2)
    visit '/users/1'
    sleep(2)
    click_on 'Unfollow'
    sleep(2)
  end
end
