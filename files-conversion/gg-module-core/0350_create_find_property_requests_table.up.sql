CREATE TABLE find_property_requests (
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  created_at DATETIME NOT NULL,
  user_id INT NOT NULL,
  areas_of_interest TEXT NOT NULL,
  other_information TEXT,
  open_to_new_developments BOOLEAN NOT NULL DEFAULT 0,

  FOREIGN KEY (user_id) REFERENCES users(id)
);
