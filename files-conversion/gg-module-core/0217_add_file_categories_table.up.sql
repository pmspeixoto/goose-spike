CREATE TABLE file_categories (
    `id`                BIGINT AUTO_INCREMENT,
    `category`          VARCHAR(255) NOT NULL,
    `label`             VARCHAR(255) NOT NULL,
    `category_group`    VARCHAR(255) NULL,
    PRIMARY KEY (`id`),
    UNIQUE (`category`)
);