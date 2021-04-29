SELECT
	j.journal_id, j.action_type, j.matricula,
	b.nombre, b.paterno, b.materno, b.correo, b.nivel, b.plantel, b.facultad, b.programa, b.grupo, b.date
FROM alumnos.alumnos_journal j
LEFT JOIN alumnos.alumnos b ON b.matricula = j.matricula
WHERE j.journal_id > :sql_last_value
	AND j.action_time < NOW()
ORDER BY j.journal_id