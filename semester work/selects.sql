use hospital;

#general data about patients
drop view if exists patient_data;
create or replace view patient_data as
select patient_name, sex, height, weight, blood_type, allergies, medical_history
from patient
join medical_card mc on patient.id = mc.patient_id;

select * from patient_data;

#general data about appointments
drop view if exists appointment_data;
create or replace view appointment_data as
select appointment_date,doctor_name, speciality, patient_name, service_name, duration_minutes, price
from appointment
join patient p on appointment.patient_id = p.id
join doctor d on appointment.doctor_id = d.id
join service s on appointment.service_id = s.id
order by appointment_date;

select * from appointment_data;

#room where lives every patient
select end_date, patient_name, room_number, type
from room_housing
join patient p on room_housing.patient_id = p.id
join room r on room_housing.room_id = r.id
where curdate() between start_date and end_date
order by end_date;

#amount of payments from every patient
select patient_name, payment_method, sum(amount) as amount_of_payments
from patient
left join appointment a on patient.id = a.patient_id
left join payment p on a.payment_id = p.id
group by patient_name, payment_method
order by amount_of_payments desc;

#clients and medications prescribed to them
select patient_name, medication_name, dosage_in_mg, price
from patient
left join appointment a on patient.id = a.patient_id
left join medication_appointment ma on a.id = ma.appointment_id
left join medication m on ma.medication_id = m.id;

#pateints who have medical insurance
select patient_name
from patient
join medical_card on patient.id = medical_card.patient_id
WHERE medical_card.availability_of_insurance = 1;

#last week appointments
select service_name, doctor_name, appointment_date
from appointment
join service on appointment.service_id = service.id
join doctor on appointment.doctor_id = doctor.id
where appointment_date between DATE_ADD(curdate(), INTERVAL -7 DAY) and curdate()
order by appointment_date;

#amount of money was earned by doctors
select doctor_name, count(*) as appointments_amount, sum(price) as earned_money, service_name
from doctor
join appointment a on doctor.id = a.doctor_id
join service s on a.service_id = s.id
group by doctor_name, service_name
order by earned_money desc;

#amount of patients in every room
select room_number, type, count(*) as patients_amount
from room_housing
join room r on room_housing.room_id = r.id
group by room_number, type;

#amount of prescriptions for every medication
select medication_name, dosage_in_mg, count(*) as prescription
from medication_appointment
join medication m on medication_appointment.medication_id = m.id
group by medication_name, dosage_in_mg;

#medications need to be ordered and amount to order
select medication_name, count(*) as required_amount
from medication_appointment
join medication m on m.id = medication_appointment.medication_id
where availability = 0
group by medication_name;

#count the amount of patients for every doctor
select doctor_name, speciality, count(distinct patient_id) as unique_patients
from doctor
left join appointment a on doctor.id = a.doctor_id
group by doctor_name, speciality;

#patients without allergies and medical history
select patient_name
from patient
join medical_card mc on patient.id = mc.patient_id
where allergies is null and medical_history is null;

#patients who have AB+ blood type and can be universal recipient
select patient_name
from patient
join medical_card mc on patient.id = mc.patient_id
where blood_type = 'AB+';