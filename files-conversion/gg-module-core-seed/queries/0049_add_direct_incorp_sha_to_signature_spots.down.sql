DELETE
FROM signature_spots
WHERE markdown_template_version IN
      (
       'v1_direct_incorp_sha_jv',
       'v1_direct_incorp_sha_sole'
      )
;
