class Company < ApplicationRecord
  belongs_to :user

  validates :name, :logo, :user_id, presence: true
end
