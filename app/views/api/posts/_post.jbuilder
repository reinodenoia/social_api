json.post do
  json.id post.id
  json.text post.text
  json.publication_date post.publication_date
  json.likes_count post.likes_count
end