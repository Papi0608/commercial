--
-- CMS1 Data
--   Recommend
--

use cms1;

--
-- おすすめピックアップ
--
INSERT INTO `t_recommend` (
  `disp_date`
, `disp_order`
, `cate`
, `attr`
, `new_flg`
, `lang`
, `title`
, `description`
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
, '2'
, '1'
, '1'
, '1'
, 'ja_jp'
, 'お知らせタイトル01'
, 'デスクリプション01'
, 'pick01.png'
, '1'
, '0'
, NOW()
, '1'
, '127.0.0.1'
),
(
  '2022-11-02 00:00:00'
, '5'
, '1'
, '2'
, '0'
, 'ja_jp'
, 'お知らせタイトル02'
, 'デスクリプション02'
, 'pick02.png'
, '0'
, '0'
, NOW()
, '1'
, '127.0.0.1'
),
(
  '2022-11-03 00:00:00'
, '8'
, '2'
, '1'
, '0'
, 'ja_jp'
, 'お知らせタイトル03'
, 'デスクリプション03'
, 'pick03.png'
, '1'
, '0'
, NOW()
, '1'
, '127.0.0.1'
);

-- EOL
