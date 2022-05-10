class Product < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: {:greater_than: 0}
  validates :description: presence: truevalidates :description, length { in: 10...500}

  def friendly_created_at
    created_at.strftime("%B %e, %Y")
  end
end
