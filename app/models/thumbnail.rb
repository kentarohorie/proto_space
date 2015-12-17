class Thumbnail < ActiveRecord::Base
  belongs_to :proto
  mount_uploader :image, ThumbnailUploader
  enum status: { main: 0, sub: 1 }

  validate :reject_thumbnails

   def reject_thumbnails
      if self.status == "main"
        errors.add(:image, 'not have main thumbnail') if self.image.file == nil
    end
  end

end
