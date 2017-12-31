/*https://leetcode.com/problems/rank-scores/description/*/

SELECT t.score AS Score, t2.rank AS Rank
FROM Scores AS t
JOIN
(
	SELECT sq.score AS score, 
		@curRank := @curRank + 1 AS rank
	FROM (
		SELECT score
		FROM lc_rankscore
		GROUP BY score
		ORDER BY score DESC) AS sq, (SELECT @curRank:= 0) r 
) AS t2
WHERE t.score = t2.score
ORDER BY Score DESC;
