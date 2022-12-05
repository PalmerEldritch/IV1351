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
