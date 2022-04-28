ALTER TABLE users
  ADD COLUMN receives_marketing BOOLEAN DEFAULT false,
  ADD COLUMN last_page_visited VARCHAR(255);
