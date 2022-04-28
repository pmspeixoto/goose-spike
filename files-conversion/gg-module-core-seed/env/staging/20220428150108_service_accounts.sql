-- +goose Up
-- +goose StatementBegin
INSERT INTO service_accounts
(
    email
)
VALUES
('cloud-scheduler@terranova-qa-module-core.iam.gserviceaccount.com'),
('wallet-service@terranova-qa-module-core.iam.gserviceaccount.com'),
('core-service@terranova-qa-module-core.iam.gserviceaccount.com');

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin

-- +goose StatementEnd
