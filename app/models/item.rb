class Item < ApplicationRecord
  has_one_attached :image
  
  # 在庫数が0以上であることを確認
  validates :stock, numericality: { greater_than_or_equal_to: 0 }
  # カテゴリが重複しないことを確認
  validates :category, uniqueness: true
  validates :name, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, presence: true
end