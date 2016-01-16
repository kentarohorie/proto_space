class Like < ActiveRecord::Base
  belongs_to :proto, counter_cache: true

  def self.is_exist_like(user, proto)
    Like.exists?(user_id: user.id, proto_id: proto.id)
  end

  def self.get_like(user, proto)
    Like.find_by(user_id: user.id, proto_id: proto.id)
  end

end
