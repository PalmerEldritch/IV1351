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
