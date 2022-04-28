update companies
  set registered_address = 5 -- 1 Lyric Square, London, W6 0NB
  where registration_number in (
    11696497, -- incorpco
    12024804  -- secretary
  );
