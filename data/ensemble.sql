INSERT INTO ensemble (min_students,max_students,genre,time_slot_id)
VALUES
(10,30,'jazz',(select id from time_slot where (instructor_id = (select id from person where person_number = '55745097-6465') and dateTime = '2023-01-02 08:15:00'))),
(10,30,'jazz',(select id from time_slot where (instructor_id = (select id from person where person_number = '55745097-6465') and dateTime = '2023-01-02 13:15:00'))),
(10,30,'classical',(select id from time_slot where (instructor_id = (select id from person where person_number = '55745097-6465') and dateTime = '2023-01-04 10:15:00'))),
(10,30,'classical',(select id from time_slot where (instructor_id = (select id from person where person_number = '55745097-6465') and dateTime = '2023-01-04 15:15:00'))),
(10,30,'jazz',(select id from time_slot where (instructor_id = (select id from person where person_number = '55745097-6465') and dateTime = '2023-01-06 10:15:00'))),
(10,30,'jazz',(select id from time_slot where (instructor_id = (select id from person where person_number = '55745097-6465') and dateTime = '2023-01-06 15:15:00')));