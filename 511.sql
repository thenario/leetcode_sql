SELECT
    player_id,
    min(event_date) as first_login
FROM
    Activity a
GROUP BY
    a.player_id;