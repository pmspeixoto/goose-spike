ALTER TABLE documents_users
  CHANGE created_at createdAt BIGINT,
  CHANGE updated_at updatedAt BIGINT,
  CHANGE deleted_at deletedAt BIGINT; 
