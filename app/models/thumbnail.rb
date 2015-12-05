class Thumbnail < ActiveRecord::Base
  belongs_to :proto
  mount_uploader :image, ThumbnailUploader
end
