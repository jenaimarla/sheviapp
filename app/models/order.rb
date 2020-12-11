class Order < ApplicationRecord

  belongs_to :creation
  monetize :amount_cents
end
