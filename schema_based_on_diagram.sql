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
