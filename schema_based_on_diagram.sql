CREATE TABLE patients (
    id serial PRIMARY KEY,
    name varchar(100),
    date_of_birth date,
);

CREATE TABLE treatments (
    id serial PRIMARY KEY,
    type varchar(50),
    name varchar(100),
);

CREATE TABLE medical_histories (
    id serial PRIMARY KEY,
    admitted_at timestamp,
    patient_id int REFERENCES patients(id),
    status varchar(50),
);

CREATE TABLE invoices (
    id serial PRIMARY KEY,
    total_amount decimal,
    generated_at timestamp,
    payed_at timestamp,
    medical_history_id REFERENCES medical_histories(id)
);

CREATE TABLE invoice_items (
    unit_price decimal,
    quantity int,
    total_price decimal,
    invoice_id int REFERENCES invoices(id),
    treatment_id int REFERENCES treatments(id)
);

CREATE TABLE m_histories_treatments (
    id serial PRIMARY KEY,
    medical_history_id int REFERENCES medical_histories(id),
    treatment_id int REFERENCES treatments(id)
);
