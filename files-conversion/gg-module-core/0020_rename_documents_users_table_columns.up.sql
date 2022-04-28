ALTER TABLE documents_users
  CHANGE createdAt created_at BIGINT,
  CHANGE updatedAt updated_at BIGINT,
  CHANGE deletedAt deleted_at BIGINT; 
