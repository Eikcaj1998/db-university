-- 1. Selezionare tutti gli studenti iscritti al corso di laurea in economia
    SELECT *
    FROM `students`
    JOIN `degrees`
    ON  `students`.`degree_id` = `degrees`.`id`
    WHERE `degrees`.`name` = 'Corso di Laurea in Economia';

-- 2. Selezionare tutti i corsi di laurea magistrale del dipartimento di neuroscienze
    SELECT *
    FROM `degrees`
    JOIN `departments`
    ON `degrees`.`department_id` = `departments`.`id`
    WHERE `degrees`.`level`= 'magistrale'
    AND `departments`.`name` = 'Dipartimento di Neuroscienze';

-- 3. Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)
     SELECT `teachers`.`id` ,`teachers`.`name` 
     AS `teacher`, `courses`.`name` 
     AS `course_name`, `courses`.`year`, `courses`.`period`
    FROM `courses`
    JOIN `course_teacher`
    ON `courses`.`id` = `course_teacher`.`course_id`
    JOIN `teachers`
    ON `course_teacher`.`teacher_id` = `teachers`.`id`
    WHERE `teachers`.`id` = 44;

-- 4. Selezionare tutti gli studenti con i dati relativi al corso di laurea
-- a cui sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome
    SELECT *
    FROM `students`
    JOIN `degrees`
    ON `students`.`degree_id` = `degrees`.`id`
    JOIN `departments`
    ON `degrees`.`department_id` = `departments`.`id`
    ORDER BY `students`.`surname`,`students`.`name`;

-- 5. Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti 
    SELECT `degrees`.`id`, `degrees`.`name` 
    AS `degree_name`, `courses`.`name` 
    AS `course_name`, `teachers`.`id`, `teachers`.`name` 
    AS `teacher_name`, `teachers`.`surname`  
    AS `teacher_surname`, `teachers`.`email`  
    AS `teacher_email` 
    FROM `degrees`
    JOIN `courses`
    ON `degrees`.`id` = `courses`.`degree_id`
    JOIN `course_teacher`
    ON `courses`.`id` = `course_teacher`.`course_id`
    JOIN `teachers`
    ON `course_teacher`.`teacher_id` = `teachers`.`id`

-- 6. Selezionare tutti i docenti che insegnano nel dipartimento di matematica (54)


-- 7. BONUS: Selezionare per ogni studente quanti tentativi d'esame ha sostenuto 
-- per superare ciascuno dei suoi esami 