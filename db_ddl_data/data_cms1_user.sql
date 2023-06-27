--
-- CMS1 Data
--   User
--

use cms1;

--
-- 認証
--
INSERT INTO `t_auth` (`login_id`, `password`) VALUES
('root',  '$2y$10$QolyHKFTAy30HrwI5Xq47u9RylaNro2SC6dItd6F6hSfYEbEAp7s.'),
('admin', '$2y$10$xq3cIaHuZuSO1Wh1tpQ/3OsS7E4ruRSRaDQ8xWfCmEHWDmIeo6Fcm'),
('user',  '$2y$10$Xxemugska6aShqAtvOtVk.j8q4/9sxNeov0U1ub6TYko1oJ5p27Su');

UPDATE `t_auth` SET c_ts = NOW(), c_id = 1, c_ip = '127.0.0.1';

--
-- 各担当員
--
INSERT INTO `t_member` (`aid`, `role`, `name`) VALUES
(1, 'システム管理者', 'System Administrator'),
(2, 'コンテンツ管理者', '記事 管理ユーザ'),
(3, 'コンテンツ編集者', '記事 編集ユーザ');

UPDATE `t_member` SET c_ts = NOW(), c_id = 1, c_ip = '127.0.0.1';

-- EOL
