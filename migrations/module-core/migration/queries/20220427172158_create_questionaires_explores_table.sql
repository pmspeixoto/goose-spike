-- +goose Up
-- +goose StatementBegin
CREATE TABLE questionaires_explores (
   id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
   created_at DATETIME NOT NULL,
   user_id INT NOT NULL,
   tax_bracket_above_50k BOOLEAN NOT NULL DEFAULT 0,
   plan_to_have_kids BOOLEAN NOT NULL DEFAULT 0,
   plan_to_sell_within_5yr BOOLEAN NOT NULL DEFAULT 0,
   more_properties_over_next_10yr BOOLEAN NOT NULL DEFAULT 0,
   investing_with_others BOOLEAN NOT NULL DEFAULT 0,
   using_mortgage BOOLEAN NOT NULL DEFAULT 0,
 
   FOREIGN KEY (user_id) REFERENCES users(id)
 );

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE questionaires_explores;

-- +goose StatementEnd
