-- +goose Up
-- +goose StatementBegin
CREATE TABLE analytics_users( 
   id			                INT NOT NULL,
 	signed_up_at		        bigint(20),
 	2fa_set_up_at		        bigint(20),
 	completed_onboarding_at	bigint(20),
 	skipped_kyc_at		      bigint(20),
   PRIMARY KEY (id)
 );

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE IF EXISTS analytics_users;

-- +goose StatementEnd
