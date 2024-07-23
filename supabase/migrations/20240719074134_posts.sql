-- Create the posts table
CREATE TABLE posts (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  title TEXT NOT NULL,
  content TEXT,
  is_published BOOLEAN NOT NULL DEFAULT FALSE
);

-- Enable Row Level Security (RLS) on the posts table
ALTER TABLE posts ENABLE ROW LEVEL SECURITY;

-- Create a policy to allow read access to all rows for all users
CREATE POLICY "Allow read access to posts"
  ON posts
  FOR SELECT
  USING (true);
