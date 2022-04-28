-- +goose Up
-- +goose StatementBegin
INSERT INTO file_categories (category, label, category_group)
 VALUES
     ('PROPERTY_PURCHASE_CONTRACT','Property purchase contract','accounting'),
     ('RESERVATION_FEE','Reservation fee','accounting'),
     ('DEPOSIT','Deposit','accounting'),
     ('COMPLETION_STATEMENT','Completion statement','accounting'),
     ('MORTGAGE_STATEMENT','Mortgage statement','accounting'),
     ('OFFER_LETTER','Offer letter','accounting'),
     ('REFINANCE_MORTGAGE_STATEMENTS','Refinance mortgage statements','accounting'),
     ('RENTAL_STATEMENT','Rental statement','accounting'),
     ('MANAGEMENT_LETTING_AGREEMENT','Management letting agreement','accounting'),
     ('INCORPORATION_DOCUMENTS','Incorporation documents', NULL),
     ('LEAVING_GETGROUND','Leaving GetGround',NULL),
     ('GETGROUND_RECEIPTS','GetGround receipts',NULL),
     ('SECRETARIAL_DOCUMENTS','Secretarial documents',NULL),
     ('EXPENSES','Expenses',NULL),
     ('END_OF_YEAR_ACCOUNTS','End of year Accounts',NULL),
     ('END_OF_YEAR_TAX_RETURNS','End of year Tax Returns',NULL),
     ('POST','Post',NULL),
     ('PROPERTY_PURCHASE_DOCUMENTS','Property purchase documents',NULL),
     ('PROPERTY_MORTGAGE_DOCUMENTS','Property mortgage documents',NULL),
     ('PROPERTY_RENTAL_DOCUMENTS','Property rental documents',NULL),
     ('MISCELLANEOUS','Miscellaneous',NULL);
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DELETE FROM file_categories WHERE category IN
     ('PROPERTY_PURCHASE_CONTRACT',
     'RESERVATION_FEE',
     'DEPOSIT',
     'COMPLETION_STATEMENT',
     'MORTGAGE_STATEMENT',
     'OFFER_LETTER',
     'REFINANCE_MORTGAGE_STATEMENTS',
     'RENTAL_STATEMENT',
     'MANAGEMENT_LETTING_AGREEMENT');
-- +goose StatementEnd
