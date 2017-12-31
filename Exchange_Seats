SELECT t1.id, t2.student 
FROM seat as t1 JOIN seat as t2
ON ceil(t1.id/2)*2 - mod(t1.id+1,2) = t2.id
UNION
SELECT sq.last_num AS last_num, t2.student
FROM (
	SELECT NULLIF(MAX(seat.id), MOD(MAX(seat.id),2)*2+MAX(seat.id))
    AS last_num
    FROM lc_seats
) AS sq
JOIN seat as t3
ON sq.last_num = t3.id;
