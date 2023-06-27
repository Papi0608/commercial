--
-- CMS1 Data
--   Template
--

use cms1;

--
-- テンプレート
--
INSERT INTO `t_template` (
  `name`
, `head`
, `html`
, `valid`
, `c_ts`
, `c_id`
, `c_ip`
)
VALUES
(
  'news_news_001'
, '/css/bootstrap.min.css\n/css/style.css'
, 'xxx\r\nyyy\r\nzzz'
, '1'
, NOW()
, '1'
, '127.0.0.1'
),
(
  'news_news_002'
, '/css/bootstrap.min.css\n/css/style.css'
, 'yyy'
, '1'
, NOW()
, '1'
, '127.0.0.1'
),
(
  'news_news_003'
, '/css/bootstrap.min.css\n/css/style.css'
, 'zzz'
, '1'
, NOW()
, '1'
, '127.0.0.1'
);

-- EOL
