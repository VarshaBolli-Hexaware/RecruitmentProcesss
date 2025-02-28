-- onboarding workflow

CREATE OR REPLACE PROCEDURE onboarding_workflow AS
    v_status VARCHAR2(4000);  -- Variable to hold the status message

BEGIN

	automate_onboarding;
	
	feedback_post_onb;
	
	feedback_postonboard;
	
	fetch_onboard_data for_hr;
	
	oboarding;
	
	pending_onboard_reminders;
    

END onboarding_workflow;
/