-- +goose Up
-- +goose StatementBegin
ALTER TABLE `codac_saved_filters`
     CHANGE `user_id` `employee_id` INT NOT NULL,
     DROP FOREIGN KEY codac_saved_filters_ibfk_1,
     ADD FOREIGN KEY (employee_id) REFERENCES employees(id)
 ;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE `codac_saved_filters`
     CHANGE `employee_id` `user_id` INT NOT NULL,
     DROP FOREIGN KEY codac_saved_filters_ibfk_2,
     ADD FOREIGN KEY (user_id) REFERENCES users(id)
 ;

-- +goose StatementEnd
