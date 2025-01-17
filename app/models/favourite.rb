class Favourite < ApplicationRecord
  belongs_to :car
  has_many :cars, dependent: :destroy
end
