use hospital;

alter table room_housing
add constraint room_housing_patient_fk
foreign key (patient_id) references patient(id)
on delete cascade;

alter table room_housing
add constraint room_housing_room_fk
foreign key (room_id) references room(id)
on delete cascade;

alter table medical_card
add constraint medical_card_fk
foreign key (patient_id) references patient(id)
on delete cascade;

alter table appointment
add constraint appointment_doctor_fk
foreign key (doctor_id) references doctor(id)
on delete cascade;

alter table appointment
add constraint appointment_patient_fk
foreign key (patient_id) references patient(id)
on delete cascade;

alter table appointment
add constraint appointment_service_fk
foreign key (service_id) references service(id)
on delete cascade;

alter table appointment
add constraint appointment_payment_fk
foreign key (payment_id) references payment(id)
on delete cascade;

alter table medication_appointment
add constraint medication_appointment_med_fk
foreign key (medication_id) references medication(id)
on delete cascade;

alter table medication_appointment
add constraint medication_appointment_app_fk
foreign key (appointment_id) references appointment(id)
on delete cascade;