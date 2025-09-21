
-- Create a user that the application service will use
CREATE USER application_service WITH PASSWORD 'password';

-- Explicitly grant SELECT (read) and INSERT (write/append) privileges to the application service user
GRANT SELECT, INSERT ON TABLE transactions TO application_service; -- can include DELETE depending on the application
GRANT SELECT, INSERT ON TABLE categories TO application_service; -- can include DELETE depending on the application

-- Grant usage on the sequences so the user can insert rows with SERIAL primary keys
-- Without this, inserting into tables with automatically-updated rows like transactions.id would fail
GRANT USAGE ON SEQUENCE transactions_id_seq TO app_user;
GRANT USAGE ON SEQUENCE categories_id_seq TO app_user;

-- Create the read-only user for data analysis
CREATE USER read_only WITH PASSWORD 'password';

-- Explicitly grant only SELECT (read) privileges
GRANT SELECT ON TABLE transactions TO read_only;
GRANT SELECT ON TABLE categories TO read_only;
