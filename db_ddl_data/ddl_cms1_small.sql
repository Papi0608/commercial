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
