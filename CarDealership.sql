CREATE TABLE customer_1 (
    customer_1_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    address VARCHAR(100),
    email VARCHAR(100)
);


CREATE TABLE car (
    car_id SERIAL PRIMARY KEY,
    customer_1_id INTEGER,
    serial_number INTEGER),
    make VARCHAR(100),
    model VARCHAR(100),
    car_year INTEGER,
    FOREIGN KEY (customer_1_id) REFERENCES customer_1(customer_1_id)
);

CREATE TABLE service_ticket (
    ticket_id SERIAL PRIMARY KEY,
    car_id INTEGER,
    customer_1_id INTEGER, 
    service_date DATE,  
    description VARCHAR(150),
    FOREIGN KEY (car_id) REFERENCES car(car_id),
    FOREIGN KEY (customer_1_id) REFERENCES customer_1(customer_1_id)  
);


CREATE TABLE service_mechanic (
    mechanic_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);



CREATE TABLE service_history (
    serial_number SERIAL PRIMARY KEY,  
    ticket_id INTEGER,
    ticket_date DATE,  
    mechanic_id INTEGER,
    comments VARCHAR(150),
    FOREIGN KEY (ticket_id) REFERENCES service_ticket(ticket_id),
    FOREIGN KEY (mechanic_id) REFERENCES service_mechanic(mechanic_id) 
);

CREATE TABLE customer_1_invoice (
    invoice_id SERIAL PRIMARY KEY,
    customer_1_id INTEGER,
    invoice_date DATE, 
    invoice_amount NUMERIC(8,2),  
    FOREIGN KEY (customer_1_id) REFERENCES customer_1(customer_1_id)
);

CREATE TABLE salesperson (
    salesperson_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

CREATE TABLE sales_invoice (
    sales_invoice_id SERIAL PRIMARY KEY,
    salesperson_id INTEGER, 
    invoice_date DATE,  
    invoice_amount NUMERIC(8,2),
    FOREIGN KEY (salesperson_id) REFERENCES salesperson(salesperson_id)
);

CREATE TABLE parts_used (
    usage_id SERIAL PRIMARY KEY,
    ticket_id INTEGER,
    parts_id INTEGER,
    quantity INTEGER, 
    parts_price NUMERIC(8,2), 
    FOREIGN KEY (ticket_id) REFERENCES service_ticket(ticket_id)
);
















