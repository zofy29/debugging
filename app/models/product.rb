class Product < ApplicationRecord
  belongs_to :company, required: false
end
