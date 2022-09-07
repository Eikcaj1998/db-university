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
    

-- 4. Selezionare tutti gli studenti con i dati relativi al corso di laurea
-- a cui sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome


-- 5. Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti 


-- 6. Selezionare tutti i docenti che insegnano nel dipartimento di matematica (54)


-- 7. BONUS: Selezionare per ogni studente quanti tentativi d'esame ha sostenuto 
-- per superare ciascuno dei suoi esami 