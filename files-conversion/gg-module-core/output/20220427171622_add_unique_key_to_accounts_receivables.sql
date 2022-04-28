-- +goose Up
-- +goose StatementBegin
ALTER TABLE accounts_receivables 
    DROP INDEX UQ_Accounts_Receivable, 
    ADD UNIQUE KEY `UQ_Accounts_Receivable` (`amount`,`currency`,`reference`,`due_date`,`deleted_at`);

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE accounts_receivables 
    DROP INDEX UQ_Accounts_Receivable, 
    ADD UNIQUE KEY `UQ_Accounts_Receivable` (`amount`,`currency`,`reference`,`due_date`);

-- +goose StatementEnd
