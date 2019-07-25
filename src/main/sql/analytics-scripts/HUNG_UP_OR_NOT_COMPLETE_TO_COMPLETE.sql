select distinct ch.care_recipient_id, cr.guardian_name, cr.name, cr.mobile_number, ch.vaccination_details_id, cre.extrnl_system_id, cre.health_worker_id 
from care_recipient cr join call_history ch on cr.care_recipient_id = ch.care_recipient_id 
join care_recipient_extn cre on cr.care_recipient_id = cre.care_recipient_id 
right outer join 
(select distinct cr.mobile_number, ch.vaccination_details_id 
from care_recipient cr join call_history ch on cr.care_recipient_id = ch.care_recipient_id 
where ch.call_status in ('VACCINE_NOT_TAKEN','HUNG_UP')) as ntken 
on cr.mobile_number=ntken.mobile_number AND ch.vaccination_details_id = ntken.vaccination_details_id 
where ch.call_status in ('VACCINE_TAKEN');