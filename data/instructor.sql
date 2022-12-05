INSERT INTO instructor (person_id,teaches_ensembles)
VALUES
  ((select id from person where person_number = '82211727-4893'),'false'),
  ((select id from person where person_number = '43921881-9024'),'false'),
  ((select id from person where person_number = '21205852-7576'),'false'),
  ((select id from person where person_number = '15896888-3414'),'false'),
  ((select id from person where person_number = '55745097-6465'),'true');
