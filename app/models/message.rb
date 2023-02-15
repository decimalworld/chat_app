class Message < ApplicationRecord
  belongs_to :user
  validates :body, 
    length:{ maximum: 350 },
    presence: true
end
