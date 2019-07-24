class Item < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  enum category: [:toys, :books, :clothes, :accessories]
  enum condition: [:used, :new]
end
