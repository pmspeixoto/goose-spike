-- +goose Up
-- +goose StatementBegin
CREATE TABLE reminder_emails (
     `user_id` INT NOT NULL,
     `flow_name` VARCHAR(64) NOT NULL,
     `flow_id` INT NOT NULL,
     `company_id` INT NULL,
     `num_emails_sent` INT NOT NULL,
     `last_sent_at` DATETIME NULL,
     `all_emails_sent_at` DATETIME NULL,
     `created_at` DATETIME NOT NULL,
     `updated_at` DATETIME NOT NULL,
     `completed_at` DATETIME NULL,
     PRIMARY KEY(`user_id`, `flow_name`, `flow_id`),
     FOREIGN KEY (`company_id`) REFERENCES companies(`id`)
 );

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE reminder_emails;

-- +goose StatementEnd
