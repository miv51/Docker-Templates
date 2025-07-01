
CREATE TABLE transactions (
    id SERIAL PRIMARY KEY, -- Auto-incrementing unique ID, good practice for any table
    usd_spent INTEGER NOT NULL CHECK (usd_spent >= 0), -- Non-negative integers
    category VARCHAR(256) NOT NULL, -- Up to 256 Unicode characters
    transaction_date DATE NOT NULL -- Stores date, allows month/year extraction
);
