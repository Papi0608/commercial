--
-- CMS1 Data
--   Fileset
--

use cms1;

--
-- ファイルセット
--
INSERT INTO `t_fileset` (
  `name`
, `html`
, `valid`
, `c_ts`
, `c_id`
, `c_ip`
)
VALUES
(
  'top'
, 'xxx\r\nyyy\r\nzzz'
, '1'
, NOW()
, '1'
, '127.0.0.1'
),
(
  'news'
, 'yyy'
, '1'
, NOW()
, '1'
, '127.0.0.1'
),
(
  'pickup'
, 'zzz'
, '1'
, NOW()
, '1'
, '127.0.0.1'
);

-- EOL
