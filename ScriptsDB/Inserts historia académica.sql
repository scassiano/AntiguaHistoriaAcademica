USE TuSIA_historiaAcademica_db;

INSERT INTO subject (code, name, credits) values(2025971, "Optimización", 3);
INSERT INTO subject (code, name, credits) values(2023498, "Arte y cerebro", 3);
INSERT INTO subject (code, name, credits) values(2015970, "Métodos numéricos", 3);
INSERT INTO subject (code, name, credits) values(2018009, "Psiquiatría I", 2);
INSERT INTO subject (code, name, credits) values(2016353, "Bases de datos", 3);
INSERT INTO subject (code, name, credits) values(2025964, "Matemáticas discretas II", 4);
INSERT INTO subject (code, name, credits) values(2018069, "Contrapunto II", 2);
INSERT INTO subject (code, name, credits) values(1000003, "Álgebra Lineal", 4);
INSERT INTO subject (code, name, credits) values(2015215, "Análisis de sistemas dinámicos", 3);
INSERT INTO subject (code, name, credits) values(2015942, "Aplicaciones de elementos finitos", 3);
INSERT INTO subject (code, name, credits) values(1000004, "Cálculo diferencial", 4);
INSERT INTO subject (code, name, credits) values(1000006, "Cálculo en varias variables", 4);
INSERT INTO subject (code, name, credits) values(1000005, "Cálculo Integral", 4);
INSERT INTO subject (code, name, credits) values(2015711, "Dibujo básico", 3);
INSERT INTO subject (code, name, credits) values(2017257, "Dibujo de Máquinas", 4);


INSERT INTO career_credits (code, fundamentacion_obligatoria, fundamentacion_optativa, disciplinar_obligatoria, disciplinar_optativa, libre_eleccion, nivelacion, trabajo_de_grado, total) 
values(2879, 15, 36, 54, 21, 33, 12, 6, 177);
INSERT INTO career_credits (code, fundamentacion_obligatoria, fundamentacion_optativa, disciplinar_obligatoria, disciplinar_optativa, libre_eleccion, nivelacion, trabajo_de_grado, total) 
values(2547, 50, 8, 80, 6, 36, 12, 6, 198);


INSERT INTO story(username, faculty, career_code, career_name, state) values("sarodriguezca","Facultad de Ingeniería", 2879, "Ingeniería de Sistemas y Computación", "Abierto"); 
INSERT INTO story(username, faculty, career_code, career_name, state) values("pepintopa","Facultad de Ingeniería", 2547, "Ingeniería Mecánica", "Abierto"); 


INSERT INTO averages(id_story, PAPA, PA, PAPPI) values (1, 4.6, 4.6, 4.7);
INSERT INTO averages(id_story, PAPA, PA, PAPPI) values (2, 4.0, 4.2, 4.3);


INSERT INTO student_subject(subject_code,id_story, tipology, period, grade, outcome) values (2025971, 1, "Disciplinar Optativa", "2022-1S",5.0, "aprobada");
INSERT INTO student_subject(subject_code,id_story, tipology, period, grade, outcome) values (2023498, 1, "Libre Elección", "2015-2S",5.0, "aprobada");
INSERT INTO student_subject(subject_code,id_story, tipology, period, grade, outcome) values (2015970, 1, "Fundamentación Optativa", "2021-2S", 4.6, "aprobada");
INSERT INTO student_subject(subject_code,id_story, tipology, period, grade, outcome) values (2018009, 1, "Libre Elección", "2017-2S", 4.9, "aprobada");
INSERT INTO student_subject(subject_code,id_story, tipology, period, grade, outcome) values (2016353, 1, "Disciplinar Obligatoria", "2020-2S", 4.3, "aprobada");
INSERT INTO student_subject(subject_code,id_story, tipology, period, grade, outcome) values (2025964, 1, "Fundamentación Optativa", "2021-1S", 4.6, "aprobada");

INSERT INTO student_subject(subject_code,id_story, tipology, period, grade, outcome) values (1000004, 2, "Fundamentación Obligatoria", "2020-1S",2.8, "reprobada");
INSERT INTO student_subject(subject_code,id_story, tipology, period, grade, outcome) values (1000004, 2, "Fundamentación Obligatoria", "2020-2S",3.0, "aprobada");
INSERT INTO student_subject(subject_code,id_story, tipology, period, grade, outcome) values (1000005, 2, "Fundamentación Obligatoria", "2021-1S",5.0, "aprobada");
INSERT INTO student_subject(subject_code,id_story, tipology, period, grade, outcome) values (1000006, 2, "Fundamentación Obligatoria", "2021-2S",4.6, "aprobada");
INSERT INTO student_subject(subject_code,id_story, tipology, period, grade, outcome) values (2015711, 2, "Fundamentación Obligatoria", "2021-1S",4.0, "aprobada");
INSERT INTO student_subject(subject_code,id_story, tipology, period, grade, outcome) values (2017257, 2, "Disciplinar Obligatoria", "2021-2S",4.0, "aprobada");


INSERT INTO credit_summary(id_story, surplus_credits, canceled_credits,completion_percentage, aditional_credits, credit_quota, available_credits) 
values(1, 0, 0, 78.2, 80, 90, 54);
INSERT INTO credit_summary(id_story, surplus_credits, canceled_credits,completion_percentage, aditional_credits, credit_quota, available_credits) 
values(2, 0, 2, 27.7 , 80, 216, 18);


INSERT INTO student_credits_pending(id_story, fundamentacion_optativa_pending, fundamentacion_obligatoria_pending, disciplinar_optativa_pending, 
disciplinar_obligatoria_pending, nivelacion_pending, trabajo_de_grado_pending, libre_eleccion_pending, total_pending) 
values (1, 0, 0, 6, 24, 0, 6, 0, 36);
INSERT INTO student_credits_approved(id_story, fundamentacion_optativa_approved, fundamentacion_obligatoria_approved, disciplinar_optativa_approved, 
disciplinar_obligatoria_approved, nivelacion_approved, trabajo_de_grado_approved, libre_eleccion_approved, total_approved) 
values (1, 36, 15, 15, 30, 12, 0, 44, 152);
INSERT INTO student_credits_signed(id_story, fundamentacion_optativa_signed, fundamentacion_obligatoria_signed, disciplinar_optativa_signed, 
disciplinar_obligatoria_signed, nivelacion_signed, trabajo_de_grado_signed, libre_eleccion_signed, total_signed) 
values (1, 0, 0, 6, 9, 0, 0, 0, 15);
INSERT INTO student_credits_taken(id_story, fundamentacion_optativa_taken, fundamentacion_obligatoria_taken, disciplinar_optativa_taken, 
disciplinar_obligatoria_taken, nivelacion_taken, trabajo_de_grado_taken, libre_eleccion_taken, total_taken) 
values (1, 36, 15, 15, 30, 12, 0, 44, 152);


INSERT INTO student_credits_pending(id_story, fundamentacion_optativa_pending, fundamentacion_obligatoria_pending, disciplinar_optativa_pending, 
disciplinar_obligatoria_pending, nivelacion_pending, trabajo_de_grado_pending, libre_eleccion_pending, total_pending) 
values (2, 6, 28, 6, 70, 3, 6, 24, 143);
INSERT INTO student_credits_approved(id_story, fundamentacion_optativa_approved, fundamentacion_obligatoria_approved, disciplinar_optativa_approved, 
disciplinar_obligatoria_approved, nivelacion_approved, trabajo_de_grado_approved, libre_eleccion_approved, total_approved) 
values (2, 2, 22, 0, 10, 9, 0, 12, 55);
INSERT INTO student_credits_signed(id_story, fundamentacion_optativa_signed, fundamentacion_obligatoria_signed, disciplinar_optativa_signed, 
disciplinar_obligatoria_signed, nivelacion_signed, trabajo_de_grado_signed, libre_eleccion_signed, total_signed) 
values (2, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO student_credits_taken(id_story, fundamentacion_optativa_taken, fundamentacion_obligatoria_taken, disciplinar_optativa_taken, 
disciplinar_obligatoria_taken, nivelacion_taken, trabajo_de_grado_taken, libre_eleccion_taken, total_taken) 
values (2, 2, 26, 0, 10, 9, 0, 12, 59);