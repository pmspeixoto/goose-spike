ALTER TABLE `codac_saved_filters`
    CHANGE `user_id` `employee_id` INT NOT NULL,
    DROP FOREIGN KEY codac_saved_filters_ibfk_1,
    ADD FOREIGN KEY (employee_id) REFERENCES employees(id)
;
