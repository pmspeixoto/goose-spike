DELETE
FROM signature_spots
WHERE markdown_template_version IN (
    'v1_change_request_written_resolution'
    );
