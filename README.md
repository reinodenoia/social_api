# README
There is a hypothetical mobile app that needs the following functionality:

 • Display a list of posts
 • User can like a post
 • User can remove his like from a post
 • Display "heart" icon if a post has been liked by a current user
 • Display number of likes that a post has
 • Display "text" and "publication date" of a post

The mobile app needs an HTTP JSON API to read and write data. design and implement the API. You can use either Ruby on Rails or Sinatra web framework.

Request:

`GET /api/posts`

Response: Post Array
````
[
  {
    id: 1,
    text: 'A description',
    publication_date: '2023-01-01 08:00',
    likes_count: 10,
  } ... 
]
````

Request:

`GET /api/likes`

Response: Likes Array

```
[
  {
    id: 1,
    user_id: 1,
    post_id: 1
  }
]
```

Request: 

`POST /api/posts/:post_id/like`

Response: Post object

```
  {
    id: 1,
    text: 'A description',
    publication_date: '2023-01-01 08:00',
    likes_count: 10,
  }
```

Request:

`POST /api/posts/:post_id/dislike`

Response: Post object

```
  {
    id: 1,
    text: 'A description',
    publication_date: '2023-01-01 08:00',
    likes_count: 10,
  }
```
