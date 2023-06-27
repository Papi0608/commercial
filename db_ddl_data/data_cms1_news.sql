--
-- CMS1 Data
--   News
--

use cms1;

--
-- お知らせ
--
INSERT INTO `t_news` (
  `disp_date`
, `disp_order`
, `cate`
, `attr`
, `new_flg`
, `lang`
, `title`
, `detail_flg`
, `description`
, `link_type`
, `link_url`
, `attachment`
, `disp_flg`
, `del_flg`
, `c_ts`
, `c_id`
, `c_ip`
)
VALUES
(
  '2022-11-01 00:00:00'
, '5'
, '1'
, '1'
, '1'
, 'ja_jp'
, 'お知らせタイトル01'
, '0'
, 'デスクリプション01'
, '1'
, ''
, ''
, '0'
, '0'
, NOW()
, '1'
, '127.0.0.1'
),
(
  '2022-11-02 00:00:00'
, '4'
, '1'
, '2'
, '0'
, 'ja_jp'
, 'お知らせタイトル02'
, '0'
, 'デスクリプション02'
, '1'
, ''
, ''
, '1'
, '0'
, NOW()
, '1'
, '127.0.0.1'
),
(
  '2022-11-01 00:00:00'
, '3'
, '2'
, '1'
, '0'
, 'ja_jp'
, 'お知らせタイトル03'
, '0'
, 'デスクリプション03'
, '1'
, ''
, ''
, '1'
, '0'
, NOW()
, '1'
, '127.0.0.1'
);

-- EOL