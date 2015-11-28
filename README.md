#database design
##user
 has_many: prots
   +nickname
   +email
   +password
   +avatar_iamge
   +member
   +profile
   +works
##proto
has_many: comments  has_many: tags
  +title
  +main_thumbnail
  +sub_thumbnailsx3
  +catchcopy
  +concept
  +agx3
  +like
  +date
  +user_id
##comment
  +comment
  +proto_id
##tag
has_many: protos
  +tag_name
##protostag
  +tags_id
  +protos_id
