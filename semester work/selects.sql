use hospital;

drop view if exists patient_data;
create or replace view patient_data as
select patient_name, sex, height, weight, blood_type, allergies, medical_history
from patient
join medical_card mc on patient.id = mc.patient_id;

select * from patient_data;

drop view if exists appointment_data;
create or replace view appointment_data as
select appointment_date,doctor_name, speciality, patient_name, service_name, duration_minutes, price
from appointment
join patient p on appointment.patient_id = p.id
join doctor d on appointment.doctor_id = d.id
join service s on appointment.service_id = s.id
order by appointment_date;

select * from appointment_data;

drop view if exists patient_rooms;
create or replace view patient_rooms as
select end_date, patient_name, room_number, type
from room_housing
join patient p on room_housing.patient_id = p.id
join room r on room_housing.room_id = r.id
where end_date > curdate()
order by end_date;

select * from patient_rooms;

select room_number, type, count(*) as patients_amount
from patient_rooms
group by room_number, type
order by room_number;

select doctor_name, count(*) as appointments_amount, sum(price) as earned_money, service_name
from appointment_data
group by doctor_name, service_name;

select patient_name, payment_date, payment_method, sum(amount) as amount_of_payments
from patient
left join appointment a on patient.id = a.patient_id
left join payment p on a.payment_id = p.id
group by patient_name, payment_date, payment_method
order by amount_of_payments desc;

select payment_date, count(*) as amount_of_payments_per_day
from payment
group by payment_date
order by payment_date;

select patient_name, medication_name, dosage_in_mg, price
from patient
left join appointment a on patient.id = a.patient_id
left join medication_appointment ma on a.id = ma.appointment_id
left join medication m on ma.medication_id = m.id;

