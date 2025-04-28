BEGIN
    -- Drop tables
    FOR t IN (SELECT table_name FROM user_tables) LOOP
        EXECUTE IMMEDIATE 'DROP TABLE "' || t.table_name || '" CASCADE CONSTRAINTS';
    END LOOP;

    -- Drop views
    FOR v IN (SELECT view_name FROM user_views) LOOP
        EXECUTE IMMEDIATE 'DROP VIEW "' || v.view_name || '"';
    END LOOP;

    -- Drop indexes (not on tables, because they get dropped with tables)
    FOR i IN (SELECT index_name FROM user_indexes WHERE table_name IS NULL) LOOP
        EXECUTE IMMEDIATE 'DROP INDEX "' || i.index_name || '"';
    END LOOP;

    -- Drop sequences
    FOR s IN (SELECT sequence_name FROM user_sequences) LOOP
        EXECUTE IMMEDIATE 'DROP SEQUENCE "' || s.sequence_name || '"';
    END LOOP;
END;
/
