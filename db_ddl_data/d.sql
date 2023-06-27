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
--
-- CMS1 Data
--   CSV Data
--

use cms1;

--
-- ビルディングCSVデータ
--
INSERT INTO `t_building_csv`
(
  `bldg_code`
, `name_ja_jp`
, `name_en_us`
, `name_kana`
, `area_code`
, `bldg_kubun`
, `pref_ja_jp`
, `loca_ja_jp`
, `pref_en_us`
, `loca_en_us`
, `srch_ward`
, `srch_area`
, `use_route`
, `acc01_ja_jp`
, `acc02_ja_jp`
, `acc03_ja_jp`
, `acc04_ja_jp`
, `acc05_ja_jp`
, `acc06_ja_jp`
, `acc01_en_us`
, `acc02_en_us`
, `acc03_en_us`
, `acc04_en_us`
, `acc05_en_us`
, `acc06_en_us`
, `appeal_ja_jp`
, `appeal_en_us`
, `dep_ja_jp`
, `dep_en_us`
, `person_ja_jp`
, `person_en_us`
, `person_tel`
, `person_email`
, `rain`
, `scale_ja_jp`
, `scale_en_us`
, `address_ja_jp`
, `completion_ja_jp`
, `extension_ja_jp`
, `renovation_ja_jp`
, `floors_ja_jp`
, `structure_ja_jp`
, `gross_area_ja_jp`
, `net_area_ja_jp`
, `site_area_ja_jp`
, `bldg_height_ja_jp`
, `architect_ja_jp`
, `elevators_ja_jp`
, `hvac_system_ja_jp`
, `hvac_office_ja_jp`
, `hvac_retail_ja_jp`
, `com_infra_ja_jp`
, `office_lobby`
, `emergency_power`
, `open_hours_ja_jp`
, `dining_facilities`
, `vip_correspondense`
, `management_form`
, `security_system_ja_jp`
, `refresh_space_ja_jp`
, `parking_space_ja_jp`
, `parking_open_ja_jp`
, `comments_ja_jp`
, `floor_area_ja_jp`
, `floor_load_ja_jp`
, `small_area`
, `ceiling_height_ja_jp`
, `outlet_capacity_ja_jp`
, `raised_floor_ja_jp`
, `bathroom_ja_jp`
, `pantry_ja_jp`
, `bldg_site_ja_jp`
, `address_en_us`
, `completion_en_us`
, `extension_en_us`
, `renovation_en_us`
, `floors_en_us`
, `structure_en_us`
, `gross_area_en_us`
, `net_area_en_us`
, `site_area_en_us`
, `bldg_height_en_us`
, `architect_en_us`
, `elevators_en_us`
, `hvac_system_en_us`
, `hvac_office_en_us`
, `hvac_retail_en_us`
, `refresh_space_en_us`
, `com_infra_en_us`
, `open_hours_en_us`
, `security_system_en_us`
, `after_hours_access_en_us`
, `parking_space_en_us`
, `parking_open_en_us`
, `comments_en_us`
, `floor_area_en_us`
, `floor_load_en_us`
, `ceiling_height_en_us`
, `outlet_capacity_en_us`
, `raised_floor_en_us`
, `bathroom_en_us`
, `pantry_en_us`
, `bldg_site_en_us`
, `nearest_station_ja_jp`
, `nearest_station_en_us`
, `del_flg`
, `c_ts`
, `c_id`
, `c_ip`
)
VALUES
(
'0111K9',
'ＣＩＲＣＬＥＳ市ヶ谷',
'Circles Ichigaya',
'サークルズイチガヤ',
'4',
'1',
'東京都',
'東京都千代田区四番町4番地19、20、21（地番）',
'Tokyo',
'4-19/20/21,Yonbancho,Chiyoda-ku',
'1',
'4',
'301,108,203,106,301',
'301_市ケ谷駅_徒歩4分',
'108_市ケ谷駅_徒歩4分',
'203_市ケ谷駅_徒歩4分',
'106_麹町駅_徒歩3分',
'301_四ツ谷駅_徒歩8分',
'',
'○ minutes walk from_301_Ichigaya Sta.',
'○ minutes walk from_108_Ichigaya Sta.',
'○ minutes walk from_203_Ichigaya Sta.',
'',
'',
'',
'',
'',
'',
'Office Leasing and Tenant Relations Dept.',
'',
'',
'03-3287-5310',
'lea_sing@mec.co.jp',
'2',
'地上 9階・地下 1階・塔屋 1階',
'9 stories above ground|&1 story below ground|&1 roof structure',
'東京都東京都千代田区四番町4番地19、20、21（地番）',
'2022年11月',
'',
'',
'地上 9階・地下 1階・塔屋 1階',
'鉄骨造・一部鉄筋コンクリート増',
'3,707.07㎡ (1,121.39坪)',
'',
'540.66㎡ (163.55坪)',
'最高軒高 36.4ｍ 最高部 37.1ｍ',
'',
'乗用 2台　貨物用 2台',
'フロア毎（空冷PAC空調）',
'',
'',
'',
'2',
'2',
'',
'2',
'2',
'',
'',
'',
'8台',
'',
'',
'368.16㎡ (111.37坪)',
'',
'2',
'3,320mm（ＯＡフロア設置後）',
'50VA/㎡',
'有　高さ50mm',
'',
'',
'https://mec-circles.com/series/ichigaya/',
'4-19/20/21,Yonbancho,Chiyoda-ku,Tokyo',
'11/2022',
'',
'',
'9 stories above ground|&1 story below ground|&1 roof structure',
'',
'3,707.07sq.mt. (39,888.07sq.ft.)',
'',
'540.66sq.mt. (5,817.50sq.ft.)',
'Maximum eaves height 36.4m|&Maximum height 37.1m',
'',
'2 (passenger)  2 (freight)',
'Individual AC per floor (air-cooled packaged AC)',
'',
'',
'',
'',
'',
'',
'',
'8',
'',
'',
'368.16sq.mt. (3,961.40sq.ft.)',
'',
'3,320mm|&(after setting raised floor)',
'50VA/sq.mt.',
'50mm',
'1 for men, 1 for women per floor',
'',
'',
'市ケ谷駅',
'Ichigaya Sta.',
0,
NOW(),
1,
'127.0.0.1'
),
(
'11408',
'丸の内二丁目ビル',
'Marunouchi 2-chome Building',
'マルノウチニチヨウメビル',
'1',
'0',
'東京都',
'千代田区丸の内二丁目5番1号',
'Tokyo',
'5-1,Marunouchi 2-chome,Chiyoda-ku',
'1',
'1',
'301,102',
'301_東京駅_徒歩3分',
'102_東京駅_徒歩3分',
'',
'',
'',
'',
'3 minutes walk from_301_Tokyo Sta.',
'3 minutes walk from_102_Tokyo Sta.',
'',
'',
'',
'',
'',
'',
'',
'Office Leasing and Tenant Relations Dept.',
'',
'',
'03-3287-5310',
'lea_sing@mec.co.jp',
'1',
'地上 10階・地下 4階・塔屋 2階',
'10 stories above ground|&4 stories below ground|&2 roof structures',
'東京都千代田区丸の内二丁目5番1号',
'1964年7月',
'1973年3月',
'',
'地上 10階・地下 4階・塔屋 2階',
'鉄骨鉄筋コンクリート造',
'45,985.39㎡ (13,910.58坪)',
'28,264.79㎡ (8,550.10坪)',
'3,708.66㎡ (1,121.87坪)',
'最高軒高 34.4ｍ 最高部 43.0ｍ',
'三菱地所（株）',
'乗用 9台　貨物用 2台',
'',
'平日 9:00-18:00(夏期 9:00-19:00)|&土曜 設定無し|&日祝 設定無し',
'',
'光ファイバ敷設済',
'2',
'2',
'全日 1F 8:00-21:00',
'2',
'2',
'２４時間有人管理',
'インターフォンによる呼出',
'',
'67台 (高さ 2,100mm)',
'全日 5:00-24:00|&定期契約車は24時間入出庫可',
'',
'3,022.00㎡ (914.16坪)',
'床荷重 300kg/㎡',
'1',
'2,675mm（ＯＡフロア設置後）',
'40VA/㎡ 増設対応可能',
'有　高さ50mm',
'',
'各2カ所',
'',
'5-1, Marunouchi 2-chome,Chiyoda-ku,Tokyo',
'7/1964',
'3/1973',
'',
'10 stories above ground|&4 stories below ground|&2 roof structures',
'Steel Frame & Reinforced Concrete',
'45,985.39sq.mt. (494,802.80sq.ft.)',
'28,264.79sq.mt. (304,129.14sq.ft.)',
'3,708.66sq.mt. (39,905.18sq.ft.)',
'Maximum eaves height 34.4m|&Maximum height 43.0m',
'Mitsubishi Estate Co., Ltd.',
'9 (passenger)  2 (freight)',
'',
'Weekdays 9:00-18:00|&(Summer season 9:00-19:00)',
'',
'',
'Fiber optics cables already available',
'Everyday 1F 8:00-21:00',
'Manned security control|&(24 hours)',
'Talk on intercom',
'67 (2,100mm Height limit)',
'Everyday 5:00-24:00|&24 hours access available by monthly contract holder',
'',
'3,022.00sq.mt. (32,516.72sq.ft.)',
'standard 300kg/sq.mt.',
'2,675mm|&(after setting raised floor)',
'40VA/sq.mt.|&Reinforcement available',
'50mm',
'1 for men, 1 for women per floor',
'2 per floor',
'',
'東京駅',
'Tokyo Sta.', 
0,
NOW(),
1,
'127.0.0.1'
),
(
'11415',
'丸の内永楽ビルディング',
'Marunouchi Eiraku Building',
'マルノウチエイラクビルデイング',
'1',
'0',
'東京都',
'千代田区丸の内一丁目4番1号',
'Tokyo',
'4-1,Marunouchi 1-chome,Chiyoda-ku',
'1',
'1',
'104,301',
'104_大手町駅_直結',
'301_東京駅_地下通路にて利用可能',
'',
'',
'',
'',
'Direct access from_104_Otemachi Sta.',
'Direct through underground passage from_301_Tokyo Sta.',
'',
'',
'',
'',
'',
'',
'',
'Office Leasing and Tenant Relations Dept.',
'',
'',
'03-3287-5310',
'lea_sing@mec.co.jp',
'1',
'地上 27階・地下 4階・塔屋 3階',
'27 stories above ground|&4 stories below ground|&3 roof structures',
'東京都千代田区丸の内一丁目4番1号',
'2012年1月',
'',
'',
'地上 27階・地下 4階・塔屋 3階',
'鉄骨造・一部鉄骨鉄筋コンクリート造',
'139,684.30㎡ (42,254.50坪)',
'48,929.28㎡ (14,801.11坪)',
'8,033.94㎡ (2,430.27坪)',
'最高軒高 150.0ｍ 最高部 150.0ｍ',
'㈱三菱地所設計',
'乗用 24台　貨物用 2台',
'各階7分割にゾーニング＋VAV方式',
'平日 8:30-19:00|&土曜 設定無し|&日祝 設定無し',
'全日 フロア・業態毎に設定',
'光ファイバ敷設済|&高速インターネットサービス利用可',
'1',
'2',
'全日 6:00-24:30',
'1',
'2',
'２４時間有人管理',
'カードによる入退館',
'',
'136台 (高さ 3,000mm)',
'全日 6:00-24:30|&定期契約車は24時間入出庫可',
'',
'2,562.56㎡ (775.17坪)〜3,344.76㎡ (1,011.79坪)',
'床荷重 500kg/㎡　HDZ(重荷重対応) 1,000kg/㎡',
'1',
'2,850mm（ＯＡフロア設置後）',
'75VA/㎡',
'有　高さ150mm',
'',
'各2カ所',
'',
'4-1, Marunouchi 1-chome,Chiyoda-ku,Tokyo',
'1/2012',
'',
'',
'27 stories above ground|&4 stories below ground|&3 roof structures',
'Steel Frame (partially reinforced concrete)',
'139,684.30sq.mt. (1,503,003.07sq.ft.)',
'48,929.28sq.mt. (526,479.05sq.ft.)',
'8,033.94sq.mt. (86,445.19sq.ft.)',
'Maximum eaves height 150.0m|&Maximum height 150.0m',
'Mitsubishi Jisho Design Inc.',
'24 (passenger)  2 (freight)',
'Divided into 7 sectors+VAV system',
'Weekdays 8:30-19:00',
'Everyday フロア・業態毎に設定',
'',
'Fiber optics cables already available|&High-speed internet connection available',
'Everyday 6:00-24:30',
'Manned security control|&(24 hours)',
'Use in card',
'136 (3,000mm Height limit)',
'Everyday 6:00-24:30|&24 hours access available by monthly contract holder',
'',
'2,562.56sq.mt. (27,573.15sq.ft.)|&-3,344.76sq.mt. (35,989.62sq.ft.)',
'standard 500kg/sq.mt.|&(partially 1,000kg/sq.mt.)',
'2,850mm|&(after setting raised floor)',
'75VA/sq.mt.',
'150mm',
'1 for men, 1 for women per floor',
'2 per floor',
'',
'大手町駅',
'Otemachi Sta.',
0,
NOW(),
1,
'127.0.0.1'
);

-- EOL
--
-- CMS1 Data
--   CSV Filter
--

use cms1;

--
-- 認証
--
INSERT INTO `m_bldg_csv_filter` (`id`, `excel_column`, `physical`, `logical`) VALUES
(0, 'A', 'bldg_code', 'ビルコード'),
(1, 'B', 'name_ja_jp', 'ビル名'),
(2, 'C', 'name_en_us', 'ビル名(英語)'),
(3, 'D', 'name_kana', 'ビル名(カナ)'),
(4, 'E', 'area_code', 'オフィスビル一覧用エリアコード'),
(5, 'F', 'bldg_kubun', '新ビル区分'),
(6, 'G', 'pref_ja_jp', '都道府県名'),
(7, 'H', 'loca_ja_jp', '所在地'),
(8, 'I', 'pref_en_us', '都道府県名(英語)'),
(9, 'J', 'loca_en_us', '所在地(英語)'),
(10, 'K', 'srch_ward', '検索用エリア（区）'),
(11, 'L', 'srch_area', '検索用エリア'),
(12, 'M', 'use_route', '利用可能路線'),
(13, 'N', 'acc01_ja_jp', 'アクセス①'),
(14, 'O', 'acc02_ja_jp', 'アクセス②'),
(15, 'P', 'acc03_ja_jp', 'アクセス③'),
(16, 'Q', 'acc04_ja_jp', 'アクセス④'),
(17, 'R', 'acc05_ja_jp', 'アクセス⑤'),
(18, 'S', 'acc06_ja_jp', 'アクセス⑥'),
(19, 'T', 'acc01_en_us', 'アクセス(英語)①'),
(20, 'U', 'acc02_en_us', 'アクセス(英語)②'),
(21, 'V', 'acc03_en_us', 'アクセス(英語)③'),
(22, 'W', 'acc04_en_us', 'アクセス(英語)④'),
(23, 'X', 'acc05_en_us', 'アクセス(英語)⑤'),
(24, 'Y', 'acc06_en_us', 'アクセス(英語)⑥'),
(25, 'Z', 'appeal_ja_jp', 'アピール'),
(26, 'AA', 'appeal_en_us', 'アピール(英語)'),
(27, 'AB', 'dep_ja_jp', '担当部署名'),
(28, 'AC', 'dep_en_us', '担当部署名(英語)'),
(29, 'AD', 'person_ja_jp', '担当者名'),
(30, 'AE', 'person_en_us', '担当者名(英語)'),
(31, 'AF', 'person_tel', '担当者電話番号'),
(32, 'AG', 'person_email', '担当者メールアドレス'),
(33, 'AH', 'rain', '雨に濡れない'),
(34, 'AI', 'scale_ja_jp', '建物規模'),
(35, 'AJ', 'scale_en_us', '建物規模(英語)'),
(36, 'AK', '', '(空)'),
(37, 'AL', 'address_ja_jp', '所　　在　　地'),
(38, 'AM', 'completion_ja_jp', '竣　工　年　月'),
(39, 'AN', 'extension_ja_jp', '増　築　年　月'),
(40, 'AO', 'renovation_ja_jp', '最新リニューアル完了年月'),
(41, 'AP', 'floors_ja_jp', '規　　　　　模'),
(42, 'AQ', 'structure_ja_jp', '構　　　　　造'),
(43, 'AR', 'gross_area_ja_jp', '延　床　面　積'),
(44, 'AS', 'net_area_ja_jp', '有　効　面　積'),
(45, 'AT', 'site_area_ja_jp', '敷　地　面　積'),
(46, 'AU', 'bldg_height_ja_jp', '建　物　高　さ'),
(47, 'AV', 'architect_ja_jp', '設　計　監　理'),
(48, 'AW', 'elevators_ja_jp', 'エレベーター'),
(49, 'AX', 'hvac_system_ja_jp', '空　調　設　備'),
(50, 'AY', 'hvac_office_ja_jp', '基準冷暖房供給|&時間（事務所）'),
(51, 'AZ', 'hvac_retail_ja_jp', '基準冷暖房供給|&時間（店　舗）'),
(52, 'BA', '', '(空)'),
(53, 'BB', 'com_infra_ja_jp', '通信インフラ'),
(54, 'BC', 'office_lobby', 'オフィスロビー（セキュリティゲート）'),
(55, 'BD', 'emergency_power', '停電時のテナント専用部電力供給'),
(56, 'BE', 'open_hours_ja_jp', '開閉館時間'),
(57, 'BF', 'dining_facilities', '飲食施設充実'),
(58, 'BG', 'vip_correspondense', 'VIP対応'),
(59, 'BH', 'management_form', '管　理　形　態'),
(60, 'BI', 'security_system_ja_jp', '夜間入退館方法'),
(61, 'BJ', 'refresh_space_ja_jp', 'リフレッシュコーナー'),
(62, 'BK', 'parking_space_ja_jp', 'ガレージ収容台数'),
(63, 'BL', 'parking_open_ja_jp', 'ガレージ営業時間'),
(64, 'BM', 'comments_ja_jp', '特　記　事　項'),
(65, 'BN', '', '(空)'),
(66, 'BO', '', '(空)'),
(67, 'BP', '', '(空)'),
(68, 'BQ', '', '(空)'),
(69, 'BR', '', '(空)'),
(70, 'BS', '', '(空)'),
(71, 'BT', '', '(空)'),
(72, 'BU', '', '(空)'),
(73, 'BV', '', '(空)'),
(74, 'BW', '', '(空)'),
(75, 'BX', '', '(空)'),
(76, 'BY', '', '(空)'),
(77, 'BZ', '', '(空)'),
(78, 'CA', 'floor_area_ja_jp', '床　　面　　積'),
(79, 'CB', 'floor_load_ja_jp', '床　　荷　　重'),
(80, 'CC', 'small_area', '小規模面積あり'),
(81, 'CD', 'ceiling_height_ja_jp', '天　　井　　高'),
(82, 'CE', 'outlet_capacity_ja_jp', 'コンセント容量'),
(83, 'CF', 'raised_floor_ja_jp', 'ＯＡフロア'),
(84, 'CG', 'bathroom_ja_jp', 'ト　　イ　　レ'),
(85, 'CH', 'pantry_ja_jp', '給　　湯　　室'),
(86, 'CI', '', '(空)'),
(87, 'CJ', '', '(空)'),
(88, 'CK', '', '(空)'),
(89, 'CL', '', '(空)'),
(90, 'CM', '', '(空)'),
(91, 'CN', '', '(空)'),
(92, 'CO', '', '(空)'),
(93, 'CP', '', '(空)'),
(94, 'CQ', '', '(空)'),
(95, 'CR', '', '(空)'),
(96, 'CS', '', '(空)'),
(97, 'CT', '', '(空)'),
(98, 'CU', '', '(空)'),
(99, 'CV', 'bldg_site_ja_jp', '公式ホームページ'),
(100, 'CW', '', '(空)'),
(101, 'CX', '', '(空)'),
(102, 'CY', '', '(空)'),
(103, 'CZ', '', '(空)'),
(104, 'DA', '', '(空)'),
(105, 'DB', '', '(空)'),
(106, 'DC', 'address_en_us', 'Address'),
(107, 'DD', 'completion_en_us', 'Completion'),
(108, 'DE', 'extension_en_us', 'Extension'),
(109, 'DF', 'renovation_en_us', 'Renovation'),
(110, 'DG', 'floors_en_us', 'Number of|&floors'),
(111, 'DH', 'structure_en_us', 'Structure'),
(112, 'DI', 'gross_area_en_us', 'Gross area'),
(113, 'DJ', 'net_area_en_us', 'Net area'),
(114, 'DK', 'site_area_en_us', 'Site area'),
(115, 'DL', 'bldg_height_en_us', 'Building height'),
(116, 'DM', 'architect_en_us', 'Architect'),
(117, 'DN', 'elevators_en_us', 'Elevators'),
(118, 'DO', 'hvac_system_en_us', 'HVAC system'),
(119, 'DP', 'hvac_office_en_us', 'Standard HVAC|&hours (office)'),
(120, 'DQ', 'hvac_retail_en_us', 'Standard HVAC|&hours (retail)'),
(121, 'DR', 'refresh_space_en_us', 'Refreshment|&space'),
(122, 'DS', 'com_infra_en_us', 'Communication|&infrastructure'),
(123, 'DT', 'open_hours_en_us', 'Open hours'),
(124, 'DU', 'security_system_en_us', 'Security system'),
(125, 'DV', 'after_hours_access_en_us', 'After hours access'),
(126, 'DW', '', '(空)'),
(127, 'DX', 'parking_space_en_us', 'Parking space'),
(128, 'DY', 'parking_open_en_us', 'Parking open hours'),
(129, 'DZ', 'comments_en_us', 'Comments'),
(130, 'EA', '', '(空)'),
(131, 'EB', '', '(空)'),
(132, 'EC', '', '(空)'),
(133, 'ED', '', '(空)'),
(134, 'EE', '', '(空)'),
(135, 'EF', '', '(空)'),
(136, 'EG', '', '(空)'),
(137, 'EH', '', '(空)'),
(138, 'EI', '', '(空)'),
(139, 'EJ', '', '(空)'),
(140, 'EK', '', '(空)'),
(141, 'EL', '', '(空)'),
(142, 'EM', '', '(空)'),
(143, 'EN', '', '(空)'),
(144, 'EO', '', '(空)'),
(145, 'EP', '', '(空)'),
(146, 'EQ', 'floor_area_en_us', 'Typical floor area'),
(147, 'ER', 'floor_load_en_us', 'Floor load'),
(148, 'ES', 'ceiling_height_en_us', 'Floor-to-ceiling'),
(149, 'ET', 'outlet_capacity_en_us', 'Electric (outlet)|&capacity'),
(150, 'EU', 'raised_floor_en_us', 'raised floor'),
(151, 'EV', 'bathroom_en_us', 'Bathroom'),
(152, 'EW', 'pantry_en_us', 'Pantry'),
(153, 'EX', '', '(空)'),
(154, 'EY', '', '(空)'),
(155, 'EZ', '', '(空)'),
(156, 'FA', '', '(空)'),
(157, 'FB', '', '(空)'),
(158, 'FC', '', '(空)'),
(159, 'FD', '', '(空)'),
(160, 'FE', '', '(空)'),
(161, 'FF', '', '(空)'),
(162, 'FG', '', '(空)'),
(163, 'FH', '', '(空)'),
(164, 'FI', '', '(空)'),
(165, 'FJ', '', '(空)'),
(166, 'FK', 'bldg_site_en_us', 'Bldg. site'),
(167, 'FL', '', '(空)'),
(168, 'FM', '', '(空)'),
(169, 'FN', '', '(空)'),
(170, 'FO', '', '(空)'),
(171, 'FP', '', '(空)'),
(172, 'FQ', '', '(空)'),
(173, 'FR', '', '(空)'),
(174, 'FS', '', '(空)'),
(175, 'FT', '', '(空)'),
(176, 'FU', '', '(空)'),
(177, 'FV', '', '(空)'),
(178, 'FW', '', '(空)'),
(179, 'FX', '', '(空)'),
(180, 'FY', '', '(空)'),
(181, 'FZ', 'nearest_station_ja_jp', '最　寄　駅'),
(182, 'GA', 'nearest_station_en_us', 'Nearest Station');

-- EOL
--
-- CMS1 Data
--   CSV Data
--

use cms1;

--
-- ビルディングCSVデータ
--
INSERT INTO `t_building`
(
  `bldg_code`
, `name_ja_jp`
, `name_en_us`
, `name_kana`
, `area_code`
, `bldg_kubun`
, `pref_ja_jp`
, `loca_ja_jp`
, `pref_en_us`
, `loca_en_us`
, `srch_ward`
, `srch_area`
, `use_route`
, `acc01_ja_jp`
, `acc02_ja_jp`
, `acc03_ja_jp`
, `acc04_ja_jp`
, `acc05_ja_jp`
, `acc06_ja_jp`
, `acc01_en_us`
, `acc02_en_us`
, `acc03_en_us`
, `acc04_en_us`
, `acc05_en_us`
, `acc06_en_us`
, `appeal_ja_jp`
, `appeal_en_us`
, `dep_ja_jp`
, `dep_en_us`
, `person_ja_jp`
, `person_en_us`
, `person_tel`
, `person_email`
, `rain`
, `scale_ja_jp`
, `scale_en_us`
, `address_ja_jp`
, `completion_ja_jp`
, `extension_ja_jp`
, `renovation_ja_jp`
, `floors_ja_jp`
, `structure_ja_jp`
, `gross_area_ja_jp`
, `net_area_ja_jp`
, `site_area_ja_jp`
, `bldg_height_ja_jp`
, `architect_ja_jp`
, `elevators_ja_jp`
, `hvac_system_ja_jp`
, `hvac_office_ja_jp`
, `hvac_retail_ja_jp`
, `com_infra_ja_jp`
, `office_lobby`
, `emergency_power`
, `open_hours_ja_jp`
, `dining_facilities`
, `vip_correspondense`
, `management_form`
, `security_system_ja_jp`
, `refresh_space_ja_jp`
, `parking_space_ja_jp`
, `parking_open_ja_jp`
, `comments_ja_jp`
, `floor_area_ja_jp`
, `floor_load_ja_jp`
, `small_area`
, `ceiling_height_ja_jp`
, `outlet_capacity_ja_jp`
, `raised_floor_ja_jp`
, `bathroom_ja_jp`
, `pantry_ja_jp`
, `bldg_site_ja_jp`
, `address_en_us`
, `completion_en_us`
, `extension_en_us`
, `renovation_en_us`
, `floors_en_us`
, `structure_en_us`
, `gross_area_en_us`
, `net_area_en_us`
, `site_area_en_us`
, `bldg_height_en_us`
, `architect_en_us`
, `elevators_en_us`
, `hvac_system_en_us`
, `hvac_office_en_us`
, `hvac_retail_en_us`
, `refresh_space_en_us`
, `com_infra_en_us`
, `open_hours_en_us`
, `security_system_en_us`
, `after_hours_access_en_us`
, `parking_space_en_us`
, `parking_open_en_us`
, `comments_en_us`
, `floor_area_en_us`
, `floor_load_en_us`
, `ceiling_height_en_us`
, `outlet_capacity_en_us`
, `raised_floor_en_us`
, `bathroom_en_us`
, `pantry_en_us`
, `bldg_site_en_us`
, `nearest_station_ja_jp`
, `nearest_station_en_us`
, `del_flg`
, `c_ts`
, `c_id`
, `c_ip`
)
VALUES
(
'0111K9',
'ＣＩＲＣＬＥＳ市ヶ谷',
'Circles Ichigaya',
'サークルズイチガヤ',
'4',
'1',
'東京都',
'東京都千代田区四番町4番地19、20、21（地番）',
'Tokyo',
'4-19/20/21,Yonbancho,Chiyoda-ku',
'1',
'4',
'301,108,203,106,301',
'301_市ケ谷駅_徒歩4分',
'108_市ケ谷駅_徒歩4分',
'203_市ケ谷駅_徒歩4分',
'106_麹町駅_徒歩3分',
'301_四ツ谷駅_徒歩8分',
'',
'○ minutes walk from_301_Ichigaya Sta.',
'○ minutes walk from_108_Ichigaya Sta.',
'○ minutes walk from_203_Ichigaya Sta.',
'',
'',
'',
'',
'',
'',
'Office Leasing and Tenant Relations Dept.',
'',
'',
'03-3287-5310',
'lea_sing@mec.co.jp',
'2',
'地上 9階・地下 1階・塔屋 1階',
'9 stories above ground|&1 story below ground|&1 roof structure',
'東京都東京都千代田区四番町4番地19、20、21（地番）',
'2022年11月',
'',
'',
'地上 9階・地下 1階・塔屋 1階',
'鉄骨造・一部鉄筋コンクリート増',
'3,707.07㎡ (1,121.39坪)',
'',
'540.66㎡ (163.55坪)',
'最高軒高 36.4ｍ 最高部 37.1ｍ',
'',
'乗用 2台　貨物用 2台',
'フロア毎（空冷PAC空調）',
'',
'',
'',
'2',
'2',
'',
'2',
'2',
'',
'',
'',
'8台',
'',
'',
'368.16㎡ (111.37坪)',
'',
'2',
'3,320mm（ＯＡフロア設置後）',
'50VA/㎡',
'有　高さ50mm',
'',
'',
'https://mec-circles.com/series/ichigaya/',
'4-19/20/21,Yonbancho,Chiyoda-ku,Tokyo',
'11/2022',
'',
'',
'9 stories above ground|&1 story below ground|&1 roof structure',
'',
'3,707.07sq.mt. (39,888.07sq.ft.)',
'',
'540.66sq.mt. (5,817.50sq.ft.)',
'Maximum eaves height 36.4m|&Maximum height 37.1m',
'',
'2 (passenger)  2 (freight)',
'Individual AC per floor (air-cooled packaged AC)',
'',
'',
'',
'',
'',
'',
'',
'8',
'',
'',
'368.16sq.mt. (3,961.40sq.ft.)',
'',
'3,320mm|&(after setting raised floor)',
'50VA/sq.mt.',
'50mm',
'1 for men, 1 for women per floor',
'',
'',
'市ケ谷駅',
'Ichigaya Sta.',
0,
NOW(),
1,
'127.0.0.1'
),
(
'11408',
'丸の内二丁目ビル',
'Marunouchi 2-chome Building',
'マルノウチニチヨウメビル',
'1',
'0',
'東京都',
'千代田区丸の内二丁目5番1号',
'Tokyo',
'5-1,Marunouchi 2-chome,Chiyoda-ku',
'1',
'1',
'301,102',
'301_東京駅_徒歩3分',
'102_東京駅_徒歩3分',
'',
'',
'',
'',
'3 minutes walk from_301_Tokyo Sta.',
'3 minutes walk from_102_Tokyo Sta.',
'',
'',
'',
'',
'',
'',
'',
'Office Leasing and Tenant Relations Dept.',
'',
'',
'03-3287-5310',
'lea_sing@mec.co.jp',
'1',
'地上 10階・地下 4階・塔屋 2階',
'10 stories above ground|&4 stories below ground|&2 roof structures',
'東京都千代田区丸の内二丁目5番1号',
'1964年7月',
'1973年3月',
'',
'地上 10階・地下 4階・塔屋 2階',
'鉄骨鉄筋コンクリート造',
'45,985.39㎡ (13,910.58坪)',
'28,264.79㎡ (8,550.10坪)',
'3,708.66㎡ (1,121.87坪)',
'最高軒高 34.4ｍ 最高部 43.0ｍ',
'三菱地所（株）',
'乗用 9台　貨物用 2台',
'',
'平日 9:00-18:00(夏期 9:00-19:00)|&土曜 設定無し|&日祝 設定無し',
'',
'光ファイバ敷設済',
'2',
'2',
'全日 1F 8:00-21:00',
'2',
'2',
'２４時間有人管理',
'インターフォンによる呼出',
'',
'67台 (高さ 2,100mm)',
'全日 5:00-24:00|&定期契約車は24時間入出庫可',
'',
'3,022.00㎡ (914.16坪)',
'床荷重 300kg/㎡',
'1',
'2,675mm（ＯＡフロア設置後）',
'40VA/㎡ 増設対応可能',
'有　高さ50mm',
'',
'各2カ所',
'',
'5-1, Marunouchi 2-chome,Chiyoda-ku,Tokyo',
'7/1964',
'3/1973',
'',
'10 stories above ground|&4 stories below ground|&2 roof structures',
'Steel Frame & Reinforced Concrete',
'45,985.39sq.mt. (494,802.80sq.ft.)',
'28,264.79sq.mt. (304,129.14sq.ft.)',
'3,708.66sq.mt. (39,905.18sq.ft.)',
'Maximum eaves height 34.4m|&Maximum height 43.0m',
'Mitsubishi Estate Co., Ltd.',
'9 (passenger)  2 (freight)',
'',
'Weekdays 9:00-18:00|&(Summer season 9:00-19:00)',
'',
'',
'Fiber optics cables already available',
'Everyday 1F 8:00-21:00',
'Manned security control|&(24 hours)',
'Talk on intercom',
'67 (2,100mm Height limit)',
'Everyday 5:00-24:00|&24 hours access available by monthly contract holder',
'',
'3,022.00sq.mt. (32,516.72sq.ft.)',
'standard 300kg/sq.mt.',
'2,675mm|&(after setting raised floor)',
'40VA/sq.mt.|&Reinforcement available',
'50mm',
'1 for men, 1 for women per floor',
'2 per floor',
'',
'東京駅',
'Tokyo Sta.', 
0,
NOW(),
1,
'127.0.0.1'
),
(
'11415',
'丸の内永楽ビルディング',
'Marunouchi Eiraku Building',
'マルノウチエイラクビルデイング',
'1',
'0',
'東京都',
'千代田区丸の内一丁目4番1号',
'Tokyo',
'4-1,Marunouchi 1-chome,Chiyoda-ku',
'1',
'1',
'104,301',
'104_大手町駅_直結',
'301_東京駅_地下通路にて利用可能',
'',
'',
'',
'',
'Direct access from_104_Otemachi Sta.',
'Direct through underground passage from_301_Tokyo Sta.',
'',
'',
'',
'',
'',
'',
'',
'Office Leasing and Tenant Relations Dept.',
'',
'',
'03-3287-5310',
'lea_sing@mec.co.jp',
'1',
'地上 27階・地下 4階・塔屋 3階',
'27 stories above ground|&4 stories below ground|&3 roof structures',
'東京都千代田区丸の内一丁目4番1号',
'2012年1月',
'',
'',
'地上 27階・地下 4階・塔屋 3階',
'鉄骨造・一部鉄骨鉄筋コンクリート造',
'139,684.30㎡ (42,254.50坪)',
'48,929.28㎡ (14,801.11坪)',
'8,033.94㎡ (2,430.27坪)',
'最高軒高 150.0ｍ 最高部 150.0ｍ',
'㈱三菱地所設計',
'乗用 24台　貨物用 2台',
'各階7分割にゾーニング＋VAV方式',
'平日 8:30-19:00|&土曜 設定無し|&日祝 設定無し',
'全日 フロア・業態毎に設定',
'光ファイバ敷設済|&高速インターネットサービス利用可',
'1',
'2',
'全日 6:00-24:30',
'1',
'2',
'２４時間有人管理',
'カードによる入退館',
'',
'136台 (高さ 3,000mm)',
'全日 6:00-24:30|&定期契約車は24時間入出庫可',
'',
'2,562.56㎡ (775.17坪)〜3,344.76㎡ (1,011.79坪)',
'床荷重 500kg/㎡　HDZ(重荷重対応) 1,000kg/㎡',
'1',
'2,850mm（ＯＡフロア設置後）',
'75VA/㎡',
'有　高さ150mm',
'',
'各2カ所',
'',
'4-1, Marunouchi 1-chome,Chiyoda-ku,Tokyo',
'1/2012',
'',
'',
'27 stories above ground|&4 stories below ground|&3 roof structures',
'Steel Frame (partially reinforced concrete)',
'139,684.30sq.mt. (1,503,003.07sq.ft.)',
'48,929.28sq.mt. (526,479.05sq.ft.)',
'8,033.94sq.mt. (86,445.19sq.ft.)',
'Maximum eaves height 150.0m|&Maximum height 150.0m',
'Mitsubishi Jisho Design Inc.',
'24 (passenger)  2 (freight)',
'Divided into 7 sectors+VAV system',
'Weekdays 8:30-19:00',
'Everyday フロア・業態毎に設定',
'',
'Fiber optics cables already available|&High-speed internet connection available',
'Everyday 6:00-24:30',
'Manned security control|&(24 hours)',
'Use in card',
'136 (3,000mm Height limit)',
'Everyday 6:00-24:30|&24 hours access available by monthly contract holder',
'',
'2,562.56sq.mt. (27,573.15sq.ft.)|&-3,344.76sq.mt. (35,989.62sq.ft.)',
'standard 500kg/sq.mt.|&(partially 1,000kg/sq.mt.)',
'2,850mm|&(after setting raised floor)',
'75VA/sq.mt.',
'150mm',
'1 for men, 1 for women per floor',
'2 per floor',
'',
'大手町駅',
'Otemachi Sta.',
0,
NOW(),
1,
'127.0.0.1'
);

-- EOL
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
--
-- CMS1 Data
--   
--

use cms1;

--
-- 問合せ
--

INSERT INTO cms1.t_inquiry(created_dt,company_name,person_name,email,zip3,zip4,x_pref,addr1,addr2,tel,area,size_upper,size_lower,notes,attr,category,status,x_birumei,x_kukakumei,c_ts,c_id,c_ip,u_ts,u_id,u_ip)
VALUES 
(TIMESTAMP '2022-11-01 15:25:14.338','会社名001','担当者氏名001','anyone001@somewhere.jp','123','4567','北海道','住所101','住所201','090-1234-5678','希望エリア001','1001','501','その他要望001','空室','その他','提案中','ビル001','区画01',TIMESTAMP '2022-12-01 15:28:24.397',1,'127.0.0.1',NULL,NULL,NULL),
(TIMESTAMP '2022-11-02 15:25:14.338','会社名002','担当者氏名002','anyone002@somewhere.jp','123','4567','青森','住所102','住所202','090-1234-5678','希望エリア002','1002','502','その他要望002','その他','営業','その他','ビル002','区画02',TIMESTAMP '2022-11-01 15:28:24.397',1,'127.0.0.1',NULL,NULL,NULL),
(TIMESTAMP '2022-11-03 15:25:14.338','会社名003','担当者氏名003','anyone003@somewhere.jp','123','4567','和歌山','住所103','住所203','090-1234-5678','希望エリア003','1003','503','その他要望003','賃貸','未設定','未対応','ビル003','区画03',TIMESTAMP '2022-11-01 15:28:24.397',1,'127.0.0.1',NULL,NULL,NULL)
;

-- EOL
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
