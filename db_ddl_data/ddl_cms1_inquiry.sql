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
