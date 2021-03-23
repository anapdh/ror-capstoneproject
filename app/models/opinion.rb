class Opinion < ApplicationRecord
  belongs_to :user

  scope :ordered_by_most_recent, -> { order(created_at: :desc) }
end
