require 'rails_helper'

RSpec.describe Order, type: :model do
  context "Order associations" do
    it {should validate_presence_of(:ticket_id)}
    it {should validate_presence_of(:user_id)}
  end

  context "Order validations" do
    it {should validate_numericality_of(:quantity)}
  end
end
