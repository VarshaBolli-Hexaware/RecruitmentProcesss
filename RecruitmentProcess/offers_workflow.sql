-- offers workflow

CREATE OR REPLACE PROCEDURE offers_workflow AS
    v_status VARCHAR2(4000);  -- Variable to hold the status message

BEGIN

    automatic_offer_creation;
	
    candidate_offer_notifications;

    candidate_offers;
	
    offer_acc_rej;

    offer_api;
	
    offer_expiration_management;

    schedule_email_notifications;
	
    schedule_interview_tcl;

    track_offer_statuses;
	
	bgv_mails;

END offers_workflow;
/