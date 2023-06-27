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
