TABLE users {
  id SERIAL [PK,INCREMENT]
  created_at timestamp
  updated_at timestamp
  username VARCHAR (30)
  bio VARCHAR(400)
  avatar VARCHAR(200)
  phone VARCHAR(10)
  email VARCHAR(40)
  password VARCHAR(50)
  status VARCHAR(15)

}
TABLE comments {
  id INTEGER [PK,INCREMENT]
  content VARCHAR(300)
  user_id INTEGER [REF: > users.id]
  post_id INTEGER [REF: > posts.id]
  created_at timestamp
  updated_at timestamp
}

TABLE posts{
  id INTEGER [PK,INCREMENT]
  title VARCHAR
  created_at timestamp
  updated_at timestamp
  url VARCHAR(200)
  user_id INTEGER [REF : > users.id]
  caption VARCHAR(20)
  lat REAL
  lng real
}

TABLE caption_tags {
  id SERIAL [PK,INCREMENT]
  created_at TIMESTAP
  updated_at TIMESTAP
  user_id INTEGER [REF : > users.id]
  post_id INTEGER [REF: > posts.id]
}

TABLE photo_tags {
  id SERIAL [PK,INCREMENT]
  created_at timestamp
  upsated_at timestamp
  post_id INTEGER [REF: > posts.id]
  user_id INTEGER [REF: > users.id]
  X integer
  Y integer
}

TABLE hashtags {
  id SERIAL [PK,INCREMENT]
  created_at timestamp
  title VARCHAR(20)

}

TABLE hashtags_posts {
  id SERIAL [PK,INCREMENT]
  created_at TIMESTAMP
  hastag_id INTEGER [REF: > hashtags.id]

}

TABLE followers {
  id SERIAL [PK,INCREMENT]
  created_at timestamp
  leader_id INTEAGER [REF: > users.id]
  follower_id INTEGER [REF : > users.id]
} 
