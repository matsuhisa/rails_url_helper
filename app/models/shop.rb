class Shop < ActiveRecord::Base
  has_many :reviews, -> { published }
  has_many :photos, -> { published }
  has_many :official_photos, -> { published }
  has_one :access
end
