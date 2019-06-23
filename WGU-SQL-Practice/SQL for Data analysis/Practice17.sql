CREATE TABLE wigetInventory (
    id SERIAL,
    description VARCHAR(255),
    onhand INTEGER NOT NULL
);

CREATE TABLE widgetSales (
    id SERIAL,
    inv_id INTEGER,
    quan INTEGER,
    
)