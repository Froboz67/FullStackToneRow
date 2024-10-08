-- ********************************************************************************
-- This script creates the database users and grants them the necessary permissions
-- ********************************************************************************

CREATE USER tonerow_capstone_owner
WITH PASSWORD 'schoenberg';

GRANT ALL
ON ALL TABLES IN SCHEMA public
TO tonerow_capstone_owner;

GRANT ALL
ON ALL SEQUENCES IN SCHEMA public
TO tonerow_capstone_owner;

CREATE USER tonerow_capstone_appuser
WITH PASSWORD 'schoenberg';

GRANT SELECT, INSERT, UPDATE, DELETE
ON ALL TABLES IN SCHEMA public
TO tonerow_capstone_appuser;

GRANT USAGE, SELECT
ON ALL SEQUENCES IN SCHEMA public
TO tonerow_capstone_appuser;
