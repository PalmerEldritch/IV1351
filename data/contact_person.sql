INSERT INTO contact_person (student_person_id,name,phone_number,email_address)
VALUES
  ((select id from person where person_number = '64737906-2157'),'Bert Hays','0706775141','berthays6094@icloud.net'),
  ((select id from person where person_number = '04902856-7378'),'Baker Steele','0700126983','bakersteele2165@icloud.edu'),
  ((select id from person where person_number = '25832275-2224'),'Clayton Hyde','0706762441','claytonhyde1943@hotmail.com'),
  ((select id from person where person_number = '58308702-1272'),'Dana Henson','0704531982','danahenson4544@hotmail.edu'),
  ((select id from person where person_number = '56841291-7632'),'Astra Stafford','0702823212','astrastafford8394@protonmail.couk'),
  ((select id from person where person_number = '32174513-1338'),'Samuel Mclean','0706732654','samuelmclean2104@hotmail.org'),
  ((select id from person where person_number = '99816829-6432'),'Sylvester Wiggins','0701812052','sylvesterwiggins@yahoo.net'),
  ((select id from person where person_number = '47685757-1747'),'Chaney Spears','0708833023','chaneyspears9453@yahoo.com'),
  ((select id from person where person_number = '36564441-6328'),'Irene Black','0709351058','ireneblack@outlook.couk'),
  ((select id from person where person_number = '57213262-2754'),'Isaac Head','0706682199','isaachead@yahoo.couk');