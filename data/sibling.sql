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

    