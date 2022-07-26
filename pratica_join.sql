-- Questão 1:
SELECT
   users.id,
   users.name,
   cities.name as city
FROM
   users
   JOIN
      cities
      ON users."cityId" = cities.id;

-- Questão 2:
SELECT
	t.id,
	u_writer.name AS writer,
	u_recipient.name AS recipient,
	t.message
FROM
	testimonials AS t
	JOIN
		users AS u_writer
		ON t."writerId" = u_writer.id
	JOIN
		users AS u_recipient
		ON t."recipientId" = u_recipient.id
ORDER BY t.id;

-- Questão 3:
SELECT
	e."userId" AS id,
	u.name AS name,
	c.name AS course,
	s.name as school,
	e."endDate"
FROM
	educations as e
	JOIN
		users as u
		ON e."userId" = u.id
	JOIN
		courses as c
		ON e."courseId" = c.id
	JOIN
		schools as s
		ON e."schoolId" = s.id
WHERE
	e."userId" = 30
	AND e.status = 'finished';

-- Questão 4:
SELECT
	u.id AS id,
	u.name AS name,
	r.name AS role,
	c.name AS company,
	e."startDate"
FROM
	experiences AS e
	JOIN
		users AS u
		ON e."userId" = u.id
	JOIN
		roles AS r
		ON e."roleId" = r.id
	JOIN
		companies AS c
		ON e."companyId" = c.id
WHERE
	e."userId" = 50
	AND e."endDate" IS NULL;
