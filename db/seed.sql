
BEGIN;


INSERT INTO app_user (user_id, name, surname, email, affiliation, country, phone) VALUES
 (1,  'Arman',   'Armanov',   'arman.armanov@example.com',   'Nazarbayev University',  'Kazakhstan', '+77001112233'),
 (2,  'Amina',   'Aminova',   'amina.aminova@example.com',   'KBTU',                   'Kazakhstan', '+77015556677'),
 (3,  'Daniyar', 'Sarsenov',  'daniyar.sarsenov@example.com','Astana IT University',   'Kazakhstan', NULL),
 (4,  'Aigerim', 'Nurlanova', 'aigerim.nurlanova@example.com','SDU University',        'Kazakhstan', '+77025553344'),
 (5,  'Timur',   'Bekov',     'timur.bekov@example.com',     'TU Berlin',              'Germany',    '+4915112345678'),
 (6,  'Madina',  'Omarova',   'madina.omarova@example.com',  'Nazarbayev University',  'Kazakhstan', NULL),
 (7,  'Yerlan',  'Kassym',    'yerlan.kassym@example.com',   'Al-Farabi University',   'Kazakhstan', NULL),
 (8,  'Dana',    'Serik',     'dana.serik@example.com',      'Astana IT University',   'Kazakhstan', '+77019998877'),
 (9,  'Ivan',    'Petrov',    'ivan.petrov@example.com',     'MIPT',                   'Russia',     NULL),
 (10, 'Sofia',   'Rossi',     'sofia.rossi@example.com',     'Politecnico di Milano',  'Italy',      '+393331234567'),
 (11, 'Wei',     'Chen',      'wei.chen@example.com',        'Tsinghua University',    'China',      NULL),
 (12, 'Laura',   'Smith',     'laura.smith@example.com',     'University of Leeds',    'United Kingdom', '+447700900123');

INSERT INTO author (author_id, orcid) VALUES
 (1,  '0000-0001-1111-0001'),
 (2,  '0000-0001-1111-0002'),
 (3,  NULL),
 (4,  '0000-0001-1111-0004'),
 (5,  NULL),
 (9,  '0000-0001-1111-0009'),
 (11, '0000-0001-1111-0011'),
 (12, NULL);

INSERT INTO reviewer (reviewer_id, years_experience) VALUES
 (1,  6),
 (5,  4),
 (6,  8),
 (7,  2),    
 (8,  5),    
 (10, 3),
 (11, 7);


INSERT INTO author_research_area (author_id, area_label) VALUES
 (1,  'Databases'),
 (2,  'Software Engineering'),
 (2,  'Security'),
 (3,  'Machine Learning'),
 (4,  'Machine Learning'),
 (4,  'NLP'),
 (5,  'Databases'),
 (9,  'Databases'),
 (11, 'Machine Learning'),
 (12, 'Software Engineering');


INSERT INTO reviewer_expertise (reviewer_id, area_label) VALUES
 (1,  'Databases'),
 (1,  'Machine Learning'),
 (5,  'Databases'),
 (5,  'Networks'),
 (6,  'Machine Learning'),
 (6,  'NLP'),
 (7,  'Databases'),
 (8,  'Databases'),
 (8,  'Security'),
 (10, 'Networks'),
 (10, 'Security'),
 (11, 'Machine Learning'),
 (11, 'Databases');


INSERT INTO conference (conference_id, name, acronym, description, city, country,
                        start_date, end_date, submission_deadline, review_deadline) VALUES
 (1, 'Astana International Conference on Data Science', 'ASDS 2026',
     'Data science, machine learning and databases.',
     'Astana', 'Kazakhstan', '2026-09-10', '2026-09-12', '2026-05-01', '2026-06-15'),
 (2, 'Berlin Symposium on Software Systems', 'BSSS 2026',
     'Software engineering and distributed systems.',
     'Berlin', 'Germany', '2026-10-20', '2026-10-22', '2026-06-01', '2026-07-20'),
 (3, 'Almaty Workshop on Wireless Networks', 'AWN 2026',
     NULL,
     'Almaty', 'Kazakhstan', '2026-11-05', '2026-11-06', '2026-07-15', '2026-09-01');


INSERT INTO conference_host (conference_id, host_name) VALUES
 (1, 'Nazarbayev University'),
 (1, 'Astana IT University'),
 (2, 'TU Berlin'),
 (3, 'Almaty Technical University');


INSERT INTO conference_reviewer (conference_id, reviewer_id) VALUES
 (1, 1), (1, 5), (1, 6), (1, 7), (1, 8), (1, 11),
 (2, 5), (2, 6), (2, 7), (2, 10), (2, 11),
 (3, 6), (3, 10);


INSERT INTO track (track_id, conference_id, name, description, research_area, coordinator_id) VALUES
 (1, 1, 'Machine Learning',               'Learning methods and applications.',  'Machine Learning',     6),
 (2, 1, 'Databases and Data Engineering', 'Storage, queries and pipelines.',     'Databases',            1),
 (3, 1, 'Security and Privacy',           'Empty track.',                        'Security',             11),
 (4, 2, 'Software Engineering',           'Testing and analysis.',               'Software Engineering', 5),
 (5, 2, 'Networks and Systems',           'Networking and systems.',             'Networks',             10),
 (6, 3, 'Wireless Networks',              'Conference without papers.',          'Networks',             6);


INSERT INTO conference_session (session_id, conference_id, title, session_date, start_time, end_time, room_label, chair_id) VALUES
 (1, 1, 'Machine Learning Applications', '2026-09-10', '09:00', '10:30', 'Room A101', 6),
 (2, 1, 'Data Management Trends',        '2026-09-10', '11:00', '12:30', 'Room A102', 1),
 (3, 1, 'Poster Discussion',             '2026-09-11', '14:00', '15:00', 'Hall B',    11),
 (4, 2, 'Software Quality',              '2026-10-20', '10:00', '11:30', 'Room B1',   5),
 (5, 2, 'Closing Session',               '2026-10-22', '15:00', '16:00', 'Room B2',   7);


INSERT INTO paper (paper_id, track_id, title, abstract, submission_date, status, session_id) VALUES
 (1,  1, 'Deep Learning for Cashier Behavior Analysis',
         'We apply machine learning to detect cashier actions in store video.',
         '2026-04-10', 'accepted', 1),
 (2,  1, 'Transformer Models for Kazakh Text Classification',
         'A study of Machine Learning methods for low-resource language classification.',
         '2026-04-12', 'accepted', 1),
 (3,  2, 'Query Optimization in Distributed Databases',
         'We propose a cost model for joins across distributed nodes.',
         '2026-04-14', 'accepted', 2),
 (4,  2, 'Indexing Strategies for Time-Series Data',
         'We compare index structures for sensor data workloads.',
         '2026-04-15', 'accepted', NULL),
 (5,  1, 'Federated Learning under Limited Bandwidth',
         'This paper studies machine learning when clients have little bandwidth.',
         '2026-04-18', 'under review', NULL),
 (6,  2, 'Schema Evolution in NoSQL Systems',
         'We analyze how schemas change over time in document stores.',
         '2026-04-20', 'submitted', NULL),
 (7,  1, 'Bias in Automated Resume Screening',
         'We measure bias in learning machines used for hiring.',
         '2026-04-22', 'rejected', NULL),
 (8,  4, 'Static Analysis for Python Type Errors',
         'We present a checker that finds type errors without running code.',
         '2026-05-05', 'accepted', 4),
 (9,  4, 'Mutation Testing at Scale',
         'Mutation testing techniques for large code bases.',
         '2026-05-08', 'accepted', NULL),
 (10, 5, 'Congestion Control in Data Centers',
         'We evaluate congestion control algorithms in data center networks.',
         '2026-05-10', 'rejected', NULL),
 (11, 5, 'Edge Caching with Learned Policies',
         'Learned cache replacement policies for edge servers.',
         '2026-05-12', 'under review', NULL),
 (12, 4, 'Continuous Integration Practices in Startups',
         'A survey of CI pipelines in early-stage companies.',
         '2026-05-14', 'withdrawn', NULL),
 (13, 2, 'Privacy-Preserving Query Processing',
         'Answering queries over encrypted data.',
         '2026-04-25', 'withdrawn', NULL),
 (14, 2, 'Data Lake Governance Frameworks',
         'We review governance practices for data lakes.',
         '2026-04-26', 'withdrawn', NULL),
 (15, 2, 'Benchmarking Graph Databases',
         'A benchmark of graph database engines.',
         '2026-04-28', 'submitted', NULL);


INSERT INTO paper_keyword (paper_id, keyword) VALUES
 (1, 'deep learning'),  (1, 'video analysis'),
 (2, 'transformers'),   (2, 'text classification'),
 (3, 'query optimization'), (3, 'distributed systems'),
 (4, 'indexing'),       (4, 'time series'),
 (5, 'federated learning'), (5, 'bandwidth'),
 (6, 'schema evolution'), (6, 'NoSQL'),
 (7, 'bias'),           (7, 'hiring'),
 (8, 'static analysis'), (8, 'Python'),
 (9, 'mutation testing'), (9, 'software quality'),
 (10, 'congestion control'), (10, 'data centers'),
 (11, 'edge caching'),  (11, 'learned policies'),
 (12, 'continuous integration'), (12, 'startups'),
 (13, 'privacy'),       (13, 'encrypted queries'),
 (14, 'data lakes'),    (14, 'governance'),
 (15, 'graph databases'), (15, 'benchmarks');


INSERT INTO paper_author (paper_id, author_id, author_position, is_corresponding) VALUES
 (1,  3,  1, TRUE),  (1,  4,  2, FALSE),
 (2,  4,  1, TRUE),  (2,  9,  2, FALSE),
 (3,  5,  1, TRUE),  (3,  12, 2, FALSE),
 (4,  9,  1, TRUE),
 (5,  11, 1, TRUE),  (5,  3,  2, FALSE),
 (6,  12, 1, TRUE),
 (7,  9,  1, TRUE),  (7,  4,  2, FALSE),
 (8,  12, 1, TRUE),  (8,  1,  2, FALSE),
 (9,  11, 1, TRUE),
 (10, 3,  1, TRUE),  (10, 5,  2, FALSE),
 (11, 4,  1, TRUE),
 (12, 2,  1, TRUE),  (12, 12, 2, FALSE),
 (13, 2,  1, TRUE),  (13, 9,  2, FALSE),
 (14, 9,  1, TRUE),  (14, 2,  2, FALSE),
 (15, 2,  1, TRUE);


INSERT INTO paper_version (paper_id, version_no, file_location, uploaded_at, change_note) VALUES
 (1,  1, 'papers/p1/v1.pdf',  '2026-04-10 10:00:00', NULL),
 (1,  2, 'papers/p1/v2.pdf',  '2026-04-20 11:30:00', 'Fixed figures'),
 (1,  4, 'papers/p1/v4.pdf',  '2026-05-25 09:15:00', 'Camera-ready version'),
 (2,  1, 'papers/p2/v1.pdf',  '2026-04-12 12:00:00', NULL),
 (2,  2, 'papers/p2/v2.pdf',  '2026-05-02 16:45:00', 'Added experiments'),
 (3,  1, 'papers/p3/v1.pdf',  '2026-04-14 09:00:00', NULL),
 (4,  1, 'papers/p4/v1.pdf',  '2026-04-15 14:00:00', NULL),
 (4,  3, 'papers/p4/v3.pdf',  '2026-05-30 10:10:00', 'Camera-ready version'),
 (5,  1, 'papers/p5/v1.pdf',  '2026-04-18 08:30:00', NULL),
 (6,  1, 'papers/p6/v1.pdf',  '2026-04-20 17:00:00', NULL),
 (7,  1, 'papers/p7/v1.pdf',  '2026-04-22 13:20:00', NULL),
 (7,  2, 'papers/p7/v2.pdf',  '2026-05-01 10:00:00', 'Responded to feedback'),
 (8,  1, 'papers/p8/v1.pdf',  '2026-05-05 09:45:00', NULL),
 (8,  2, 'papers/p8/v2.pdf',  '2026-06-20 15:00:00', 'Camera-ready version'),
 (9,  1, 'papers/p9/v1.pdf',  '2026-05-08 11:00:00', NULL),
 (10, 1, 'papers/p10/v1.pdf', '2026-05-10 10:30:00', NULL),
 (11, 1, 'papers/p11/v1.pdf', '2026-05-12 12:30:00', NULL),
 (12, 1, 'papers/p12/v1.pdf', '2026-05-14 09:00:00', NULL),
 (13, 1, 'papers/p13/v1.pdf', '2026-04-25 09:30:00', NULL),
 (13, 2, 'papers/p13/v2.pdf', '2026-05-05 14:30:00', 'Shortened'),
 (14, 1, 'papers/p14/v1.pdf', '2026-04-26 10:00:00', NULL),
 (15, 1, 'papers/p15/v1.pdf', '2026-04-28 16:00:00', NULL);



INSERT INTO review (review_id, paper_id, reviewer_id, overall_score, recommendation,
                    comments_for_authors, confidential_comments, review_submission_date) VALUES
 (1,  1,  6,  5, 'accept', 'Strong results and clear writing.',        NULL,                       '2026-05-20'),
 (2,  1,  1,  4, 'accept', 'Good paper, minor typos.',                 'Solid work.',              '2026-05-22'),
 (3,  1,  11, 4, 'accept', 'Convincing evaluation.',                   NULL,                       '2026-05-24'),
 (4,  2,  6,  4, 'accept', 'Interesting dataset.',                     NULL,                       '2026-05-21'),
 (5,  2,  1,  3, 'accept', 'Needs more baselines.',                    'Borderline but fine.',     '2026-05-23'),
 (6,  3,  6,  5, 'accept', 'Excellent cost model.',                    NULL,                       '2026-05-26'),
 (7,  3,  11, 4, 'accept', 'Clear contribution.',                      NULL,                       '2026-05-27'),
 (8,  4,  1,  4, 'accept', 'Useful comparison.',                       NULL,                       '2026-05-28'),
 (9,  7,  6,  2, 'reject', 'Weak methodology.',                        'Not ready.',               '2026-05-29'),
 (10, 7,  11, 1, 'reject', 'Conclusions are not supported.',           NULL,                       '2026-05-30'),
 (11, 5,  1,  3, 'accept', 'Promising but incomplete.',                NULL,                       '2026-06-02'),
 (12, 8,  5,  5, 'accept', 'Very practical tool.',                     NULL,                       '2026-06-25'),
 (13, 8,  7,  4, 'accept', 'Well evaluated.',                          NULL,                       '2026-06-26'),
 (14, 9,  6,  4, 'accept', 'Solid engineering.',                       NULL,                       '2026-06-28'),
 (15, 10, 7,  2, 'reject', 'Old baselines.',                           'Weak novelty.',            '2026-07-01'),
 (16, 10, 10, 2, 'reject', 'Results not reproducible.',                NULL,                       '2026-07-02'),
 (17, 13, 7,  2, 'reject', 'Threat model is unclear.',                 NULL,                       '2026-05-18'),
 (18, 11, 10, 3, 'accept', 'Needs a larger evaluation.',               NULL,                       '2026-07-05');


SELECT setval(pg_get_serial_sequence('app_user',           'user_id'),       (SELECT MAX(user_id)       FROM app_user));
SELECT setval(pg_get_serial_sequence('conference',         'conference_id'), (SELECT MAX(conference_id) FROM conference));
SELECT setval(pg_get_serial_sequence('track',              'track_id'),      (SELECT MAX(track_id)      FROM track));
SELECT setval(pg_get_serial_sequence('conference_session', 'session_id'),    (SELECT MAX(session_id)    FROM conference_session));
SELECT setval(pg_get_serial_sequence('paper',              'paper_id'),      (SELECT MAX(paper_id)      FROM paper));
SELECT setval(pg_get_serial_sequence('review',             'review_id'),     (SELECT MAX(review_id)     FROM review));

COMMIT;
