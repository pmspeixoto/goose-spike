UPDATE accounts_receivables, property_purchases_accounts_receivable
SET accounts_receivables.property_purchase_id = property_purchases_accounts_receivable.property_purchase_id
WHERE accounts_receivables.id = property_purchases_accounts_receivable.account_receivable_id;