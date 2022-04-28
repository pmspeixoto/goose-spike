DELETE FROM signature_spots
WHERE
  markdown_template_version IN
(
	'v1_direct_incorp_resolutions_sole',
	'v1_direct_incorp_resolutions_jv');
