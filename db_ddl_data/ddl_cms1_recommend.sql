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
