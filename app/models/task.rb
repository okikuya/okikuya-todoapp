class Task < ApplicationRecord
  belongs_to :user

  validates :title, presence: true, length: { minimum: 3, maximum: 10 }
  validates :content, presence: true, length: { minimum: 20, maximum: 300 }
  validates :deadline, presence: true
end
