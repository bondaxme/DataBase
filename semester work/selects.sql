use hospital;

#1 general data about patients
drop view if exists patient_data;
create or replace view patient_data as
select patient.id, patient_name, sex, height, weight, blood_type,
       allergies, medical_history
from patient
join medical_card mc on patient.id = mc.patient_id;

select * from patient_data;

#2 general data about appointments
drop view if exists appointment_data;
create or replace view appointment_data as
select appointment.id,appointment_date,doctor_name, speciality,
       patient_name, service_name, duration_minutes, price
from appointment
join patient p on appointment.patient_id = p.id
join doctor d on appointment.doctor_id = d.id
join service s on appointment.service_id = s.id
order by appointment_date;

select * from appointment_data;

#3 room where lives every patient
select end_date, patient_name, room_number, type
from room_housing
join patient p on room_housing.patient_id = p.id
join room r on room_housing.room_id = r.id
where curdate() between start_date and end_date
order by room_number;

#4 amount of payments from every patient
select patient.id, patient_name, payment_method,
       sum(amount) as amount_of_payments
from patient
left join appointment a on patient.id = a.patient_id
left join payment p on a.payment_id = p.id
group by patient.id, payment_method
order by amount_of_payments desc;

#5 clients and medications prescribed to them
select patient.id, patient_name, medication_name, dosage_in_mg, price
from patient
left join appointment a on patient.id = a.patient_id
left join medication_appointment ma on a.id = ma.appointment_id
left join medication m on ma.medication_id = m.id;

#6 patients who have medical insurance
select patient.id, patient_name
from patient
join medical_card on patient.id = medical_card.patient_id
WHERE medical_card.availability_of_insurance = 1;

#7 last week appointments
select service_name, doctor_name, appointment_date
from appointment
join service on appointment.service_id = service.id
join doctor on appointment.doctor_id = doctor.id
where appointment_date between DATE_ADD(curdate(), INTERVAL -7 DAY) and curdate()
order by appointment_date;

#8 amount of money was earned by doctors and + amount of appointments of every doctor
select doctor.id, doctor_name, count(*) as appointments_amount,
       sum(price) as earned_money, service_name
from doctor
join appointment a on doctor.id = a.doctor_id
join service s on a.service_id = s.id
group by doctor.id, service_name
order by earned_money desc;

#9 amount of patients in every room
select room_number, type, count(*) as patients_amount
from room_housing
join room r on room_housing.room_id = r.id
group by room_number, type;

#10 amount of prescriptions for every medication
select medication_name, dosage_in_mg, count(*) as prescription
from medication
join medication_appointment ma on medication.id = ma.medication_id
group by medication_name, dosage_in_mg;

#11 medications need to be ordered and amount to order
select medication_name, count(*) as required_amount
from medication_appointment
join medication m on m.id = medication_appointment.medication_id
where availability = 0
group by medication_name;

#12 count the amount of patients for every doctor
select doctor.id, doctor_name, speciality,
       count(distinct patient_id) as unique_patients
from doctor
left join appointment a on doctor.id = a.doctor_id
group by doctor.id, speciality;

#13 patients without allergies and medical history
select patient_name
from patient
join medical_card mc on patient.id = mc.patient_id
where allergies is null and medical_history is null;

#14 patients who have AB+ blood type and can be universal recipient
select patient_name
from patient
join medical_card mc on patient.id = mc.patient_id
where blood_type = 'AB+';

#15 prices per every appointment
select appointment.id, coalesce(m.price, 0) as med_price, s.price as service_price,
       (select (sum(med_price + service_price))) as general_price
from appointment
left join service s on appointment.service_id = s.id
left join medication_appointment ma on appointment.id = ma.appointment_id
left join medication m on ma.medication_id = m.id
order by id;

#16 find the average, maximum, minimum and the sum of all appointments
select round(avg(coalesce(m.price, 0) + s.price),2) as avg_price,
       max(coalesce(m.price, 0) + s.price) as max_price,
       min(coalesce(m.price, 0) + s.price) as min_price,
       sum(coalesce(m.price, 0) + s.price) as sum_price
from appointment
left join service s on appointment.service_id = s.id
left join medication_appointment ma on appointment.id = ma.appointment_id
left join medication m on ma.medication_id = m.id;

#17 Patient with critical body mass index
select patient_name, height, weight, weight/(height*height/10000) as BMI
from patient
join medical_card mc on patient.id = mc.patient_id
where not weight/(height*height/10000) between 16.5 and 30;

#18 Amount + sum of payments for every payment method
select payment_method, count(*) as payments_amount, sum(amount) as payments_sum
from payment
group by payment_method;

#19 duration and end of every appointment
select appointment.id, appointment_date, duration_minutes,
       date_add(appointment_date, interval duration_minutes minute) as end_datetime
from appointment
join service s on appointment.service_id = s.id;

#20 medical history of more vulnerable patients due to age (pensioners)
SELECT patient.id, patient_name, medical_history,
       date_format(from_days(datediff(now(),date_of_birth)), '%Y')+0 AS age,
       availability_of_insurance
from patient
join medical_card mc on patient.id = mc.patient_id
having age > 60;