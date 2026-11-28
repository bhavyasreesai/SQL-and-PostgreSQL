TABLE users {
  id SERIAL [PK,INCREMENT]
  created_at timestamp
  updated_at timestamp
  username VARCHAR (30)
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
}
