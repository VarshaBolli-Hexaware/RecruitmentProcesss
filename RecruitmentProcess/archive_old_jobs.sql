--Archive old jobs
CREATE TABLE JobArchive AS SELECT * FROM Jobs WHERE 1=0;

CREATE OR REPLACE PROCEDURE ArchiveOldJobs (
    p_DaysOld IN NUMBER
) IS
BEGIN
    INSERT INTO JobArchive
    SELECT * FROM Jobs
    WHERE PostedDate < SYSDATE - p_DaysOld;

    DELETE FROM Jobs
    WHERE PostedDate < SYSDATE - p_DaysOld;

    DBMS_OUTPUT.PUT_LINE('Old jobs archived successfully.');
END;
/

BEGIN
    ArchiveOldJobs(30); -- Archive jobs older than 30 days
END;
/

