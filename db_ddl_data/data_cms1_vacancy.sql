--
-- CMS1 Data
--   
--

use cms1;

--
-- 空室お知らせ
--

INSERT INTO cms1.t_vacancy(created_dt,company_name,person_name,email,zip3,zip4,x_pref,addr1,addr2,tel,size_upper,size_lower,notes,property,status,mail_delivery,x_birumei,x_kukakumei,c_ts,c_id,c_ip,u_ts,u_id,u_ip)
VALUES 
(TIMESTAMP '2022-11-01 15:25:14.338','会社名001','担当者氏名001','anyone001@somewhere.jp','123','4567','北海道','住所101','住所201','090-1234-5671','1001','501','その他要望001','問合せ物件001','提案中','配信する','ビル001','区画01',TIMESTAMP '2022-12-01 15:28:24.397',1,'127.0.0.1',NULL,NULL,NULL),
(TIMESTAMP '2022-11-02 15:25:14.338','会社名002','担当者氏名002','anyone002@somewhere.jp','123','4567','秋田','住所102','住所202','090-1234-5672','1002','502','その他要望002','問合せ物件002','未対応','配信しない','ビル002','区画02',TIMESTAMP '2022-12-02 15:28:24.397',1,'127.0.0.1',NULL,NULL,NULL),
(TIMESTAMP '2022-11-03 15:25:14.338','会社名003','担当者氏名003','anyone003@somewhere.jp','123','4567','和歌山','住所103','住所203','090-1234-5673','1003','503','その他要望003','問合せ物件003','成立','配信する','ビル003','区画03',TIMESTAMP '2022-12-03 15:28:24.397',1,'127.0.0.1',NULL,NULL,NULL);

-- EOL
