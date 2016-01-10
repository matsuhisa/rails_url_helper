class Shop < ActiveRecord::Base
  has_many :reviews
  has_many :photos
  has_many :official_photos
  has_one :access
end
