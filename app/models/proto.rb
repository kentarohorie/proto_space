class Proto < ActiveRecord::Base
  has_many :thumbnails
  accepts_nested_attributes_for :thumbnails
end
