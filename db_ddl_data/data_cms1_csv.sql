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

--
-- 空室CSVデータ
--
INSERT INTO `t_room_csv`
(
  `bldg_code`
, `seq_num`
, `bldg_name`
, `area_id`
, `floor`
, `area_m2`
, `area_tsubo`
, `area_f2`
, `usage_num`
, `usage_text`
, `move_in_ja_jp`
, `move_in_en_us`
, `data_exist`
, `showroom`
, `appeal`
, `del_flg`
, `c_ts`
, `c_id`
, `c_ip`
)
VALUES
(
'011415',
'22',
'丸の内永楽ビル',
'1818-1819区',
'18階',
'279.01',
'84.400525',
'3002.1476',
'1',
'事務所',
'即',
'Immediate occupation',
'3',
'',
'',
0,
NOW(),
1,
'127.0.0.1'
),
(
'011415',
'23',
'丸の内永楽ビル',
'2213-2221区',
'22階',
'1320.66',
'399.49965',
'14210.3016',
'1',
'事務所',
'2022年12月',
'12/2022',
'3',
'',
'',
0,
NOW(),
1,
'127.0.0.1'
),
(
'011408',
'26',
'丸の内二丁目ビル',
'0',
'地下2階',
'55.54',
'16.80085',
'597.6104',
'1',
'事務所',
'2023年3月',
'3/2023',
'3',
'',
'',
0,
NOW(),
1,
'127.0.0.1'
),
(
'011408',
'29',
'丸の内二丁目ビル',
'・個室',
'7階',
'57',
'17.2425',
'613.32',
'1',
'事務所',
'即',
'Immediate occupation',
'3',
'',
'什器付サービスオフィス ｘLINK丸の内 20名部屋',
0,
NOW(),
1,
'127.0.0.1'
);

-- EOL
