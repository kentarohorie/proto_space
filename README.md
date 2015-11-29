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
has_many: comments <br />
###has_many: tags, through: protos_tag <br />
blongs_to: user
  * title
  * main_thumbnail
  * sub_thumbnailses
  * catchcopy
  * concept
  * tags
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
belongs_to: proto <br />
belongs_to: user
  * proto_id
  * user_id

