ALTER TABLE files
    ADD CONSTRAINT files_ibfk_1
        FOREIGN KEY (creator) REFERENCES users(id);