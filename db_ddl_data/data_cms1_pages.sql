--
-- CMS1 Data
--   Pages
--

use cms1;

--
-- ページ（デザイナーが作成したページ）
--
INSERT INTO `t_pages` (
  `name`
, `kana`
, `symbol`
, `fullpath`
, `u_ts`
)
VALUES
(
  'サンプルページ01'
, 'サンプルページ01'
, 'SAMPLE-01'
, '/var/www/stg/public/sample01.html'
, '2022-12-13 14:15:16'
),
(
  'サンプルページ02'
, 'サンプルページ02'
, 'SAMPLE-02'
, '/var/www/stg/public/sample02.html'
, '2022-12-13 14:15:16'
),
(
  'サンプルページ03'
, 'サンプルページ03'
, 'SAMPLE-03'
, '/var/www/stg/public/sample03.html'
, '2022-12-13 14:15:16'
);

-- EOL
