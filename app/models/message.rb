class Message < ApplicationRecord
  belongs_to :user
  validates :body, 
    length:{ maximum: 350 },
    presence: true
  scope :custom_display, -> { order(:created_at).last(20) }
end
