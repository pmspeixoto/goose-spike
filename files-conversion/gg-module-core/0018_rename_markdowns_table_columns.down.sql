ALTER TABLE markdowns
  CHANGE created_at createdAt BIGINT,
  CHANGE updated_at updatedAt BIGINT,
  CHANGE deleted_at deletedAt BIGINT; 
