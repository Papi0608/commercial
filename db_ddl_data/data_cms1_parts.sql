--
-- CMS1 Data
--   Parts
--

use cms1;

--
-- パーツ（デザイナーが作成したページのパーツ）
--
INSERT INTO `t_parts` (
  `page_symbol`
, `name`
, `template`
, `tag_attr` -- div_paty/image/div_text
, `tag_id`
, `content`
, `src`
, `txt`
, `preview`
, `valid`
, `c_ts`
, `c_id`
, `c_ip`
)
VALUES
(
  'SAMPLE-01'
, 'サンプル01_001_パーツ'
, 'news_news_002'
, 'div_part'
, 'sample01_001_div01'
, '<div><table><tr><td colspan="2" style="text-align: center;"><span style="font-size: 30px;">サンプル01_001</span></td></tr><tr><td><img src="/img/sample01.jpg" width="80" id="sample01_001_image01"></td><td id="sample01_001_text01">サンプル01_001 サンプル01_001 サンプル01_001<br>サンプル01_001 サンプル01_001 サンプル01_001</td><tr></tr></table><hr></div>'
, ''
, ''
, 'sample01_001_div01'
, '1'
, NOW()
, '1'
, '127.0.0.1'
),
(
  'SAMPLE-01'
, 'サンプル01_001_画像'
, 'news_news_002'
, 'image'
, 'sample01_001_img01'
, ''
, '/var/www/stg/public/img/sample01.jpg'
, ''
, 'sample01_001_div01'
, '1'
, NOW()
, '1'
, '127.0.0.1'
),
(
  'SAMPLE-01'
, 'サンプル01_001_文言'
, 'news_news_002'
, 'div_text'
, 'sample01_001_txt01'
, ''
, ''
, 'サンプル01_001 サンプル01_001 サンプル01_001<br>サンプル01_001 サンプル01_001 サンプル01_001'
, 'sample01_001_div01'
, '1'
, NOW()
, '1'
, '127.0.0.1'
);

-- EOL
