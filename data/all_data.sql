-- Person related data
INSERT INTO person (name,person_number,street,zip,city)
VALUES
  ('Lesley Wiley',    '82211727-4893','5618 Ornare Av.','53964','Hudiksvall'),
  ('Tarik Cummings',  '43921881-9024','7294 Donec Rd.','65643','Nässjö'),
  ('Tate Vazquez',    '21205852-7576','522-2274 Dictum Road','35400','Linköping'),
  ('Paul Patrick',    '15896888-3414','202-7664 Lectus Ave','96676','Stockholm'),
  ('Mohammad Lindsey','55745097-6465','Ap #488-5427 In Ave','69675','Uddevalla'),
  ('Tyrone King',     '64737906-2157','2613 Gravida Avenue','61661','Värnamo'),
  ('Keefe Hardin',    '04902856-7378','171-2664 Sed Street','68883','Jönköping'),
  ('Vielka Chaney',   '25832275-2224','5779 Litora Street','73339','Märsta'),
  ('Quinn Matthews',  '58308702-1272','1162 Varius Street','21173','Borlänge'),
  ('Gary Washington', '56841291-7632','Ap #906-1693 Proin St.','12753','Mjölby'),
  ('Lisandra Ellis',  '32174513-1338','1501 Dolor. Rd.','75547','Norrköping'),
  ('Dane Levine',     '99816829-6432','222-8399 Aliquet St.','86897','Linköping'),
  ('Wang Cherry',     '47685757-1747','Ap #487-1556 Curabitur Av.','80455','Borås'),
  ('Elvis Valencia',  '36564441-6328','505-162 Ac Rd.','91789','Skövde'),
  ('Genevieve Grant', '57213262-2754','635-101 Mattis St.','32253','Nässjö');

INSERT INTO phone (phone_number)
VALUES
  ('0704558837'),
  ('0709691352'),
  ('0700486837'),
  ('0701088879'),
  ('0702944618'),
  ('0706252896'),
  ('0705498337'),
  ('0708432312'),
  ('0700353638'),
  ('0708190653'),
  ('0708285127'),
  ('0704088594'),
  ('0705623842'),
  ('0707967812'),
  ('0702922911');

INSERT INTO email (email_address)
VALUES
  ('eu.eleifend@yahoo.couk'               ),
  ('iaculis@icloud.org'                   ),
  ('eget.lacus.mauris@protonmail.ca'      ),
  ('tempus.risus.donec@hotmail.com'       ),
  ('mattis.cras.eget@outlook.edu'         ),
  ('elit.dictum.eu@hotmail.net'           ),
  ('placerat.velit.quisque@outlook.couk'  ),
  ('vel.quam.dignissim@icloud.couk'       ),
  ('eleifend.nec.malesuada@protonmail.ca' ),
  ('lobortis.tellus@outlook.org'          ),
  ('ipsum.cursus@aol.couk'                ),
  ('mi.duis@icloud.net'                   ),
  ('et.magnis.dis@hotmail.org'            ),
  ('faucibus.orci@hotmail.com'            ),
  ('urna.convallis@outlook.couk'          );

INSERT INTO person_phone (phone_id,person_id)
VALUES
  ((select id from phone where phone_number = '0704558837'),(select id from person where person_number = '82211727-4893')),
  ((select id from phone where phone_number = '0709691352'),(select id from person where person_number = '43921881-9024')),
  ((select id from phone where phone_number = '0700486837'),(select id from person where person_number = '21205852-7576')),
  ((select id from phone where phone_number = '0701088879'),(select id from person where person_number = '15896888-3414')),
  ((select id from phone where phone_number = '0702944618'),(select id from person where person_number = '55745097-6465')),
  ((select id from phone where phone_number = '0706252896'),(select id from person where person_number = '64737906-2157')),
  ((select id from phone where phone_number = '0705498337'),(select id from person where person_number = '04902856-7378')),
  ((select id from phone where phone_number = '0708432312'),(select id from person where person_number = '25832275-2224')),
  ((select id from phone where phone_number = '0700353638'),(select id from person where person_number = '58308702-1272')),
  ((select id from phone where phone_number = '0708190653'),(select id from person where person_number = '56841291-7632')),
  ((select id from phone where phone_number = '0708285127'),(select id from person where person_number = '32174513-1338')),
  ((select id from phone where phone_number = '0704088594'),(select id from person where person_number = '99816829-6432')),
  ((select id from phone where phone_number = '0705623842'),(select id from person where person_number = '47685757-1747')),
  ((select id from phone where phone_number = '0707967812'),(select id from person where person_number = '36564441-6328')),
  ((select id from phone where phone_number = '0702922911'),(select id from person where person_number = '57213262-2754'));

INSERT INTO person_email (email_id,person_id)
VALUES
  ((select id from email where email_address = 'eu.eleifend@yahoo.couk'              ),(select id from person where person_number = '82211727-4893')),
  ((select id from email where email_address = 'iaculis@icloud.org'                  ),(select id from person where person_number = '43921881-9024')),
  ((select id from email where email_address = 'eget.lacus.mauris@protonmail.ca'     ),(select id from person where person_number = '21205852-7576')),
  ((select id from email where email_address = 'tempus.risus.donec@hotmail.com'      ),(select id from person where person_number = '15896888-3414')),
  ((select id from email where email_address = 'mattis.cras.eget@outlook.edu'        ),(select id from person where person_number = '55745097-6465')),
  ((select id from email where email_address = 'elit.dictum.eu@hotmail.net'          ),(select id from person where person_number = '64737906-2157')),
  ((select id from email where email_address = 'placerat.velit.quisque@outlook.couk' ),(select id from person where person_number = '04902856-7378')),
  ((select id from email where email_address = 'vel.quam.dignissim@icloud.couk'      ),(select id from person where person_number = '25832275-2224')),
  ((select id from email where email_address = 'eleifend.nec.malesuada@protonmail.ca'),(select id from person where person_number = '58308702-1272')),
  ((select id from email where email_address = 'lobortis.tellus@outlook.org'         ),(select id from person where person_number = '56841291-7632')),
  ((select id from email where email_address = 'ipsum.cursus@aol.couk'               ),(select id from person where person_number = '32174513-1338')),
  ((select id from email where email_address = 'mi.duis@icloud.net'                  ),(select id from person where person_number = '99816829-6432')),
  ((select id from email where email_address = 'et.magnis.dis@hotmail.org'           ),(select id from person where person_number = '47685757-1747')),
  ((select id from email where email_address = 'faucibus.orci@hotmail.com'           ),(select id from person where person_number = '36564441-6328')),
  ((select id from email where email_address = 'urna.convallis@outlook.couk'         ),(select id from person where person_number = '57213262-2754'));

-- Instructor related data
INSERT INTO instructor (person_id,teaches_ensembles)
VALUES
  ((select id from person where person_number = '82211727-4893'),'true'),
  ((select id from person where person_number = '43921881-9024'),'false'),
  ((select id from person where person_number = '21205852-7576'),'false'),
  ((select id from person where person_number = '15896888-3414'),'true'),
  ((select id from person where person_number = '55745097-6465'),'true');

INSERT INTO teach_instrument (instrument)
VALUES
  ('violin'),
  ('saxophone'),
  ('kazoo'),
  ('drums'),
  ('guitar');

INSERT INTO instructor_teach_instrument (person_id,teach_instrument_id)
VALUES
  ((select id from person where person_number = '82211727-4893'),
  (select id from teach_instrument where instrument = 'guitar')
  ),
  ((select id from person where person_number = '82211727-4893'),
  (select id from teach_instrument where instrument = 'drums')
  ),
  ((select id from person where person_number = '82211727-4893'),
  (select id from teach_instrument where instrument = 'saxophone')
  ),
  ((select id from person where person_number = '82211727-4893'),
  (select id from teach_instrument where instrument = 'kazoo')
  ),
  ((select id from person where person_number = '82211727-4893'),
  (select id from teach_instrument where instrument = 'violin')
  ),

  ((select id from person where person_number = '43921881-9024'),
  (select id from teach_instrument where instrument = 'drums')
  ),

  ((select id from person where person_number = '21205852-7576'),
  (select id from teach_instrument where instrument = 'kazoo')
  ),
  ((select id from person where person_number = '21205852-7576'),
  (select id from teach_instrument where instrument = 'saxophone')
  ),

  ((select id from person where person_number = '15896888-3414'),
  (select id from teach_instrument where instrument = 'violin')
  ),  
  ((select id from person where person_number = '15896888-3414'),
  (select id from teach_instrument where instrument = 'kazoo')
  ),  
  ((select id from person where person_number = '15896888-3414'),
  (select id from teach_instrument where instrument = 'saxophone')
  ),

  ((select id from person where person_number = '55745097-6465'),
  (select id from teach_instrument where instrument = 'saxophone')
  ),
  ((select id from person where person_number = '55745097-6465'),
  (select id from teach_instrument where instrument = 'guitar')
  ),
  ((select id from person where person_number = '55745097-6465'),
  (select id from teach_instrument where instrument = 'kazoo')
  );

  -- Student related data
INSERT INTO student (person_id,level)
VALUES
  ((select id from person where person_number = '64737906-2157'),'advanced'),
  ((select id from person where person_number = '04902856-7378'),'beginner'),
  ((select id from person where person_number = '25832275-2224'),'beginner'),
  ((select id from person where person_number = '58308702-1272'),'beginner'),
  ((select id from person where person_number = '56841291-7632'),'intermediate'),
  ((select id from person where person_number = '32174513-1338'),'intermediate'),
  ((select id from person where person_number = '99816829-6432'),'advanced'),
  ((select id from person where person_number = '47685757-1747'),'intermediate'),
  ((select id from person where person_number = '36564441-6328'),'beginner'),
  ((select id from person where person_number = '57213262-2754'),'intermediate');

INSERT INTO sibling (person_id,sibling_id)
VALUES
  ((select id from person where person_number = '64737906-2157'),(select id from person where person_number = '04902856-7378')),
  ((select id from person where person_number = '64737906-2157'),(select id from person where person_number = '25832275-2224')),

  ((select id from person where person_number = '04902856-7378'),(select id from person where person_number = '64737906-2157')),
  ((select id from person where person_number = '04902856-7378'),(select id from person where person_number = '25832275-2224')),
  
  ((select id from person where person_number = '25832275-2224'),(select id from person where person_number = '64737906-2157')),
  ((select id from person where person_number = '25832275-2224'),(select id from person where person_number = '04902856-7378')),


  ((select id from person where person_number = '56841291-7632'),(select id from person where person_number = '32174513-1338')),
  
  ((select id from person where person_number = '32174513-1338'),(select id from person where person_number = '56841291-7632'));

-- Rent related data
INSERT INTO rent_instrument (inventory_id,type,brand,rental_price)
VALUES
  (1,'violin','Stentor','160'),
  (2,'violin','Mendini','120'),
  (3,'violin','Cecilio','150'),
  (4,'violin','Cecilio','110'),
  (5,'violin','Mendini','120'),
  (6,'saxophone','P.Mauriat','160'),
  (7,'saxophone','Yamaha','120'),
  (8,'saxophone','Selmer','110'),
  (9,'kazoo','Hohnet','70'),
  (10,'kazoo','Grover','10'),
  (11,'kazoo','Hohnet','50'),
  (12,'kazoo','Monoprice','30'),
  (13,'drums','Yamaha','520'),
  (14,'drums','Sonor','540'),
  (15,'guitar','Fender','140'),
  (16,'guitar','Rickenbacker','150'),
  (17,'guitar','Ibanez','160'),
  (18,'guitar','Fender','150'),
  (19,'guitar','Gibson','140'),
  (20,'guitar','Gibson','150');

-- Lesson related data
INSERT INTO discount (percentage)
VALUES
  (1.0),
  (0.15),
  (0.50);

INSERT INTO lesson_price (lesson_type,level,price)
VALUES
  ('group',     'beginner',     150.00),
  ('group',     'intermediate', 150.00),
  ('group',     'advanced',     250.00),
  ('ensemble',  'beginner',     200.00),
  ('ensemble',  'intermediate', 200.00),
  ('ensemble',  'advanced',     300.00),
  ('individual','beginner',     110.00),
  ('individual','intermediate', 110.00),
  ('individual','advanced',     210.00);

INSERT INTO time_slot (dateTime,duration,instructor_id)
VALUES
('2023-01-02 08:15:00','01:45:00',(select id from person where person_number = '82211727-4893')),
('2023-01-02 10:15:00','01:45:00',(select id from person where person_number = '82211727-4893')),
('2023-01-02 13:00:00','01:45:00',(select id from person where person_number = '82211727-4893')),
('2023-01-02 15:00:00','01:45:00',(select id from person where person_number = '82211727-4893')),
('2023-01-03 08:15:00','01:45:00',(select id from person where person_number = '82211727-4893')),
('2023-01-03 10:15:00','01:45:00',(select id from person where person_number = '82211727-4893')),
('2023-01-03 13:00:00','01:45:00',(select id from person where person_number = '82211727-4893')),
('2023-01-03 15:00:00','01:45:00',(select id from person where person_number = '82211727-4893')),
('2023-01-04 08:15:00','01:45:00',(select id from person where person_number = '82211727-4893')),
('2023-01-04 10:15:00','01:45:00',(select id from person where person_number = '82211727-4893')),
('2023-01-04 13:00:00','01:45:00',(select id from person where person_number = '82211727-4893')),
('2023-01-04 15:00:00','01:45:00',(select id from person where person_number = '82211727-4893')),
('2023-01-05 08:15:00','01:45:00',(select id from person where person_number = '82211727-4893')),
('2023-01-05 10:15:00','01:45:00',(select id from person where person_number = '82211727-4893')),
('2023-01-05 13:00:00','01:45:00',(select id from person where person_number = '82211727-4893')),
('2023-01-05 15:00:00','01:45:00',(select id from person where person_number = '82211727-4893')),
('2023-01-06 08:15:00','01:45:00',(select id from person where person_number = '82211727-4893')),
('2023-01-06 10:15:00','01:45:00',(select id from person where person_number = '82211727-4893')),
('2023-01-06 13:00:00','01:45:00',(select id from person where person_number = '82211727-4893')),
('2023-01-06 15:00:00','01:45:00',(select id from person where person_number = '82211727-4893')),

('2023-01-02 08:15:00','01:45:00',(select id from person where person_number = '43921881-9024')),
('2023-01-02 10:15:00','01:45:00',(select id from person where person_number = '43921881-9024')),
('2023-01-02 13:00:00','01:45:00',(select id from person where person_number = '43921881-9024')),
('2023-01-02 15:00:00','01:45:00',(select id from person where person_number = '43921881-9024')),
('2023-01-03 08:15:00','01:45:00',(select id from person where person_number = '43921881-9024')),
('2023-01-03 10:15:00','01:45:00',(select id from person where person_number = '43921881-9024')),
('2023-01-03 13:00:00','01:45:00',(select id from person where person_number = '43921881-9024')),
('2023-01-03 15:00:00','01:45:00',(select id from person where person_number = '43921881-9024')),
('2023-01-04 08:15:00','01:45:00',(select id from person where person_number = '43921881-9024')),
('2023-01-04 10:15:00','01:45:00',(select id from person where person_number = '43921881-9024')),
('2023-01-04 13:00:00','01:45:00',(select id from person where person_number = '43921881-9024')),
('2023-01-04 15:00:00','01:45:00',(select id from person where person_number = '43921881-9024')),
('2023-01-05 08:15:00','01:45:00',(select id from person where person_number = '43921881-9024')),
('2023-01-05 10:15:00','01:45:00',(select id from person where person_number = '43921881-9024')),
('2023-01-05 13:00:00','01:45:00',(select id from person where person_number = '43921881-9024')),
('2023-01-05 15:00:00','01:45:00',(select id from person where person_number = '43921881-9024')),
('2023-01-06 08:15:00','01:45:00',(select id from person where person_number = '43921881-9024')),
('2023-01-06 10:15:00','01:45:00',(select id from person where person_number = '43921881-9024')),
('2023-01-06 13:00:00','01:45:00',(select id from person where person_number = '43921881-9024')),
('2023-01-06 15:00:00','01:45:00',(select id from person where person_number = '43921881-9024')),

('2023-01-02 08:15:00','01:45:00',(select id from person where person_number = '21205852-7576')),
('2023-01-02 10:15:00','01:45:00',(select id from person where person_number = '21205852-7576')),
('2023-01-02 13:00:00','01:45:00',(select id from person where person_number = '21205852-7576')),
('2023-01-02 15:00:00','01:45:00',(select id from person where person_number = '21205852-7576')),
('2023-01-03 08:15:00','01:45:00',(select id from person where person_number = '21205852-7576')),
('2023-01-03 10:15:00','01:45:00',(select id from person where person_number = '21205852-7576')),
('2023-01-03 13:00:00','01:45:00',(select id from person where person_number = '21205852-7576')),
('2023-01-03 15:00:00','01:45:00',(select id from person where person_number = '21205852-7576')),
('2023-01-04 08:15:00','01:45:00',(select id from person where person_number = '21205852-7576')),
('2023-01-04 10:15:00','01:45:00',(select id from person where person_number = '21205852-7576')),
('2023-01-04 13:00:00','01:45:00',(select id from person where person_number = '21205852-7576')),
('2023-01-04 15:00:00','01:45:00',(select id from person where person_number = '21205852-7576')),
('2023-01-05 08:15:00','01:45:00',(select id from person where person_number = '21205852-7576')),
('2023-01-05 10:15:00','01:45:00',(select id from person where person_number = '21205852-7576')),
('2023-01-05 13:00:00','01:45:00',(select id from person where person_number = '21205852-7576')),
('2023-01-05 15:00:00','01:45:00',(select id from person where person_number = '21205852-7576')),
('2023-01-06 08:15:00','01:45:00',(select id from person where person_number = '21205852-7576')),
('2023-01-06 10:15:00','01:45:00',(select id from person where person_number = '21205852-7576')),
('2023-01-06 13:00:00','01:45:00',(select id from person where person_number = '21205852-7576')),
('2023-01-06 15:00:00','01:45:00',(select id from person where person_number = '21205852-7576')),

('2023-01-02 08:15:00','01:45:00',(select id from person where person_number = '15896888-3414')),
('2023-01-02 10:15:00','01:45:00',(select id from person where person_number = '15896888-3414')),
('2023-01-02 13:00:00','01:45:00',(select id from person where person_number = '15896888-3414')),
('2023-01-02 15:00:00','01:45:00',(select id from person where person_number = '15896888-3414')),
('2023-01-03 08:15:00','01:45:00',(select id from person where person_number = '15896888-3414')),
('2023-01-03 10:15:00','01:45:00',(select id from person where person_number = '15896888-3414')),
('2023-01-03 13:00:00','01:45:00',(select id from person where person_number = '15896888-3414')),
('2023-01-03 15:00:00','01:45:00',(select id from person where person_number = '15896888-3414')),
('2023-01-04 08:15:00','01:45:00',(select id from person where person_number = '15896888-3414')),
('2023-01-04 10:15:00','01:45:00',(select id from person where person_number = '15896888-3414')),
('2023-01-04 13:00:00','01:45:00',(select id from person where person_number = '15896888-3414')),
('2023-01-04 15:00:00','01:45:00',(select id from person where person_number = '15896888-3414')),
('2023-01-05 08:15:00','01:45:00',(select id from person where person_number = '15896888-3414')),
('2023-01-05 10:15:00','01:45:00',(select id from person where person_number = '15896888-3414')),
('2023-01-05 13:00:00','01:45:00',(select id from person where person_number = '15896888-3414')),
('2023-01-05 15:00:00','01:45:00',(select id from person where person_number = '15896888-3414')),
('2023-01-06 08:15:00','01:45:00',(select id from person where person_number = '15896888-3414')),
('2023-01-06 10:15:00','01:45:00',(select id from person where person_number = '15896888-3414')),
('2023-01-06 13:00:00','01:45:00',(select id from person where person_number = '15896888-3414')),
('2023-01-06 15:00:00','01:45:00',(select id from person where person_number = '15896888-3414')),

('2023-01-02 08:15:00','01:45:00',(select id from person where person_number = '55745097-6465')),
('2023-01-02 10:15:00','01:45:00',(select id from person where person_number = '55745097-6465')),
('2023-01-02 13:00:00','01:45:00',(select id from person where person_number = '55745097-6465')),
('2023-01-02 15:00:00','01:45:00',(select id from person where person_number = '55745097-6465')),
('2023-01-03 08:15:00','01:45:00',(select id from person where person_number = '55745097-6465')),
('2023-01-03 10:15:00','01:45:00',(select id from person where person_number = '55745097-6465')),
('2023-01-03 13:00:00','01:45:00',(select id from person where person_number = '55745097-6465')),
('2023-01-03 15:00:00','01:45:00',(select id from person where person_number = '55745097-6465')),
('2023-01-04 08:15:00','01:45:00',(select id from person where person_number = '55745097-6465')),
('2023-01-04 10:15:00','01:45:00',(select id from person where person_number = '55745097-6465')),
('2023-01-04 13:00:00','01:45:00',(select id from person where person_number = '55745097-6465')),
('2023-01-04 15:00:00','01:45:00',(select id from person where person_number = '55745097-6465')),
('2023-01-05 08:15:00','01:45:00',(select id from person where person_number = '55745097-6465')),
('2023-01-05 10:15:00','01:45:00',(select id from person where person_number = '55745097-6465')),
('2023-01-05 13:00:00','01:45:00',(select id from person where person_number = '55745097-6465')),
('2023-01-05 15:00:00','01:45:00',(select id from person where person_number = '55745097-6465')),
('2023-01-06 08:15:00','01:45:00',(select id from person where person_number = '55745097-6465')),
('2023-01-06 10:15:00','01:45:00',(select id from person where person_number = '55745097-6465')),
('2023-01-06 13:00:00','01:45:00',(select id from person where person_number = '55745097-6465')),
('2023-01-06 15:00:00','01:45:00',(select id from person where person_number = '55745097-6465'));