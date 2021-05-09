class Serie < ApplicationRecord
  belongs_to :event
  has_many :matches
end
