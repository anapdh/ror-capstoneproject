require 'rails_helper'

RSpec.describe Following, type: :model do
  describe 'Associations' do
    it { should belong_to(:follower).class_name('User') }
    it { should belong_to(:followee).class_name('User') }
  end

  describe 'Validations' do
    it { should validate_uniqueness_of(:follower_id).scoped_to(:followee_id) }
    it { should validate_uniqueness_of(:followee_id).scoped_to(:follower_id) }
  end
end
