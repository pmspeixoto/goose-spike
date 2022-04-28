DELETE
FROM signature_spots
WHERE markdown_template_version IN (
                                    'v1_share_transfer_request_spa',
                                    'v1_share_transfer_letter_of_resig',
                                    'v1_share_transfer_notice_of_term',
                                    'v1_share_transfer_share_cert'
    );
