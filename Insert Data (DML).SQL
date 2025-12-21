

INSERT INTO CarCategories (category_id, category_name, daily_rate) VALUES
(1, 'Sedan', 50.00),
(2, 'SUV', 85.00),
(3, 'Luxury', 250.00),
(4, 'Hatchback', 40.00),
(5, 'Sports', 300.00),
(6, 'Van', 100.00);

INSERT INTO Staff (staff_id, staff_name, position, salary) VALUES
(1, 'Ali Hassan', 'Manager', 15000),
(2, 'Sara Ahmed', 'Receptionist', 5500),
(3, 'Omar Khaled', 'Sales Agent', 6200),
(4, 'Layla Mohammed', 'Accountant', 8000),
(5, 'Fahad Ibrahim', 'Sales Agent', 6000),
(6, 'Mona Ali', 'Cleaner', 3000);

INSERT INTO Customers (customer_id, full_name, license_number, phone) VALUES
(101, 'Sarah Nasser', 'LIC-99901', '0551234567'),
(102, 'Sufyan Rashad', 'LIC-88802', '0509876543'),
(103, 'Majd Nasr', 'LIC-77703', '0561112233'),
(104, 'Ramez Al-Omari', 'LIC-66604', '0544445566'),
(105, 'Omar Al-Kaff', 'LIC-55505', '0533332211'),
(106, 'Laila Al-Harbi', 'LIC-44406', '0599988776'),
(107, 'Zaid Al-Sultan', 'LIC-33307', '0511122233'),
(108, 'Hanan Mansour', 'LIC-22208', '0522233344'),
(109, 'Fahad Bin Khalid', 'LIC-11109', '0588877766'),
(110, 'Noura Al-Said', 'LIC-00010', '0577766655');

INSERT INTO Cars (car_id, brand, model, year, plate_number, status, category_id) VALUES
(501, 'Toyota', 'Camry', 2022, 'ABC-123', 'Rented', 1),
(502, 'Hyundai', 'Tucson', 2023, 'XYZ-987', 'Available', 2),
(503, 'BMW', 'Series 7', 2021, 'LUX-001', 'Maintenance', 3),
(504, 'Honda', 'Accord', 2020, 'HND-555', 'Available', 1),
(505, 'Mercedes', 'S-Class', 2024, 'MER-111', 'Rented', 3),
(506, 'Nissan', 'Patrol', 2022, 'NIS-000', 'Available', 2),
(507, 'Kia', 'Rio', 2021, 'KIA-444', 'Available', 4),
(508, 'Ferrari', '488', 2023, 'SPD-999', 'Available', 5),
(509, 'Ford', 'Transit', 2019, 'VAN-777', 'Available', 6),
(510, 'Toyota', 'Corolla', 2022, 'T-882', 'Available', 1);

INSERT INTO Rentals (rental_id, car_id, customer_id, staff_id, rental_date, return_date, status) VALUES
(1, 501, 101, 2, '2025-12-01', '2025-12-05', 'Completed'),
(2, 502, 102, 3, '2025-12-10', NULL, 'Active'),
(3, 505, 103, 5, '2025-12-12', '2025-12-15', 'Completed'),
(4, 501, 104, 3, '2025-12-16', '2025-12-18', 'Completed'),
(5, 506, 105, 2, '2025-12-20', NULL, 'Active'),
(6, 504, 106, 3, '2025-12-21', '2025-12-25', 'Completed'),
(7, 503, 101, 5, '2025-12-26', NULL, 'Active'),
(8, 508, 107, 3, '2025-12-27', '2025-12-29', 'Completed');

INSERT INTO Payments (payment_id, rental_id, amount, payment_date, payment_method) VALUES
(1, 1, 250.00, '2025-12-05', 'Credit Card'),
(2, 3, 750.00, '2025-12-15', 'Cash'),
(3, 4, 100.00, '2025-12-18', 'Debit Card'),
(4, 6, 200.00, '2025-12-25', 'Credit Card'),
(5, 8, 600.00, '2025-12-29', 'Apple Pay');
