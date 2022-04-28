ALTER TABLE accounts_receivables 
   DROP INDEX UQ_Accounts_Receivable, 
   ADD UNIQUE KEY `UQ_Accounts_Receivable` (`amount`,`currency`,`reference`,`due_date`,`deleted_at`);
