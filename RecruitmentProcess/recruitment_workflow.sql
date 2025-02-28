--Recruitment Workflow

CREATE OR REPLACE PROCEDURE recruitment_process_workflow AS
    v_status VARCHAR2(4000);  -- Variable to hold the status message

BEGIN

	-- call jobs and jobpostings modeules
    job_postings_workflow;
    DBMS_OUTPUT.PUT_LINE('called jobpostings.');
	
	-- call Candidate modeules
    candidates_workflow;
    DBMS_OUTPUT.PUT_LINE('called Candidate.');
	
	-- call Interview modeules
    interviews_workflow;
    DBMS_OUTPUT.PUT_LINE('called Interview.');
	
	-- call Offers modeules
    offers_workflow;
    DBMS_OUTPUT.PUT_LINE('called Offers.');
	
	-- call Onboarding modeules
    onboarding_workflow;
    DBMS_OUTPUT.PUT_LINE('called Onboarding.');

END recruitment_process_workflow;
/