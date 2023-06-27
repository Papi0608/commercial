--
-- CMS1
--   Transaction Tables
--     parts
--

use cms1;

--
-- パーツ（デザイナーが作成したページのパーツ）
--
DROP TABLE IF EXISTS `t_parts`;
CREATE TABLE `t_parts` (
    `id` BIGINT NOT NULL AUTO_INCREMENT COMMENT 'パーツID',
    `page_symbol` TEXT COMMENT 'ページ記号',
    `name`        TEXT COMMENT 'パーツ名',
    `template`    TEXT COMMENT 'テンプレート名',
    `tag_attr`    TEXT COMMENT 'タグ属性',
    `tag_id`      TEXT COMMENT 'タグID',
    `content`     TEXT COMMENT 'div_part',
    `src`         TEXT COMMENT 'image',
    `txt`         TEXT COMMENT 'div_text',
    `preview`     TEXT COMMENT 'PreviewタグID',
    `valid`       INT  COMMENT '有効フラグ',
    `c_ts` TIMESTAMP NOT NULL COMMENT '作成日時',
    `c_id` BIGINT    NOT NULL COMMENT '作成者構成員ID',
    `c_ip` TEXT      NOT NULL COMMENT '作成者IP-Address',
    `u_ts` TIMESTAMP          COMMENT '更新日時',
    `u_id` BIGINT             COMMENT '更新者構成員ID',
    `u_ip` TEXT               COMMENT '更新者IP-Address',
    PRIMARY KEY (id)
) ENGINE=InnoDB COMMENT 'パーツ';

-- EOL
