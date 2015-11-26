##
model
1 user => nickname, email, password, avatar, memner of, profile ,works
2 proto => title, main_thumbnail, sub_thumbnails * 3, catchcopy, concept, t ag * 3, like, date, user_id
3 comment =>  comment, proto_id
4 tag
5 protostag => tags_id, protos_id

##
relation
one(proto) : many(comments) {
  proto => comments
}  mooovi

one(user) : many(proto) {
  user => protos
  proto => user
}

@@user has many protos & proto has many comments == user > protos > comments

many : many {
  proto => tags
  tag => protos
}
