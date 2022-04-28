CREATE TABLE `transfer_requests` (
    `id`               int(11) NOT NULL AUTO_INCREMENT,
    `created_at`       bigint(20) DEFAULT NULL,
    `updated_at`       bigint(20) DEFAULT NULL,
    `deleted_at`       bigint(20) DEFAULT NULL,
    `subscribers`      json DEFAULT NULL,
    `directors`        json DEFAULT NULL,
    `extra_data`       json DEFAULT NULL,
    `company_id`       int(11) DEFAULT NULL,
    `date_of_transfer` date DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `company_id` (`company_id`),
    CONSTRAINT `transfer_requests_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`)
);
