INSERT INTO signature_spots
(markdown_template_version,
 code,
 expected_signer)
VALUES (
           -- Share purchase agreement
           'v1_share_transfer_request_spa',
           'WsBQD86pyMqPHYQ8',
           'buyer'),
       (
           -- Share purchase agreement
           'v1_share_transfer_request_spa',
           'YzP0384CacK7auSK',
           'seller'),
       (
           -- Share purchase agreement
           'v1_share_transfer_request_spa',
           '6oN9cFUTcvgHIwOV',
           'any_director'),
       (
           -- Letter of resignation (director)
           'v1_share_transfer_letter_of_resig',
           '1y81w0DgRIYp89lN',
           'director'),
       (
           -- Notice of termination
           'v1_share_transfer_notice_of_term',
           'lRhjwGDvKfB0bYIp',
           'signatory'),
       (
           -- Notice of termination
           'v1_share_transfer_notice_of_term',
           'bvDO2L3NqwyTG3iv',
           'director'),
       (
           -- Share transfer share certificate
           'v1_share_transfer_share_cert',
           'kAUBYaBcrL2bFKq3',
           'any_director'),
       (
           -- Share transfer share certificate
           'v1_share_transfer_share_cert',
           'h9UwVMGDpKLMUqoa',
           'any_director')
;
