class Image < ActiveRecord::Base
  validates :imageUrl, presence: true
  validates_uniqueness_of :imageUrl
end
