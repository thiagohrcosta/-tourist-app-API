class Company < ApplicationRecord
  belongs_to :user
  has_many :tickets
  validates :name, :logo, :user_id, presence: true
end
