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
  ((select id from person where person_number = '57213262-2754'),'intermediate'),