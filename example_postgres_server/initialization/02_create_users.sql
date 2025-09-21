
-- Create the application user with a strong password
CREATE USER app_user WITH PASSWORD 'app_secure_password';

-- Explicitly grant SELECT (read) and INSERT (write/append) privileges
GRANT SELECT, INSERT ON TABLE transactions TO app_user;
GRANT SELECT, INSERT ON TABLE categories TO app_user;

-- Also grant usage on the sequences so the user can insert rows with SERIAL primary keys
GRANT USAGE ON SEQUENCE transactions_id_seq TO app_user;
GRANT USAGE ON SEQUENCE categories_id_seq TO app_user;

-- Create the read-only user for data analysis
CREATE USER readonly_user WITH PASSWORD 'readonly_secure_password';

-- Explicitly grant only SELECT (read) privileges
GRANT SELECT ON TABLE transactions TO readonly_user;
GRANT SELECT ON TABLE categories TO readonly_user;
