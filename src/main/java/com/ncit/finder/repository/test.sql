
SELECT n.id nid,n.seen nseen, n.notification_type ntype, n.initiated_on,
inu.id inu_id, inu.firstname inu_firstname, inu.lastname inu_lastname,
inu.middlename inu_middlename, inu.profile_pic inu_pp,
pid, pcontent
pu_id, pu_firstname, pu_middlename, pu_lastname
FROM notifications n
INNER JOIN users inu ON inu.id = n.initiator_id
INNER JOIN (
SELECT p.id pid , p.content pcontent, 
u.id pu_id, u.firstname pu_firstname, u.lastname pu_lastname ,u.middlename pu_middlename
FROM posts p
INNER JOIN users u ON p.user_id = u.id
WHERE p.user_id = 3
)sp ON sp.pid = n.post_id
WHERE n.initiated_on < '2021-06-06T13:53:09.363477'
ORDER BY n.initiated_on DESC LIMIT 30;



SELECT COUNT(*)
FROM notifications n 
INNER JOIN (
    SELECT p.id post_id FROM posts p INNER JOIN users u ON u.id = p.user_id
    WHERE u.id = 3
)sp ON sp.post_id = n.post_id 
WHERE n.seen = 'f';