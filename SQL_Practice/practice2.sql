CREATE TABLE first_Table_like_hobbits (
    id     INTEGER    PRIMARY KEY AUTOINCREMENT,
    name   TEXT (128) CONSTRAINT uq_hobbits_name UNIQUE ON CONFLICT FAIL
                      NOT NULL ON CONFLICT FAIL,
    female BOOLEAN
);
