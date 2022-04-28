-- +goose Up
-- +goose StatementBegin
UPDATE 
   countries
 SET has_posttowns = FALSE 
 WHERE
   id IN (
 		98,  -- Vatican
 		100, -- Hong Kong
 		131, -- Macao
 		147, -- Monaco
 		200 -- Singapore
 	);
 

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
UPDATE
   countries
 SET has_posttowns = TRUE;
 

-- +goose StatementEnd
