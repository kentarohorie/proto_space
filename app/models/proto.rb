class Proto < ActiveRecord::Base
  has_many :thumbnails
  belongs_to :user
  accepts_nested_attributes_for :thumbnails
  validates :title, :concept, :catchcopy, presence: :true

  def get_month_english(month_num)
    monthes = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']
    return "#{monthes[month_num - 1]} #{self.updated_at.day}"
  end
end
