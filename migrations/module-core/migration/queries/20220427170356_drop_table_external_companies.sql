-- +goose Up
-- +goose StatementBegin
DROP TABLE external_companies;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
CREATE TABLE `external_companies` (
     `id` int(11) NOT NULL AUTO_INCREMENT,
     `created_at` bigint(20) DEFAULT NULL,
     `updated_at` bigint(20) DEFAULT NULL,
     `deleted_at` bigint(20) DEFAULT NULL,
     `company_name` varchar(255) DEFAULT NULL,
     `registration_number` varchar(255) DEFAULT NULL,
     `registered_address` int(11) DEFAULT NULL,
     `country_of_registration_id` int(11) DEFAULT NULL,
     `register_used` varchar(255) DEFAULT NULL,
     `legal_form` varchar(255) DEFAULT NULL,
     `governing_law` varchar(255) DEFAULT NULL,
     PRIMARY KEY (`id`),
     KEY `registered_address` (`registered_address`),
     KEY `country_of_registration_id` (`country_of_registration_id`),
     CONSTRAINT `external_companies_ibfk_1` FOREIGN KEY (`registered_address`) REFERENCES `addresses` (`id`) ON DELETE CASCADE,
     CONSTRAINT `external_companies_ibfk_2` FOREIGN KEY (`country_of_registration_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE
 );

-- +goose StatementEnd
