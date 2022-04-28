-- +goose Up
-- +goose StatementBegin
CREATE TABLE partners_restricted_services (
    partner_id INT NOT NULL,
    restricted_service_id INT NOT NULL,
    PRIMARY KEY (partner_id, restricted_service_id),
    FOREIGN KEY (partner_id) REFERENCES partners(id),
    FOREIGN KEY (restricted_service_id) REFERENCES restricted_services(id)
);
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE partners_restricted_services;
-- +goose StatementEnd