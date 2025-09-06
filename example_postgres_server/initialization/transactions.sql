
CREATE TABLE transactions (
    id SERIAL PRIMARY KEY, -- Auto-incrementing unique ID, good practice for any table
    usd_spent INTEGER NOT NULL CHECK (usd_spent >= 0), -- Non-negative integers
    category INTEGER NOT NULL CHECK (category >= 0), -- Non-negative integers
    transaction_date DATE NOT NULL -- Stores date, allows month/year extraction
);

CREATE TABLE categories (
    id SERIAL PRIMARY KEY, -- Auto-incrementing unique ID, good practice for any table
    name VARCHAR(256) NOT NULL UNIQUE -- Up to 256 Unicode characters
);
