CREATE TABLE net_promoter_scores (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    created_at DATETIME NOT NULL,
    user_id INT NOT NULL,
    score INT NOT NULL,
    step VARCHAR(255) NOT NULL,
    additional_notes TEXT NULL
);
