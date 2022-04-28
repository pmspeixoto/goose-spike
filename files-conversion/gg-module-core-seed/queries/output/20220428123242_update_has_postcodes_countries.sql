-- +goose Up
-- +goose StatementBegin
UPDATE
   countries
 SET has_postcodes = FALSE 
 WHERE
   id NOT IN (
 		4,   -- Algeria
 		11,  -- Argentina
 		12,  -- Armenia
 		14,  -- Australia
 		15,  -- Austria
 		16,  -- Azerbaijan
 		19,  -- Bangladesh
 		21,  -- Belarus
 		22,  -- Belgium
 		29,  -- Bosnia and Herzegovina
 		31,  -- Brazil
 		34,  -- Brunei Darussalam
 		35,  -- Bulgaria
 		41,  -- Canada
 		46,  -- China
 		56,  -- Croatia
 		59,  -- Cyprus
 		60,  -- Czech Republic
 		61,  -- Denmark
 		70,  -- Estonia
 		73,  -- Faroe Islands
 		75,  -- Finland
 		76,  -- France
 		82,  -- Georgia
 		83,  -- Germany
 		86,  -- Greece
 		87,  -- Greenland
 		90,  -- Guam
 		92,  -- Guernsey
 		98,  -- Vatican City State
 		101, -- Hungary
 		103, -- India
 		104, -- Indonesia
 		109, -- Israel
 		110, -- Italy
 		112, -- Japan
 		113, -- Jersey
 		115, -- Kazakhstan
 		119, -- Korea (Republic of)
 		121, -- Kyrgyzstan
 		123, -- Latvia
 		128, -- Liechtenstein
 		129, -- Lithuania
 		130, -- Luxembourg
 		132, -- Macedonia (the former Yugoslav Republic of)
 		133, -- Madagascar
 		135, -- Malaysia
 		139, -- Marshall Islands
 		140, -- Martinique
 		143, -- Mayotte
 		144, -- Mexico
 		148, -- Mongolia
 		149, -- Montenegro
 		157, -- Netherlands
 		159, -- New Zealand
 		166, -- Norway
 		168, -- Pakistan
 		175, -- Philippines
 		177, -- Poland
 		178, -- Portugal
 		179, -- Puerto Rico
 		181, -- Réunion
 		183, -- Russian Federation
 		195, -- Saudi Arabia
 		200, -- Singapore
 		203, -- Slovenia
 		206, -- South Africa
 		209, -- Spain
 		210, -- Sri Lanka
 		215, -- Sweden
 		216, -- Switzerland
 		218, -- Taiwan
 		219, -- Tajikistan
 		221, -- Thailand
 		227, -- Tunisia
 		228, -- Turkey
 		229, -- Turkmenistan
 		233, -- Ukraine
 		235, -- United Kingdom of Great Britain and Northern Ireland
 		237, -- United States of America
 		238, -- Uruguay
 		239, -- Uzbekistan
 		242, -- Vietnam
 		244  -- Virgin Islands (U.S.)
 	); 
 

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
UPDATE
   countries
 SET has_postcodes = TRUE;

-- +goose StatementEnd
