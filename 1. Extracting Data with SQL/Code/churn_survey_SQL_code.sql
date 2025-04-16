SELECT 
	ROUND(AVG(p.timely_responses), 3) AS timely_resp_avg,
	ROUND(AVG(p.timely_fixes), 3) AS timely_fixes_avg,
	ROUND(AVG(p.timely_replacements), 3) AS timely_repl_avg,
	ROUND(AVG(p.reliability), 3) AS reliability_avg,
	ROUND(AVG(p.options), 3) AS options_avg,
	ROUND(AVG(p.respectful_response), 3) AS resp_avg,
	ROUND(AVG(p.courteous_exchange), 3) AS court_avg,
	ROUND(AVG(p.evidence_of_active_listening), 3) AS evid_al_avg
FROM survey_responses AS p
INNER JOIN customer AS c
ON p.customer_id = c.customer_id
AND c.churn = 'Yes';
