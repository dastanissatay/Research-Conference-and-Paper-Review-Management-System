CREATE OR REPLACE VIEW accepted_paper_schedule AS
SELECT
    p.paper_id,
    p.title                         AS paper_title,
    c.conference_id,
    c.acronym,
    t.name                          AS track_name,
    s.session_id,
    s.title                         AS session_title,
    s.session_date,
    s.start_time,
    s.end_time,
    s.room_label,
    chair.name || ' ' || chair.surname  AS chair_name,
    ca.name || ' ' || ca.surname        AS corresponding_author_name,
    ca.email                            AS corresponding_author_email
FROM paper p
JOIN track              t     ON t.track_id      = p.track_id
JOIN conference_session s     ON s.session_id    = p.session_id
JOIN conference         c     ON c.conference_id = s.conference_id
JOIN app_user           chair ON chair.user_id   = s.chair_id
JOIN paper_author       pa    ON pa.paper_id     = p.paper_id AND pa.is_corresponding
JOIN app_user           ca    ON ca.user_id      = pa.author_id;
