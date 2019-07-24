class Item < ApplicationRecord
  belongs_to :user
  enum category: [:toys, :books, :clothes, :accessories]
  enum condition: [:used, :new]
end
