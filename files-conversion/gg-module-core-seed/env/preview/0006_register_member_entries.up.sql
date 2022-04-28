INSERT INTO
  register_member_entries (
    id,
    created_at,
    updated_at,
    company_id,
    corporate_subscriber_id,
    natural_subscriber_id,
    share_class,
    denomination,
    date_of_entry,
    balance,
    date_became_registrable
  )
VALUES
  (
    1,
    1547433117209393317,
    1547433117209393317,
    1,
    NULL,
    2,
    'Ordinary',
    1,
    '2018-03-26',
    5000,
    '2018-03-26'
  ),
  (
    2,
    1547433117209393317,
    1547433117209393317,
    1,
    NULL,
    1,
    'Ordinary',
    1,
    '2018-03-26',
    5000,
    '2018-03-26'
  ),
  (
    3,
    1547433117209393317,
    1547433117209393317,
    2,
    1,
    NULL,
    'Ordinary',
    1,
    '2018-11-26',
    1,
    '2018-11-26'
  ),
  (
    4,
    1547433117209393317,
    1547433117209393317,
    3,
    1,
    NULL,
    'Ordinary',
    1,
    '2018-11-26',
    1,
    '2018-11-26'
  );


-- *************************** 1. row ***************************
--                      id: 1
--               createdAt: 1547433117209393317
--               updatedAt: 1547433117209393317
--               deletedAt: NULL
--              company_id: 1
-- corporate_subscriber_id: NULL
--   natural_subscriber_id: 2
--             share_class: Ordinary
--            denomination: 1
--           date_of_entry: 2018-03-26
--         date_of_ceasing: NULL
--                 balance: 5000
-- date_became_registrable: 2018-03-26
-- *************************** 2. row ***************************
--                      id: 2
--               createdAt: 1547433117226347321
--               updatedAt: 1547433117226347321
--               deletedAt: NULL
--              company_id: 1
-- corporate_subscriber_id: NULL
--   natural_subscriber_id: 1
--             share_class: Ordinary
--            denomination: 1
--           date_of_entry: 2018-03-26
--         date_of_ceasing: NULL
--                 balance: 5000
-- date_became_registrable: 2018-03-26
-- *************************** 3. row ***************************
--                      id: 3
--               createdAt: 1547433117242371227
--               updatedAt: 1547433117242371227
--               deletedAt: NULL
--              company_id: 2
-- corporate_subscriber_id: 1
--   natural_subscriber_id: NULL
--             share_class: Ordinary
--            denomination: 1
--           date_of_entry: 2018-11-26
--         date_of_ceasing: NULL
--                 balance: 1
-- date_became_registrable: 2018-11-26
-- *************************** 4. row ***************************
--                      id: 4
--               createdAt: 1547433117258753804
--               updatedAt: 1547433117258753804
--               deletedAt: NULL
--              company_id: 3
-- corporate_subscriber_id: 1
--   natural_subscriber_id: NULL
--             share_class: Ordinary
--            denomination: 1
--           date_of_entry: 2018-11-26
--         date_of_ceasing: NULL
--                 balance: 1
-- date_became_registrable: 2018-11-26
