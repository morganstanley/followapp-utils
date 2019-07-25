select distinct care_recipient_id 
from call_history 
where call_status = 'VACCINE_TAKEN';