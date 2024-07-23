insert into posts (title, content, is_published) 
  values 
   ('First post', 'This is my first post.', true),
   ('Second post', 'This is my second post.', false),
   ('Third post', 'This is my third post.', true);

insert into comments (content, post_id) 
  values 
   ('First comment', ( select id from posts where title = 'First post')),
   ('Second comment', ( select id from posts where title = 'First post')),
   ('Third comment', ( select id from posts where title = 'Second post'));
  