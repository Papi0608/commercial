--
-- CMS1 Data
--   Small
--

use cms1;

--
-- 小規模物件
--
INSERT INTO `t_small` (
  `bldg_code`
, `x_area`
, `x_bldg`
, `title_ja_jp`
, `notes_ja_jp`
, `title_en_us`
, `notes_en_us`
, `seq`
, `disp_flg`
, `del_flg`
, `c_ts`
, `c_id`
, `c_ip`
)
VALUES
(
  '11401'
, 'エリア001'
, 'ビル001'
, 'タイトル001'
, 'コメント001'
, 'title001'
, 'comment001'
, '1'
, '1'
, '0'
, NOW()
, '1'
, '127.0.0.1'
),
(
  '11402'
, 'エリア002'
, 'ビル002'
, 'タイトル002'
, 'コメント002'
, 'title002'
, 'comment002'
, '2'
, '1'
, '0'
, NOW()
, '1'
, '127.0.0.1'
),
(
  '11403'
, 'エリア003'
, 'ビル003'
, 'タイトル003'
, 'コメント003'
, 'title003'
, 'comment003'
, '3'
, '1'
, '0'
, NOW()
, '1'
, '127.0.0.1'
);

-- EOL
