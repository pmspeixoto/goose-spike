ALTER TABLE accounts_receivables
    ADD CONSTRAINT fk_accounts_receivables_transactions
    FOREIGN KEY (transaction_id)
    REFERENCES transactions(id);