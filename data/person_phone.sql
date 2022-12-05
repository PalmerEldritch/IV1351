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
