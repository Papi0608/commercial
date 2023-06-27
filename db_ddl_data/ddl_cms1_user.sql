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
