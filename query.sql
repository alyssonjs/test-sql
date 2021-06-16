SELECT 
    concat(employees.first_name, ' ', employees.last_name) AS full_name, 
    cpf, 
    teams.name AS team,
    job_titles.name AS job
FROM
    employees
LEFT JOIN 
    taems ON teams.id = employees.team_id
LEFT JOIN
    job_titles ON job_titles.id = employees.job_title_id
ORDER BY 
    cpf
