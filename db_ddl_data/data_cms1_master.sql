--
-- CMS1 Data
--   Master Tables
--

use cms1;

--
-- 役割
--
INSERT INTO `m_role` (`seq`, `name`) VALUES
(1, 'システム管理者'),
(2, 'コンテンツ管理者'),
(3, 'コンテンツ編集者');

--
-- オフィスビル一覧用エリアコード
--
INSERT INTO `m_area_code` (`id`, `name`) VALUES
( 1, '丸の内、大手町、有楽町'),
( 4, 'その他 千代田区'),
( 5, '中央区'),
( 6, '港区'),
( 7, '新宿区'),
( 8, '渋谷区'),
( 9, '品川区'),
(10, 'その他 東京都内'),
(11, '横浜'),
(12, '札幌'),
(13, '仙台'),
(14, '名古屋'),
(15, '金沢'),
(16, '大阪・京都'),
(17, '広島'),
(18, '福岡');

--
-- 新ビル区分 ??????????
--

--
-- 検索用エリア（区）
--
INSERT INTO `m_srch_ward` (`id`, `name`) VALUES
(1, '千代田区'),
(2, '港区、中央区'),
(3, '新宿区'),
(4, '渋谷区'),
(5, 'その他 東京都内'),
(6, '東京以外');

--
-- 検索用エリア
--
INSERT INTO `m_srch_area` (`id`, `name`) VALUES
( 1, '丸の内、大手町、有楽町、日比谷、銀座'),
( 2, '神田、御茶ノ水'),
( 3, '内幸町、霞が関、虎ノ門、新橋、浜松町'),
( 4, '四ツ谷、麹町、番町'),
( 5, '赤坂、永田町、六本木'),
( 6, '日本橋、茅場町'),
( 7, '晴海、豊洲'),
( 8, '田町、品川、大崎'),
( 9, '新宿'),
(10, '渋谷、表参道、青山'),
(11, '目黒、恵比寿'),
(12, '横浜、みなとみらい'),
(13, '札幌'),
(14, '仙台'),
(15, '北陸'),
(16, '名古屋'),
(17, '大阪・京都'),
(18, '広島'),
(19, '福岡');

--
-- Yes or No
--
INSERT INTO `m_yes_no` (`id`, `name`) VALUES
(1, 'Yes'),
(2, 'No');

--
-- HVACシステム（日本）
--
INSERT INTO `m_hvac_system_ja_jp` (`id`, `name`) VALUES
( 1, '各階◯分割にゾーニング＋VAV方式'),
( 2, 'セントラル'),
( 3, 'セントラル＋空冷PAC空調区画あり'),
( 4, 'セントラル＋水冷PAC空調区画あり '),
( 5, '各階◯分割にゾーニング（空冷PAC空調）'),
( 6, '各階◯分割にゾーニング（水冷PAC空調）'),
( 7, '各階◯分割にゾーニング（空冷PAC空調）＋PAC毎に個別制御'), 
( 8, '各階◯分割にゾーニング（水冷PAC空調）＋PAC毎に個別制御 '),
( 9, 'フロア毎（空冷PAC空調）'),
(10, 'フロア毎（水冷PAC空調） '),
(11, 'フロア毎（空冷PAC空調）＋PAC毎に個別制御'),
(12, 'フロア毎（水冷PAC空調）＋PAC毎に個別制御');

--
-- HVACシステム（英語）
--
INSERT INTO `m_hvac_system_en_us` (`id`, `name`) VALUES
( 1, 'Divided into ○ sectors+VAV system'),
( 2, 'Central AC'),
( 3, 'Central AC, partially air-cooled packaged AC'),
( 4, 'Central AC, partially water-cooled packaged AC'),
( 5, 'Divided into ○ sectors (air-cooled packaged AC)'),
( 6, 'Divided into ○ sectors (water-cooled packaged AC)'),
( 7, 'Divided into ○ sectors (air-cooled packaged AC)+Individual control package'),
( 8, 'Divided into ○ sectors (water-cooled packaged AC)+Individual control package'),
( 9, 'Individual AC per floor (air-cooled packaged AC)'),
(10, 'Individual AC per floor (water-cooled packaged AC)'),
(11, 'Individual AC per floor (air-cooled packaged AC)+Individual control package'),
(12, 'Individual AC per floor (water-cooled packaged AC)+Individual control package');

--
-- ビルディング画像属性
--
INSERT INTO `m_bldg_img_attr` (`id`, `seq`, `name`) VALUES
(1, 1, '外観像'),
(2, 2, '商業施設画像（日）'),
(3, 3, '商業施設画像（英）'),
(4, 4, '基準階平面図画像（日）'),
(5, 5, '基準階平面図画像（英）'),
(6, 6, 'ギャラリー画像（日）'),
(7, 7, 'ギャラリー画像（英）'),
(8, 8, '追加平面図（日）'),
(9, 9, '追加平面図（英）');

-- EOL
