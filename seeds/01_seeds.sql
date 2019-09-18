INSERT INTO users (id, name, email, password) 
VALUES ('tom', 'tom@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Jack', 'jack@gmail.com' '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Sally', 'sally@hotmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');


INSERT INTO properties (id, owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code, active) 
VALUES (1, 'title', 'description', 'thumbnail_photo_url', 'cover_photo_url', 150, 2, 2, 2, 'Canada', 'Swinton', 'Richmond', 'BC', 'V1A6H7', true),
(2, 'title', 'description', 'thumbnail_photo_url', 'cover_photo_url', 300, 1, 2, 3, 'Canada', 'Main', 'Vancouver', 'BC', 'V9B2K0', true),
(3, 'title', 'description', 'thumbnail_photo_url', 'cover_photo_url', 225, 1, 4, 6, 'Canada', 'Alexander', 'Burnaby', 'BC', 'V4B8P1', true);

INSERT INTO reservations (guest_id, property_id, start_date, end_date) 
VALUES (1, 3, '2018-09-11', '2018-09-26'),
(2, 1, '2019-01-04', '2019-02-01'),
(3, 2, '2021-10-01', '2021-10-14');

INSERT INTO property_reviews (id, guest_id, property_id, reservation_id, rating, message) 
VALUES (1, 3, 1, 4, 'message'),
(2, 1, 2, 3, 'message'),
(3, 2, 3, 5, 'message');