CREATE TABLE `withdrawals` (
    `id`               int(11) NOT NULL AUTO_INCREMENT,
    `reference`        varchar(255) NOT NULL,
    `amount`           varchar(255) NOT NULL,
    `status`           varchar(255) NOT NULL,
    `created_at`       bigint(20) NOT NULL,
    `updated_at`       bigint(20) NOT NULL,
    `company_id`       int(11) NOT NULL,
    `account_provider` varchar(255) NOT NULL,
    `account_id`       varchar(255) NOT NULL,
    `payment_id`       varchar(255) NOT NULL,
    PRIMARY KEY (`id`),
    KEY `company_id` (`company_id`,`status`)
);
