class Proto < ActiveRecord::Base
  has_many :thumbnails, dependent: :delete_all
  belongs_to :user
  accepts_nested_attributes_for :thumbnails
  validates :title, :concept, :catchcopy, presence: :true

  def get_month_english(month_num)
    monthes = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']
    return "#{monthes[month_num - 1]} #{self.updated_at.day}"
  end

  def get_sub_thumbnails
    sub_thumbnails = []
    self.thumbnails.each do |thumbnail|
      sub_thumbnails << thumbnail if thumbnail.status == "sub" && thumbnail.image.file != nil
    end
    return sub_thumbnails
  end

  def get_main_thumbnail
    self.thumbnails.each do |thumbnail|
      return thumbnail if thumbnail.status == "main"
    end
  end

end
