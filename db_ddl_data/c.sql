--
-- CMS1
--   Master Tables
--

use cms1;

--
-- 役割
--
DROP TABLE IF EXISTS `m_role`;
CREATE TABLE IF NOT EXISTS `m_role` (
    `seq`       INT         NOT NULL COMMENT '表示順',
    `name`      VARCHAR(20) NOT NULL COMMENT '名称',
    PRIMARY KEY (`seq`)
) ENGINE=InnoDB COMMENT '役割';

--
-- オフィスビル一覧用エリアコード
--
DROP TABLE IF EXISTS `m_area_code`;
CREATE TABLE IF NOT EXISTS `m_area_code` (
    `id`       INT  NOT NULL COMMENT 'エリアコードID',
    `name`     TEXT NOT NULL COMMENT 'エリアコード名称',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB COMMENT 'オフィスビル一覧用エリアコード';

--
-- 新ビル区分 ??????????
--

--
-- 検索用エリア（区）
--
DROP TABLE IF EXISTS `m_srch_ward`;
CREATE TABLE IF NOT EXISTS `m_srch_ward` (
    `id`       INT  NOT NULL COMMENT '検索用エリア（区）ID',
    `name`     TEXT NOT NULL COMMENT '検索用エリア（区）名称',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB COMMENT '検索用エリア（区）';

--
-- 検索用エリア
--
DROP TABLE IF EXISTS `m_srch_area`;
CREATE TABLE IF NOT EXISTS `m_srch_area` (
    `id`       INT  NOT NULL COMMENT '検索用エリアID',
    `name`     TEXT NOT NULL COMMENT '検索用エリア名称',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB COMMENT '検索用エリア';

--
-- Yes or No
--
DROP TABLE IF EXISTS `m_yes_no`;
CREATE TABLE IF NOT EXISTS `m_yes_no` (
    `id`       INT  NOT NULL COMMENT 'YesNoID',
    `name`     TEXT NOT NULL COMMENT 'YesNo名称',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB COMMENT 'Yes or No';

--
-- HVACシステム（日本）
--
DROP TABLE IF EXISTS `m_hvac_system_ja_jp`;
CREATE TABLE IF NOT EXISTS `m_hvac_system_ja_jp` (
    `id`       INT  NOT NULL COMMENT 'HVACシステムID',
    `name`     TEXT NOT NULL COMMENT 'HVACシステム名称',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB COMMENT 'HVACシステム（日本）';

--
-- HVACシステム（英語）
--
DROP TABLE IF EXISTS `m_hvac_system_en_us`;
CREATE TABLE IF NOT EXISTS `m_hvac_system_en_us` (
    `id`       INT  NOT NULL COMMENT 'HVACシステムID',
    `name`     TEXT NOT NULL COMMENT 'HVACシステム名称',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB COMMENT 'HVACシステム（英語）';

--
-- ビルディング画像属性
--
DROP TABLE IF EXISTS `m_bldg_img_attr`;
CREATE TABLE IF NOT EXISTS `m_bldg_img_attr` (
    `id`       INT  NOT NULL COMMENT 'ビルディング画像属性ID',
    `seq`      INT  NOT NULL COMMENT '表示順',
    `name`     TEXT NOT NULL COMMENT 'ビルディング画像属性名称',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB COMMENT 'ビルディング画像属性';

-- EOL
--
-- CMS1
--   Transaction Tables
--     login user
--

use cms1;

DROP TABLE IF EXISTS `t_member`;
DROP TABLE IF EXISTS `t_auth`;

--
-- 認証
--
CREATE TABLE IF NOT EXISTS `t_auth` (
    `aid`           BIGINT      NOT NULL AUTO_INCREMENT COMMENT '認証ID',
    `login_id`      VARCHAR(80) NOT NULL                COMMENT 'ログインID',
    `password`      TEXT        NOT NULL                COMMENT 'パスワード',
    `c_ts`          TIMESTAMP                           COMMENT '作成日時',
    `c_id`          BIGINT                              COMMENT '作成者構成員ID',
    `c_ip`          TEXT                                COMMENT '作成者IP-Address',
    `u_ts`          TIMESTAMP                           COMMENT '更新日時',
    `u_id`          BIGINT                              COMMENT '更新者構成員ID',
    `u_ip`          TEXT                                COMMENT '更新者IP-Address',
    PRIMARY KEY (`aid`)
) ENGINE=InnoDB COMMENT '認証';

--
-- 構成員（各担当員）
--
CREATE TABLE IF NOT EXISTS `t_member` (
    `mid`           BIGINT      NOT NULL AUTO_INCREMENT COMMENT '構成員ID',
    `aid`           BIGINT      NOT NULL                COMMENT '認証ID',
    `role`          TEXT        NOT NULL                COMMENT '役割',
    `name`          VARCHAR(80) NOT NULL                COMMENT '名前',
    `email`         TEXT                                COMMENT '電子メール',
    `tel`           TEXT                                COMMENT '電話',
    `zip`           VARCHAR(7)                          COMMENT '郵便番号',
    `adr`           TEXT                                COMMENT '住所',
    `c_ts`          TIMESTAMP                           COMMENT '作成日時',
    `c_id`          BIGINT                              COMMENT '作成者ID',
    `c_ip`          TEXT                                COMMENT '作成者IP-Address',
    `u_ts`          TIMESTAMP                           COMMENT '更新日時',
    `u_id`          BIGINT                              COMMENT '更新者ID',
    `u_ip`          TEXT                                COMMENT '更新者IP-Address',
    PRIMARY KEY (`mid`),
    FOREIGN KEY (`aid`) REFERENCES `t_auth`(`aid`)
) ENGINE=InnoDB COMMENT '構成員';

-- EOL
--
-- CMS1
--   Transaction Tables
--     CSV
--

use cms1;

--
-- ビルディングCSVデータ
--
DROP TABLE IF EXISTS `t_building_csv`;
CREATE TABLE `t_building_csv` (
    `id` BIGINT NOT NULL AUTO_INCREMENT COMMENT 'ビルディングID',
    `bldg_code`                TEXT COMMENT 'ビルコード',
    `name_ja_jp`               TEXT COMMENT 'ビル名',
    `name_en_us`               TEXT COMMENT 'ビル名(英語)',
    `name_kana`                TEXT COMMENT 'ビル名(カナ)',
    `area_code`                TEXT COMMENT 'オフィスビル一覧用エリアコード',
    `bldg_kubun`               TEXT COMMENT '新ビル区分',
    `pref_ja_jp`               TEXT COMMENT '都道府県名',
    `loca_ja_jp`               TEXT COMMENT '所在地',
    `pref_en_us`               TEXT COMMENT '都道府県名(英語)',
    `loca_en_us`               TEXT COMMENT '所在地(英語)',
    `srch_ward`                TEXT COMMENT '検索用エリア(区)',
    `srch_area`                TEXT COMMENT '検索用エリア(オフィスエリア)',
    `use_route`                TEXT COMMENT '利用可能路線',
    `acc01_ja_jp`              TEXT COMMENT 'アクセス01',
    `acc02_ja_jp`              TEXT COMMENT 'アクセス02',
    `acc03_ja_jp`              TEXT COMMENT 'アクセス03',
    `acc04_ja_jp`              TEXT COMMENT 'アクセス04',
    `acc05_ja_jp`              TEXT COMMENT 'アクセス05',
    `acc06_ja_jp`              TEXT COMMENT 'アクセス06',
    `acc01_en_us`              TEXT COMMENT 'アクセス(英語)01',
    `acc02_en_us`              TEXT COMMENT 'アクセス(英語)02',
    `acc03_en_us`              TEXT COMMENT 'アクセス(英語)03',
    `acc04_en_us`              TEXT COMMENT 'アクセス(英語)04',
    `acc05_en_us`              TEXT COMMENT 'アクセス(英語)05',
    `acc06_en_us`              TEXT COMMENT 'アクセス(英語)06',
    `appeal_ja_jp`             TEXT COMMENT 'アピール',
    `appeal_en_us`             TEXT COMMENT 'アピール(英語)',
    `dep_ja_jp`                TEXT COMMENT '担当部署名',
    `dep_en_us`                TEXT COMMENT '担当部署名(英語)',
    `person_ja_jp`             TEXT COMMENT '担当者名',
    `person_en_us`             TEXT COMMENT '担当者名(英語)',
    `person_tel`               TEXT COMMENT '担当者電話番号',
    `person_email`             TEXT COMMENT '担当者メールアドレス',
    `rain`                     TEXT COMMENT '雨に濡れない',
    `scale_ja_jp`              TEXT COMMENT '建物規模',
    `scale_en_us`              TEXT COMMENT '建物規模(英語)',
    `address_ja_jp`            TEXT COMMENT '所在地',
    `completion_ja_jp`         TEXT COMMENT '竣工年月',
    `extension_ja_jp`          TEXT COMMENT '増築年月',
    `renovation_ja_jp`         TEXT COMMENT '最新リニューアル完了年月',
    `floors_ja_jp`             TEXT COMMENT '規模',
    `structure_ja_jp`          TEXT COMMENT '構造',
    `gross_area_ja_jp`         TEXT COMMENT '延床面積',
    `net_area_ja_jp`           TEXT COMMENT '有効面積',
    `site_area_ja_jp`          TEXT COMMENT '敷地面積',
    `bldg_height_ja_jp`        TEXT COMMENT '建物高さ',
    `architect_ja_jp`          TEXT COMMENT '設計監理',
    `elevators_ja_jp`          TEXT COMMENT 'エレベーター',
    `hvac_system_ja_jp`        TEXT COMMENT '空調設備',
    `hvac_office_ja_jp`        TEXT COMMENT '基準冷暖房供給|&時間（事務所）',
    `hvac_retail_ja_jp`        TEXT COMMENT '基準冷暖房供給|&時間（店舗）',
    `com_infra_ja_jp`          TEXT COMMENT '通信インフラ',
    `office_lobby`             TEXT COMMENT 'オフィスロビー',
    `emergency_power`          TEXT COMMENT '停電時のテナント専用部電力供給',
    `open_hours_ja_jp`         TEXT COMMENT '開閉館時間',
    `dining_facilities`        TEXT COMMENT '飲食施設充実',
    `vip_correspondense`       TEXT COMMENT 'VIP対応',
    `management_form`          TEXT COMMENT '管理形態',
    `security_system_ja_jp`    TEXT COMMENT '夜間入退館方法',
    `refresh_space_ja_jp`      TEXT COMMENT 'リフレッシュコーナー',
    `parking_space_ja_jp`      TEXT COMMENT 'ガレージ収容台数',
    `parking_open_ja_jp`       TEXT COMMENT 'ガレージ営業時間',
    `comments_ja_jp`           TEXT COMMENT '特記事項',
    `floor_area_ja_jp`         TEXT COMMENT '床面積',
    `floor_load_ja_jp`         TEXT COMMENT '床荷重',
    `small_area`               TEXT COMMENT '小規模面積あり',
    `ceiling_height_ja_jp`     TEXT COMMENT '天井高',
    `outlet_capacity_ja_jp`    TEXT COMMENT 'コンセント容量',
    `raised_floor_ja_jp`       TEXT COMMENT 'ＯＡフロア',
    `bathroom_ja_jp`           TEXT COMMENT 'トイレ',
    `pantry_ja_jp`             TEXT COMMENT '給湯室',
    `bldg_site_ja_jp`          TEXT COMMENT '公式ホームページ',
    `address_en_us`            TEXT COMMENT 'Address',
    `completion_en_us`         TEXT COMMENT 'Completion',
    `extension_en_us`          TEXT COMMENT 'Extension',
    `renovation_en_us`         TEXT COMMENT 'Renovation',
    `floors_en_us`             TEXT COMMENT 'Number of|&floors',
    `structure_en_us`          TEXT COMMENT 'Structure',
    `gross_area_en_us`         TEXT COMMENT 'Gross area',
    `net_area_en_us`           TEXT COMMENT 'Net area',
    `site_area_en_us`          TEXT COMMENT 'Site area',
    `bldg_height_en_us`        TEXT COMMENT 'Building height',
    `architect_en_us`          TEXT COMMENT 'Architect',
    `elevators_en_us`          TEXT COMMENT 'Elevators',
    `hvac_system_en_us`        TEXT COMMENT 'HVAC system',
    `hvac_office_en_us`        TEXT COMMENT 'Standard HVAC|&hours (office)',
    `hvac_retail_en_us`        TEXT COMMENT 'Standard HVAC|&hours (retail)',
    `refresh_space_en_us`      TEXT COMMENT 'Refreshment|&space',
    `com_infra_en_us`          TEXT COMMENT 'Communication|&infrastructure',
    `open_hours_en_us`         TEXT COMMENT 'Open hours',
    `security_system_en_us`    TEXT COMMENT 'Security system',
    `after_hours_access_en_us` TEXT COMMENT 'After hours access',
    `parking_space_en_us`      TEXT COMMENT 'Parking space',
    `parking_open_en_us`       TEXT COMMENT 'Parking open hours',
    `comments_en_us`           TEXT COMMENT 'Comments',
    `floor_area_en_us`         TEXT COMMENT 'Typical floor area',
    `floor_load_en_us`         TEXT COMMENT 'Floor load',
    `ceiling_height_en_us`     TEXT COMMENT 'Floor-to-ceiling',
    `outlet_capacity_en_us`    TEXT COMMENT 'Electric (outlet)|&capacity',
    `raised_floor_en_us`       TEXT COMMENT 'raised floor',
    `bathroom_en_us`           TEXT COMMENT 'Bathroom',
    `pantry_en_us`             TEXT COMMENT 'Pantry',
    `bldg_site_en_us`          TEXT COMMENT 'Bldg. site',
    `certified`                TEXT COMMENT '認証取得済み',
    `renewable_energy`         TEXT COMMENT '再エネ導入ビル',
    `certification_ja_jp`      TEXT COMMENT '取得済み認証',
    `tenant_lounge`            TEXT COMMENT 'テナント専用ラウンジ',
    `safety_center_tel`        TEXT COMMENT '防災センター番号',
    `office_support_ja_jp`     TEXT COMMENT 'オフィスサポート施設',
    `nearest_station_ja_jp`    TEXT COMMENT '最寄駅',
    `nearest_station_en_us`    TEXT COMMENT 'Nearest Station',
    `del_flg` BOOLEAN   NOT NULL COMMENT '削除フラグ',
    `c_ts`    TIMESTAMP NOT NULL COMMENT '作成日時',
    `c_id`    BIGINT    NOT NULL COMMENT '作成者構成員ID',
    `c_ip`    TEXT      NOT NULL COMMENT '作成者IP-Address',
    `u_ts`    TIMESTAMP          COMMENT '更新日時',
    `u_id`    BIGINT             COMMENT '更新者構成員ID',
    `u_ip`    TEXT               COMMENT '更新者IP-Address',
    PRIMARY KEY (id)
) ENGINE=InnoDB COMMENT 'ビルディングCSVデータ';

-- EOL
--
-- CMS1
--   CSV filter Tables
--

use cms1;

--
-- ビル用CSVフィルタ
--
DROP TABLE IF EXISTS `m_bldg_csv_filter`;
CREATE TABLE IF NOT EXISTS `m_bldg_csv_filter` (
    `id`           INT  NOT NULL COMMENT 'ビル用CSVフィルタID',
    `excel_column` TEXT NOT NULL COMMENT 'Excelカラム名 A,B,C,...,FZ,GA',
    `physical`     TEXT NOT NULL COMMENT '物理名称',
    `logical`      TEXT NOT NULL COMMENT '論理名称',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB COMMENT 'ビル用CSVフィルタ';

-- EOL
--
-- CMS1
--   Transaction Tables
--     XLSX
--

use cms1;

--
-- 空室XLSXデータ
--
DROP TABLE IF EXISTS `t_room_xlsx`;
CREATE TABLE `t_room_xlsx` (
    `id` BIGINT NOT NULL AUTO_INCREMENT COMMENT '空室ID',
    `bldg_code`     TEXT COMMENT 'ビルコード',
    `seq_num`       TEXT COMMENT '通し番号',
    `bldg_name`     TEXT COMMENT 'ビル名',
    `area_id`       TEXT COMMENT '区番号',
    `floor`         TEXT COMMENT 'フロア',
    `area_m2`       TEXT COMMENT '面積(㎡)',
    `area_tsubo`    TEXT COMMENT '面積(坪)',
    `area_f2`       TEXT COMMENT '面積(sq.ft)',
    `usage_num`     TEXT COMMENT '用途番号',
    `usage_text`    TEXT COMMENT '用途',
    `move_in_ja_jp` TEXT COMMENT '入居可能時期',
    `move_in_en_us` TEXT COMMENT '入居可能時期(英語)',
    `data_exist`    TEXT COMMENT 'データ有無',
    `showroom`      TEXT COMMENT 'ショールーム向き',
    `appeal`        TEXT COMMENT 'アピールポイント',
    `del_flg` BOOLEAN   NOT NULL COMMENT '削除フラグ',
    `c_ts`    TIMESTAMP NOT NULL COMMENT '作成日時',
    `c_id`    BIGINT    NOT NULL COMMENT '作成者構成員ID',
    `c_ip`    TEXT      NOT NULL COMMENT '作成者IP-Address',
    `u_ts`    TIMESTAMP          COMMENT '更新日時',
    `u_id`    BIGINT             COMMENT '更新者構成員ID',
    `u_ip`    TEXT               COMMENT '更新者IP-Address',
    PRIMARY KEY (id)
) ENGINE=InnoDB COMMENT '空室XLSXデータ';

-- EOL
--
-- CMS1
--   Transaction Tables
--     Building
--

use cms1;

--
-- ビルディング
--
DROP TABLE IF EXISTS `t_building`;
CREATE TABLE `t_building` (
    `id` BIGINT NOT NULL AUTO_INCREMENT COMMENT 'ビルディングID',
    -- begin CSVからの情報
    `bldg_code`                TEXT COMMENT 'ビルコード',
    `name_ja_jp`               TEXT COMMENT 'ビル名',
    `name_en_us`               TEXT COMMENT 'ビル名(英語)',
    `name_kana`                TEXT COMMENT 'ビル名(カナ)',
    `area_code`                TEXT COMMENT 'オフィスビル一覧用エリアコード',
    `bldg_kubun`               TEXT COMMENT '新ビル区分',
    `pref_ja_jp`               TEXT COMMENT '都道府県名',
    `loca_ja_jp`               TEXT COMMENT '所在地',
    `pref_en_us`               TEXT COMMENT '都道府県名(英語)',
    `loca_en_us`               TEXT COMMENT '所在地(英語)',
    `srch_ward`                TEXT COMMENT '検索用エリア(区)',
    `srch_area`                TEXT COMMENT '検索用エリア(オフィスエリア)',
    `use_route`                TEXT COMMENT '利用可能路線',
    `acc01_ja_jp`              TEXT COMMENT 'アクセス01',
    `acc02_ja_jp`              TEXT COMMENT 'アクセス02',
    `acc03_ja_jp`              TEXT COMMENT 'アクセス03',
    `acc04_ja_jp`              TEXT COMMENT 'アクセス04',
    `acc05_ja_jp`              TEXT COMMENT 'アクセス05',
    `acc06_ja_jp`              TEXT COMMENT 'アクセス06',
    `acc01_en_us`              TEXT COMMENT 'アクセス(英語)01',
    `acc02_en_us`              TEXT COMMENT 'アクセス(英語)02',
    `acc03_en_us`              TEXT COMMENT 'アクセス(英語)03',
    `acc04_en_us`              TEXT COMMENT 'アクセス(英語)04',
    `acc05_en_us`              TEXT COMMENT 'アクセス(英語)05',
    `acc06_en_us`              TEXT COMMENT 'アクセス(英語)06',
    `appeal_ja_jp`             TEXT COMMENT 'アピール',
    `appeal_en_us`             TEXT COMMENT 'アピール(英語)',
    `dep_ja_jp`                TEXT COMMENT '担当部署名',
    `dep_en_us`                TEXT COMMENT '担当部署名(英語)',
    `person_ja_jp`             TEXT COMMENT '担当者名',
    `person_en_us`             TEXT COMMENT '担当者名(英語)',
    `person_tel`               TEXT COMMENT '担当者電話番号',
    `person_email`             TEXT COMMENT '担当者メールアドレス',
    `rain`                     TEXT COMMENT '雨に濡れない',
    `scale_ja_jp`              TEXT COMMENT '建物規模',
    `scale_en_us`              TEXT COMMENT '建物規模(英語)',
    `address_ja_jp`            TEXT COMMENT '所在地',
    `completion_ja_jp`         TEXT COMMENT '竣工年月',
    `extension_ja_jp`          TEXT COMMENT '増築年月',
    `renovation_ja_jp`         TEXT COMMENT '最新リニューアル完了年月',
    `floors_ja_jp`             TEXT COMMENT '規模',
    `structure_ja_jp`          TEXT COMMENT '構造',
    `gross_area_ja_jp`         TEXT COMMENT '延床面積',
    `net_area_ja_jp`           TEXT COMMENT '有効面積',
    `site_area_ja_jp`          TEXT COMMENT '敷地面積',
    `bldg_height_ja_jp`        TEXT COMMENT '建物高さ',
    `architect_ja_jp`          TEXT COMMENT '設計監理',
    `elevators_ja_jp`          TEXT COMMENT 'エレベーター',
    `hvac_system_ja_jp`        TEXT COMMENT '空調設備',
    `hvac_office_ja_jp`        TEXT COMMENT '基準冷暖房供給|&時間（事務所）',
    `hvac_retail_ja_jp`        TEXT COMMENT '基準冷暖房供給|&時間（店舗）',
    `com_infra_ja_jp`          TEXT COMMENT '通信インフラ',
    `office_lobby`             TEXT COMMENT 'オフィスロビー',
    `emergency_power`          TEXT COMMENT '停電時のテナント専用部電力供給',
    `open_hours_ja_jp`         TEXT COMMENT '開閉館時間',
    `dining_facilities`        TEXT COMMENT '飲食施設充実',
    `vip_correspondense`       TEXT COMMENT 'VIP対応',
    `management_form`          TEXT COMMENT '管理形態',
    `security_system_ja_jp`    TEXT COMMENT '夜間入退館方法',
    `refresh_space_ja_jp`      TEXT COMMENT 'リフレッシュコーナー',
    `parking_space_ja_jp`      TEXT COMMENT 'ガレージ収容台数',
    `parking_open_ja_jp`       TEXT COMMENT 'ガレージ営業時間',
    `comments_ja_jp`           TEXT COMMENT '特記事項',
    `floor_area_ja_jp`         TEXT COMMENT '床面積',
    `floor_load_ja_jp`         TEXT COMMENT '床荷重',
    `small_area`               TEXT COMMENT '小規模面積あり',
    `ceiling_height_ja_jp`     TEXT COMMENT '天井高',
    `outlet_capacity_ja_jp`    TEXT COMMENT 'コンセント容量',
    `raised_floor_ja_jp`       TEXT COMMENT 'ＯＡフロア',
    `bathroom_ja_jp`           TEXT COMMENT 'トイレ',
    `pantry_ja_jp`             TEXT COMMENT '給湯室',
    `bldg_site_ja_jp`          TEXT COMMENT '公式ホームページ',
    `address_en_us`            TEXT COMMENT 'Address',
    `completion_en_us`         TEXT COMMENT 'Completion',
    `extension_en_us`          TEXT COMMENT 'Extension',
    `renovation_en_us`         TEXT COMMENT 'Renovation',
    `floors_en_us`             TEXT COMMENT 'Number of|&floors',
    `structure_en_us`          TEXT COMMENT 'Structure',
    `gross_area_en_us`         TEXT COMMENT 'Gross area',
    `net_area_en_us`           TEXT COMMENT 'Net area',
    `site_area_en_us`          TEXT COMMENT 'Site area',
    `bldg_height_en_us`        TEXT COMMENT 'Building height',
    `architect_en_us`          TEXT COMMENT 'Architect',
    `elevators_en_us`          TEXT COMMENT 'Elevators',
    `hvac_system_en_us`        TEXT COMMENT 'HVAC system',
    `hvac_office_en_us`        TEXT COMMENT 'Standard HVAC|&hours (office)',
    `hvac_retail_en_us`        TEXT COMMENT 'Standard HVAC|&hours (retail)',
    `refresh_space_en_us`      TEXT COMMENT 'Refreshment|&space',
    `com_infra_en_us`          TEXT COMMENT 'Communication|&infrastructure',
    `open_hours_en_us`         TEXT COMMENT 'Open hours',
    `security_system_en_us`    TEXT COMMENT 'Security system',
    `after_hours_access_en_us` TEXT COMMENT 'After hours access',
    `parking_space_en_us`      TEXT COMMENT 'Parking space',
    `parking_open_en_us`       TEXT COMMENT 'Parking open hours',
    `comments_en_us`           TEXT COMMENT 'Comments',
    `floor_area_en_us`         TEXT COMMENT 'Typical floor area',
    `floor_load_en_us`         TEXT COMMENT 'Floor load',
    `ceiling_height_en_us`     TEXT COMMENT 'Floor-to-ceiling',
    `outlet_capacity_en_us`    TEXT COMMENT 'Electric (outlet)|&capacity',
    `raised_floor_en_us`       TEXT COMMENT 'Raised floor',
    `bathroom_en_us`           TEXT COMMENT 'Bathroom',
    `pantry_en_us`             TEXT COMMENT 'Pantry',
    `bldg_site_en_us`          TEXT COMMENT 'Bldg. site',
    `certified`                TEXT COMMENT '認証取得済み',
    `renewable_energy`         TEXT COMMENT '再エネ導入ビル',
    `certification_ja_jp`      TEXT COMMENT '取得済み認証',
    `tenant_lounge`            TEXT COMMENT 'テナント専用ラウンジ',
    `safety_center_tel`        TEXT COMMENT '防災センター番号',
    `office_support_ja_jp`     TEXT COMMENT 'オフィスサポート施設',
    `nearest_station_ja_jp`    TEXT COMMENT '最寄駅',
    `nearest_station_en_us`    TEXT COMMENT 'Nearest Station',
    -- end CSVからの情報
    -- begin WEB管理画面で追加する情報
    `display_ja_jp`            TEXT COMMENT 'ビル表示名',
    `display_en_us`            TEXT COMMENT 'ビル表示名(英語)',
    `abrev_ja_jp`              TEXT COMMENT 'ビル略称名',
    `abrev_en_us`              TEXT COMMENT 'ビル略称名(英語)',
    `introd_ja_jp`             TEXT COMMENT 'ビル紹介文',
    `introd_en_us`             TEXT COMMENT 'ビル紹介文(英語)',
    `focus`                    INT  COMMENT '注力物件',
    `keyword`                  TEXT COMMENT '検索キーワード',
    `facility_caption_ja_jp`   TEXT COMMENT '商業施設画像キャプション',
    `facility_caption_en_us`   TEXT COMMENT '商業施設画像キャプション(英語)',
    `longitude`                TEXT COMMENT '緯度',
    `latitude`                 TEXT COMMENT '経度',
    `street_view_url`          TEXT COMMENT 'GoogleストリートビューURL',
    `street_view_tag`          TEXT COMMENT 'Googleストリートビュー埋込タグ',
    `office_info_site`         INT  COMMENT 'オフィス情報サイト表示フラグ',
    `similar`                  TEXT COMMENT '類似物件', -- Pending
 -- `similar01_area`           INT  COMMENT '類似物件01エリア',
 -- `similar01_name`           TEXT COMMENT '類似物件01物件',
 -- `similar02_area`           INT  COMMENT '類似物件02エリア',
 -- `similar02_name`           TEXT COMMENT '類似物件02物件',
 -- `similar03_area`           INT  COMMENT '類似物件03エリア',
 -- `similar03_name`           TEXT COMMENT '類似物件03物件',
 -- `similar04_area`           INT  COMMENT '類似物件04エリア',
 -- `similar04_name`           TEXT COMMENT '類似物件04物件',
 -- `similar05_area`           INT  COMMENT '類似物件05エリア',
 -- `similar05_name`           TEXT COMMENT '類似物件05物件',
 -- `similar06_area`           INT  COMMENT '類似物件06エリア',
 -- `similar06_name`           TEXT COMMENT '類似物件06物件',
 -- `similar07_area`           INT  COMMENT '類似物件07エリア',
 -- `similar07_name`           TEXT COMMENT '類似物件07物件',
 -- `similar08_area`           INT  COMMENT '類似物件08エリア',
 -- `similar08_name`           TEXT COMMENT '類似物件08物件',
 -- `similar09_area`           INT  COMMENT '類似物件09エリア',
 -- `similar09_name`           TEXT COMMENT '類似物件09物件',
 -- `unregistered`             INT  COMMENT '追加情報未登録',
    -- end WEB管理画面で追加する情報
    `del_flg` BOOLEAN   NOT NULL COMMENT '削除フラグ',
    `c_ts`    TIMESTAMP NOT NULL COMMENT '作成日時',
    `c_id`    BIGINT    NOT NULL COMMENT '作成者構成員ID',
    `c_ip`    TEXT      NOT NULL COMMENT '作成者IP-Address',
    `u_ts`    TIMESTAMP          COMMENT '更新日時',
    `u_id`    BIGINT             COMMENT '更新者構成員ID',
    `u_ip`    TEXT               COMMENT '更新者IP-Address',
    PRIMARY KEY (id)
) ENGINE=InnoDB COMMENT 'ビルディング';

--
-- ビルディング画像情報
--
DROP TABLE IF EXISTS `t_bldg_image`;
CREATE TABLE `t_bldg_image` (
    `id`             BIGINT NOT NULL AUTO_INCREMENT COMMENT '画像情報ID',
    `bldg_id`        BIGINT                         COMMENT 'ビルディングID',
    `bldg_img_attr`  INT                            COMMENT '画像属性ID',
    `seq`            INT                            COMMENT '表示順',
    `file_name`      TEXT                           COMMENT 'ファイル名',
    `caption`        TEXT                           COMMENT 'キャプション',
    `url`            TEXT                           COMMENT 'アイコンURL',
    `use_flg`        BOOLEAN   NOT NULL             COMMENT '使用フラグ',
    `c_ts`           TIMESTAMP NOT NULL             COMMENT '作成日時',
    `c_id`           BIGINT    NOT NULL             COMMENT '作成者構成員ID',
    `c_ip`           TEXT      NOT NULL             COMMENT '作成者IP-Address',
    `u_ts`           TIMESTAMP                      COMMENT '更新日時',
    `u_id`           BIGINT                         COMMENT '更新者構成員ID',
    `u_ip`           TEXT                           COMMENT '更新者IP-Address',
    PRIMARY KEY (id)
) ENGINE=InnoDB COMMENT 'ビルディング画像情報';

-- EOL
--
-- CMS1
--   Transaction Tables
--     Similar
--

use cms1;

--
-- 類似物件（近場で有効面積が近いもの）
--   近場で有効面積が近いもの
--   近場は緯度経度で比較するが、まるめた値を用いる。
--   面積の比較は80～120％のものを対象とする。
--
DROP TABLE IF EXISTS `t_similar`;
CREATE TABLE `t_similar` (
    `bldg_code` VARCHAR(20) COMMENT 'ビルコード',
    `net_area`  FLOAT COMMENT '有効面積',
    `longitude` FLOAT COMMENT '緯度',
    `latitude`  FLOAT COMMENT '経度',
    `near`      TEXT  COMMENT '近いビルコードJSON',
    PRIMARY KEY (bldg_code)
) ENGINE=InnoDB COMMENT '類似物件';

-- EOL
--
-- CMS1
--   Transaction Tables
--     Room
--

use cms1;

--
-- 空室データ
--
DROP TABLE IF EXISTS `t_room`;
CREATE TABLE `t_room` (
    `id` BIGINT NOT NULL AUTO_INCREMENT COMMENT '空室ID',
    `bldg_code`     TEXT  COMMENT 'ビルコード',
    `seq_num`       INT   COMMENT '通し番号',
    `bldg_name`     TEXT  COMMENT 'ビル名',
    `area_id`       TEXT  COMMENT '区番号',
    `floor`         TEXT  COMMENT 'フロア',
    `area_m2`       FLOAT COMMENT '面積(㎡)',
    `area_tsubo`    FLOAT COMMENT '面積(坪)',
    `area_f2`       FLOAT COMMENT '面積(sq.ft)',
    `usage_num`     INT   COMMENT '用途番号',
    `usage_text`    TEXT  COMMENT '用途',
    `move_in_ja_jp` TEXT  COMMENT '入居可能時期',
    `move_in_en_us` TEXT  COMMENT '入居可能時期(英語)',
    `data_exist`    INT   COMMENT 'データ有無',
    `showroom`      TEXT  COMMENT 'ショールーム向き',
    `appeal`        TEXT  COMMENT 'アピールポイント',
    `date_in`       DATE  COMMENT '入居可能日',
    `del_flg` BOOLEAN   NOT NULL COMMENT '削除フラグ',
    `c_ts`    TIMESTAMP NOT NULL COMMENT '作成日時',
    `c_id`    BIGINT    NOT NULL COMMENT '作成者構成員ID',
    `c_ip`    TEXT      NOT NULL COMMENT '作成者IP-Address',
    `u_ts`    TIMESTAMP          COMMENT '更新日時',
    `u_id`    BIGINT             COMMENT '更新者構成員ID',
    `u_ip`    TEXT               COMMENT '更新者IP-Address',
    PRIMARY KEY (id)
) ENGINE=InnoDB COMMENT '空室データ';

-- EOL
--
-- CMS1
--   Transaction Tables
--     news
--

use cms1;

--
-- お知らせ
--
DROP TABLE IF EXISTS `t_news`;
CREATE TABLE `t_news` (
    `id` BIGINT NOT NULL AUTO_INCREMENT COMMENT 'お知らせID',
    `disp_date`   TIMESTAMP COMMENT '掲載日',
    `disp_order`  INT       COMMENT '表示優先度',
    `cate`        INT       COMMENT 'カテゴリ',
    `attr`        INT       COMMENT '属性',
    `new_flg`     INT       COMMENT 'NEW表示',
    `lang`        TEXT      COMMENT '言語区分',
    `title`       TEXT      COMMENT 'タイトル',
    `detail_flg`  INT       COMMENT '詳細ページ有無',
    `description` TEXT      COMMENT '詳細テキスト',
    `link_type`   TEXT      COMMENT 'リンク種別',
    `link_url`    TEXT      COMMENT 'リンクURL',
    `attachment`  TEXT      COMMENT '添付ファイル',
    `disp_flg`    INT       COMMENT 'サイト表示有無',
    `del_flg`     INT       COMMENT '削除フラグ',
    `c_ts`    TIMESTAMP NOT NULL COMMENT '作成日時',
    `c_id`    BIGINT    NOT NULL COMMENT '作成者構成員ID',
    `c_ip`    TEXT      NOT NULL COMMENT '作成者IP-Address',
    `u_ts`    TIMESTAMP          COMMENT '更新日時',
    `u_id`    BIGINT             COMMENT '更新者構成員ID',
    `u_ip`    TEXT               COMMENT '更新者IP-Address',
    PRIMARY KEY (id)
) ENGINE=InnoDB COMMENT 'お知らせ';

-- EOL
--
-- CMS1
--   Transaction Tables
--     Inquiry
--

use cms1;

--
-- 問合せデータ
--
DROP TABLE IF EXISTS `t_inquiry`;
CREATE TABLE `t_inquiry` (
    `id` BIGINT NOT NULL AUTO_INCREMENT COMMENT '問合せID',
    `created_dt`    TIMESTAMP COMMENT '発生日時',
    `company_name`  TEXT      COMMENT '会社名',
    `person_name`   TEXT      COMMENT '担当者氏名',
    `email`         TEXT      COMMENT 'メールアドレス',
    `zip3`          TEXT      COMMENT '〒1',
    `zip4`          TEXT      COMMENT '〒2',
    `x_pref`        TEXT      COMMENT '都道府県',
    `addr1`         TEXT      COMMENT '住所1',
    `addr2`         TEXT      COMMENT '住所2',
    `tel`           TEXT      COMMENT '電話番号',
    `area`          TEXT      COMMENT '希望エリア',
    `size_upper`    TEXT      COMMENT '希望オフィス規模 上限',
    `size_lower`    TEXT      COMMENT '希望オフィス規模 下限',
    `notes`         TEXT      COMMENT 'その他要望',
    `attr`          TEXT      COMMENT '問合せ種別',
    `category`      TEXT      COMMENT '分類',
    `status`        TEXT      COMMENT '対応状況',
    `x_birumei`     TEXT      COMMENT 'ビル名',
    `x_kukakumei`   TEXT      COMMENT '区画名',
    `c_ts`    TIMESTAMP NOT NULL COMMENT '作成日時',
    `c_id`    BIGINT    NOT NULL COMMENT '作成者構成員ID',
    `c_ip`    TEXT      NOT NULL COMMENT '作成者IP-Address',
    `u_ts`    TIMESTAMP          COMMENT '更新日時',
    `u_id`    BIGINT             COMMENT '更新者構成員ID',
    `u_ip`    TEXT               COMMENT '更新者IP-Address',
    PRIMARY KEY (id)
) ENGINE=InnoDB COMMENT '問合せデータ';

-- EOL
--
-- CMS1
--   Transaction Tables
--     recommend
--

use cms1;

--
-- おすすめ（PICK-UP）
--
DROP TABLE IF EXISTS `t_recommend`;
CREATE TABLE `t_recommend` (
    `id` BIGINT NOT NULL AUTO_INCREMENT COMMENT 'おすすめID',
    `disp_date`   TIMESTAMP COMMENT '掲載日',
    `disp_order`  INT       COMMENT '表示優先度',
    `cate`        INT       COMMENT 'カテゴリ',
    `attr`        INT       COMMENT '属性',
    `new_flg`     INT       COMMENT 'NEW表示',
    `lang`        TEXT      COMMENT '言語区分',
    `title`       TEXT      COMMENT 'タイトル',
    `description` TEXT      COMMENT '詳細テキスト',
    `attachment`  TEXT      COMMENT '添付ファイル',
    `disp_flg`    INT       COMMENT 'サイト表示有無',
    `del_flg`     INT       COMMENT '削除フラグ',
    `c_ts`    TIMESTAMP NOT NULL COMMENT '作成日時',
    `c_id`    BIGINT    NOT NULL COMMENT '作成者構成員ID',
    `c_ip`    TEXT      NOT NULL COMMENT '作成者IP-Address',
    `u_ts`    TIMESTAMP          COMMENT '更新日時',
    `u_id`    BIGINT             COMMENT '更新者構成員ID',
    `u_ip`    TEXT               COMMENT '更新者IP-Address',
    PRIMARY KEY (id)
) ENGINE=InnoDB COMMENT 'おすすめ';

-- EOL
--
-- CMS1
--   Transaction Tables
--     Vacancy
--

use cms1;

--
-- 空室お知らせデータ
--
DROP TABLE IF EXISTS `t_vacancy`;
CREATE TABLE `t_vacancy` (
    `id` BIGINT NOT NULL AUTO_INCREMENT COMMENT '空室お知らせID',
    `created_dt`    TIMESTAMP COMMENT '発生日時',
    `company_name`  TEXT      COMMENT '会社名',
    `person_name`   TEXT      COMMENT '担当者氏名',
    `email`         TEXT      COMMENT 'メールアドレス',
    `zip3`          TEXT      COMMENT '〒1',
    `zip4`          TEXT      COMMENT '〒2',
    `x_pref`        TEXT      COMMENT '都道府県',
    `addr1`         TEXT      COMMENT '住所1',
    `addr2`         TEXT      COMMENT '住所2',
    `tel`           TEXT      COMMENT '電話番号',
    `size_upper`    TEXT      COMMENT '希望オフィス規模 上限',
    `size_lower`    TEXT      COMMENT '希望オフィス規模 下限',
    `notes`         TEXT      COMMENT 'その他要望',
    `property`      TEXT      COMMENT '問合せ物件',
    `status`        TEXT      COMMENT '対応状況',
    `mail_delivery` TEXT      COMMENT 'メール配信有無',
    `x_birumei`     TEXT      COMMENT 'ビル名',
    `x_kukakumei`   TEXT      COMMENT '区画名',
    `c_ts`    TIMESTAMP NOT NULL COMMENT '作成日時',
    `c_id`    BIGINT    NOT NULL COMMENT '作成者構成員ID',
    `c_ip`    TEXT      NOT NULL COMMENT '作成者IP-Address',
    `u_ts`    TIMESTAMP          COMMENT '更新日時',
    `u_id`    BIGINT             COMMENT '更新者構成員ID',
    `u_ip`    TEXT               COMMENT '更新者IP-Address',
    PRIMARY KEY (id)
) ENGINE=InnoDB COMMENT '空室お知らせデータ';

-- EOL
--
-- CMS1
--   Transaction Tables
--     topics
--

use cms1;

--
-- ビルトピックス
--
DROP TABLE IF EXISTS `t_topics`;
CREATE TABLE `t_topics` (
    `id` BIGINT NOT NULL AUTO_INCREMENT COMMENT 'ビルトピックスID',
    `disp_date`   TIMESTAMP COMMENT '掲載日',
    `disp_order`  INT       COMMENT '表示優先度',
    `lang`        TEXT      COMMENT '言語区分',
    `title`       TEXT      COMMENT 'タイトル',
    `link_type`   TEXT      COMMENT 'リンク種別',
    `link_url`    TEXT      COMMENT 'リンクURL',
    `attachment`  TEXT      COMMENT '添付ファイル',
    `disp_flg`    INT       COMMENT 'サイト表示有無',
    `x_area`      TEXT      COMMENT 'エリア',
    `x_bldg`      TEXT      COMMENT 'ビル',
    `del_flg`     INT       COMMENT '削除フラグ',
    `c_ts`    TIMESTAMP NOT NULL COMMENT '作成日時',
    `c_id`    BIGINT    NOT NULL COMMENT '作成者構成員ID',
    `c_ip`    TEXT      NOT NULL COMMENT '作成者IP-Address',
    `u_ts`    TIMESTAMP          COMMENT '更新日時',
    `u_id`    BIGINT             COMMENT '更新者構成員ID',
    `u_ip`    TEXT               COMMENT '更新者IP-Address',
    PRIMARY KEY (id)
) ENGINE=InnoDB COMMENT 'ビルトピックス';

-- EOL
--
-- CMS1
--   Transaction Tables
--     small
--

use cms1;

--
-- 小規模物件
--
DROP TABLE IF EXISTS `t_small`;
CREATE TABLE `t_small` (
    `id` BIGINT NOT NULL AUTO_INCREMENT COMMENT '小規模物件ID',
    `bldg_code`   TEXT      COMMENT 'ビルコード',
    `x_area`      TEXT      COMMENT 'エリア',
    `x_bldg`      TEXT      COMMENT 'ビル',
    `title_ja_jp` TEXT      COMMENT 'タイトル(日)',
    `notes_ja_jp` TEXT      COMMENT 'コメント(日)',
    `title_en_us` TEXT      COMMENT 'タイトル(英)',
    `notes_en_us` TEXT      COMMENT 'コメント(英)',
    `seq`         INT       COMMENT '表示順',
    `disp_flg`    INT       COMMENT 'サイト表示有無',
    `del_flg`     INT       COMMENT '削除フラグ',
    `c_ts`    TIMESTAMP NOT NULL COMMENT '作成日時',
    `c_id`    BIGINT    NOT NULL COMMENT '作成者構成員ID',
    `c_ip`    TEXT      NOT NULL COMMENT '作成者IP-Address',
    `u_ts`    TIMESTAMP          COMMENT '更新日時',
    `u_id`    BIGINT             COMMENT '更新者構成員ID',
    `u_ip`    TEXT               COMMENT '更新者IP-Address',
    PRIMARY KEY (id)
) ENGINE=InnoDB COMMENT '小規模物件';

-- EOL
--
-- CMS1
--   Transaction Tables
--     template
--

use cms1;

--
-- テンプレート
--
DROP TABLE IF EXISTS `t_template`;
CREATE TABLE `t_template` (
    `id` BIGINT NOT NULL AUTO_INCREMENT COMMENT 'テンプレートID',
    `name`    TEXT COMMENT 'テンプレート名',
    `head`    TEXT COMMENT 'HEAD部分',
    `html`    TEXT COMMENT 'HTMLスクリプト',
    `valid`   INT  COMMENT '有効フラグ',
    `c_ts`    TIMESTAMP NOT NULL COMMENT '作成日時',
    `c_id`    BIGINT    NOT NULL COMMENT '作成者構成員ID',
    `c_ip`    TEXT      NOT NULL COMMENT '作成者IP-Address',
    `u_ts`    TIMESTAMP          COMMENT '更新日時',
    `u_id`    BIGINT             COMMENT '更新者構成員ID',
    `u_ip`    TEXT               COMMENT '更新者IP-Address',
    PRIMARY KEY (id)
) ENGINE=InnoDB COMMENT 'テンプレート';

-- EOL
--
-- CMS1
--   Transaction Tables
--     fileset
--

use cms1;

--
-- ファイルセット
--
DROP TABLE IF EXISTS `t_fileset`;
CREATE TABLE `t_fileset` (
    `id` BIGINT NOT NULL AUTO_INCREMENT COMMENT 'ファイルセットID',
    `name`    TEXT COMMENT 'ページ名',
    `html`    TEXT COMMENT 'HTMLスクリプト',
    `valid`   INT  COMMENT '有効フラグ',
    `c_ts`    TIMESTAMP NOT NULL COMMENT '作成日時',
    `c_id`    BIGINT    NOT NULL COMMENT '作成者構成員ID',
    `c_ip`    TEXT      NOT NULL COMMENT '作成者IP-Address',
    `u_ts`    TIMESTAMP          COMMENT '更新日時',
    `u_id`    BIGINT             COMMENT '更新者構成員ID',
    `u_ip`    TEXT               COMMENT '更新者IP-Address',
    PRIMARY KEY (id)
) ENGINE=InnoDB COMMENT 'ファイルセット';

-- EOL
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
