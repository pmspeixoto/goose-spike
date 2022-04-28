CREATE TABLE change_property_details_requests (
   id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
   created_at DATETIME NOT NULL,
   updated_at DATETIME NOT NULL,
   deleted_at DATETIME NULL,
   user_id INT NOT NULL,
   property_purchase_id INT NOT NULL,
   request TEXT NOT NULL,

   FOREIGN KEY (user_id) REFERENCES users(id),
   FOREIGN KEY (property_purchase_id) REFERENCES property_purchases(id)
);
