CREATE TABLE MYT (
    myt_id INT,
    email VARCHAR(100),
    CONSTRAINT pk_myt PRIMARY KEY (myt_id) USING INDEX (CREATE INDEX idx_myt_id ON myt(myt_id))
);

CREATE TABLE myt2 (
    myt2_id INT PRIMARY KEY,
    email VARCHAR(100),
    phone_number VARCHAR(15),
    CONSTRAINT uq_email UNIQUE (email) USING INDEX (CREATE INDEX idx_email ON myt2(email)),
    CONSTRAINT uq_phone UNIQUE (phone_number) USING INDEX (CREATE INDEX idx_phone_number ON myt2(phone_number))
);