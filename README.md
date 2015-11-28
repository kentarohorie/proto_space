# database design

## user
 has_many: prots
   * nickname
   * email
   * password
   * avatar_iamge
   * member
   * profile
   * works

## proto
has_many: comments
has_many: tags, through: protos_tag
  blongs_to: user
  * title
  * main_thumbnail
  * sub_thumbnails1
  * sub_thumbnails2
  * sub_thumbnails3
  * catchcopy
  * concept
  * tag1
  * tag2
  * tag3
  * date
  * user_id

## comment
belongs_to: proto
  * comment
  * proto_id

## tag
has_many: protos, through: protos_tag
  * tag_name

## protos_tag
belongs_to: tag, proto
  * tags_id
  * protos_id

## like
  * proto_id
  * user_id