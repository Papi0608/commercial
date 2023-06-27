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
