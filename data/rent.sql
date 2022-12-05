INSERT INTO rent (rent_instrument_id,person_id,start_month,rent_duration,to_be_delivered)
VALUES
  ((select id from rent_instrument where inventory_id = 1),(select id from person where person_number = '58308702-1272'),'January',4,'true'),
  ((select id from rent_instrument where inventory_id = 10),(select id from person where person_number = '58308702-1272'),'March',2,'true'),
  ((select id from rent_instrument where inventory_id = 6),(select id from person where person_number = '36564441-6328'),'April',7,'true'),
  ((select id from rent_instrument where inventory_id = 17),(select id from person where person_number = '36564441-6328'),'November',10,'true'),
  ((select id from rent_instrument where inventory_id = 11),(select id from person where person_number = '99816829-6432'),'November',12,'true'),
  ((select id from rent_instrument where inventory_id = 13),(select id from person where person_number = '99816829-6432'),'June',9,'false'),
  ((select id from rent_instrument where inventory_id = 14),(select id from person where person_number = '32174513-1338'),'August',3,'false'),
  ((select id from rent_instrument where inventory_id = 2),(select id from person where person_number = '64737906-2157'),'March',10,'false'),
  ((select id from rent_instrument where inventory_id = 20),(select id from person where person_number = '64737906-2157'),'November',2,'false'),
  ((select id from rent_instrument where inventory_id = 12),(select id from person where person_number = '25832275-2224'),'September',10,'true');
