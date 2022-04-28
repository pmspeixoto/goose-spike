ALTER TABLE `codac_saved_filters`
    CHANGE `employee_id` `user_id` INT NOT NULL,
    DROP FOREIGN KEY codac_saved_filters_ibfk_2,
    ADD FOREIGN KEY (user_id) REFERENCES users(id)
;
