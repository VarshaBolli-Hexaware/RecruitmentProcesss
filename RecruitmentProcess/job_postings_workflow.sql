-- jobpostings workflow

CREATE OR REPLACE PROCEDURE job_postings_workflow AS
    v_status VARCHAR2(4000);  -- Variable to hold the status message

BEGIN

	-- call jobs and jobpostings modeules

	-- allows a candidate to apply for a specific job posting, updates job status, retrieves all info of candidates applied to jobs
    apply_for_job;
    DBMS_OUTPUT.PUT_LINE('called apply_for_job.');
	
	-- archieves old jobs
    archive_old_jobs;
    DBMS_OUTPUT.PUT_LINE('called archive_old_jobs.');
	
	-- Exports job details to a file using UTL_file
    expot_job_details;
    DBMS_OUTPUT.PUT_LINE('called expot_job_details.');
	
	-- Generate reports to analyze candidate applications and job postings.
    generate_cand_reports;
    DBMS_OUTPUT.PUT_LINE('reports to analyze candidate applications and job postings..');
	
	-- Displays jobs by department
    get_job_count;
    DBMS_OUTPUT.PUT_LINE('Displays jobs by department.');
	
	-- Displays jobs by status, age
    get_jobcount_by_status_age;
    DBMS_OUTPUT.PUT_LINE('Displays jobs by status, age.');
	
	-- Create/update/delete/view jobs
    job_postings;
    DBMS_OUTPUT.PUT_LINE('Create/update/delete/view jobs.');
	
	-- log every job posting into an audit table
    job_postings_audit_log;
    DBMS_OUTPUT.PUT_LINE('og every job posting into an audit table.');
	
	-- print all job postings grouped by their status (e.g., Open, Closed) using nested loops
    job_postings_with_status;
    DBMS_OUTPUT.PUT_LINE('ob postings grouped by their status.');
	
	-- Search jobs by Title
    search_jobs_by_title;
    DBMS_OUTPUT.PUT_LINE('Search jobs by Title.');
	
	-- automatically update the Status column of the Jobs table when a job is marked as "Closed."
    update_status_on_job_closure;
    DBMS_OUTPUT.PUT_LINE('updated the Status column of the Jobs table when a job is marked as "Closed."');
	   
END job_postings_workflow;
/