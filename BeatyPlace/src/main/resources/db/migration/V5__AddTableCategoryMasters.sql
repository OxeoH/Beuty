CREATE TABLE category_master
(
    category_id BIGINT NOT NULL,
    master_id   BIGINT NOT NULL,
    PRIMARY KEY (category_id, master_id),
    FOREIGN KEY (category_id) REFERENCES categories (id) ON DELETE CASCADE,
    FOREIGN KEY (master_id) REFERENCES users (id) ON DELETE CASCADE
);
