class Product < ApplicationRecord
  # table_name: "products"
  # table: products
  # table_name: "item"
  # StudentScore -> student_scores

  validates :title, presence: true
  validates :price, presence: true
end
