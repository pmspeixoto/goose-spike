-- +goose Up
-- +goose StatementBegin
CREATE TABLE consent (
     `consent_type` varchar(50) NOT NULL,
     `company_id` int(11) NOT NULL,
     `user_id` int(11) NOT NULL,
     `accepted_at` bigint(20) DEFAULT NULL,
     `created_at` bigint(20) DEFAULT NULL,
     `updated_at` bigint(20) DEFAULT NULL,
     PRIMARY KEY (`company_id`,`user_id`, `consent_type`),
     CONSTRAINT FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
     CONSTRAINT FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
 );
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE consent;
-- +goose StatementEnd
