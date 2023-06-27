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
