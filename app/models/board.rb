class Board < ApplicationRecord
    belongs_to :user
    has_many :tasks, dependent: :destroy

    validates :name, presence: true, length: { minimum: 3, maximum: 20 }
    validates :description, length: { minimum: 20, maximum: 500 }
end
