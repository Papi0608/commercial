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
