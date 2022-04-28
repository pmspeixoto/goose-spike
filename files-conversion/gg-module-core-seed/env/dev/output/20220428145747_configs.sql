-- +goose Up
-- +goose StatementBegin
INSERT INTO
   configs (config_key, config_value, description)
 VALUES
   (
     'ACCOUNTS_SUBMISSION_LEAD_TIME_IN_DAYS',
     '243',
     'Accounts submission lead time in days.'
   ),
   (
     'CURRENCYCLOUD_TERMS_OF_USE_UK_LOCATION',
     'Terms-of-Use-UK-CC-Ltd-1-Oct-20.pdf',
     null
   ),
   (
     'CURRENCYCLOUD_TERMS_OF_USE_US_LOCATION',
     'Terms-of-Use-US-CC-Inc-1-Oct-20.pdf',
     null
   ),
   (
     'DEFAULT_ACCOUNT_PROVIDER',
     'MODULR',
     'PFS or MODULR'
   ),
   (
     'GET_GROUND_EMAIL_ADDRESS',
     'gj.leow@getground.co.uk',
     'The GetGround email address.'
   ),
   (
     'GET_GROUND_EMAIL_NAME',
     'GetGround',
     'The GetGround email name.'
   ),
   (
     'GET_GROUND_HELP_EMAIL_ADDRESS',
     'qa@getground.co.uk',
     'GetGround help email address.'
   ),
   (
     'GET_GROUND_OPS_EMAIL_ADDRESS',
     'ancuta.brindusan@getground.co.uk',
     'The GetGround Ops email address.'
   ),
   (
     'GET_GROUND_OPS_EMAIL_NAME',
     'GetGround Operations Team',
     'The GetGround Ops email name.'
   ),
   (
     'GET_GROUND_SOLICITOR_OPS_EMAIL_ADDRESS',
     'gj.leow@getground.co.uk',
     null
   ),
   (
     'MODULR_KYB_EMAIL_ADDRESS',
     'qa@getground.co.uk',
     'The Modulr KYB email address.'
   ),
   (
     'MODULR_KYB_EMAIL_NAME',
     'Modulr KYB Team',
     'The Modulr KYB email name.'
   ),
   (
     'PARTNER_TYPES',
     'IFA,Insurer,Management company,Lender,Solicitor,Agent,Developer,Influencer',
     'A list of comma-separated partner types.'
   ),
   (
     'PFS_KYB_EMAIL_ADDRESS',
     'qa@getground.co.uk',
     'The PFS KYB email address.'
   ),
   (
     'PFS_KYB_EMAIL_NAME',
     'PFS KYB Team',
     'The PFS KYB email name.'
   ),
   (
     'REFERRAL_LINK_BASE_URL',
     'https://staging-app.getground.co.uk/invite',
     'Base URL for referral links.'
   ),
   (
     'REGULATED_TRANSFER_QUESTIONNAIRE',
     'https://www.youtube.com/watch?v=dQw4w9WgXcQ',
     null
   ),
   ('signature_resize_checkpoint', '14791', null),
   (
     'sms_provider',
     'twilio',
     'The SMS provider to be used for 2FA'
   ),
   (
     'SOURCE_OF_FUNDS',
     'Savings,Sale of a property,Investment,Personal loan,Inheritance,Other',
     null
   ),
   (
     'USE_DIRECT_INCORPORATION',
     'true',
     'If true all property purchases will use direct incorporation by default.'
   );

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin

-- +goose StatementEnd
