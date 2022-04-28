-- +goose Up
-- +goose StatementBegin
CREATE TABLE analytics_property_purchases( 
   id			          INT NOT NULL,
 	started_at		    bigint(20),
 	confirmed_at		  bigint(20),
   signup_paid_at    bigint(20),
 	all_onboarded_at	bigint(20),
 	all_accepted_at	  bigint(20),
 	all_signed_at		  bigint(20),
   approved_at       bigint(20),
   kyb_submitted_at  bigint(20),
   account_active_at bigint(20),
   PRIMARY KEY (id)
 );

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE IF EXISTS analytics_property_purchases;

-- +goose StatementEnd
