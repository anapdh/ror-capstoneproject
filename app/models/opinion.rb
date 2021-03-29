class Opinion < ApplicationRecord
  validates :body, presence: true, length: { maximum: 140,
                                             too_long: '140 characters in comment is the maximum allowed.' }

  belongs_to :user

  scope :ordered_by_most_recent, -> { order(created_at: :desc) }
end
