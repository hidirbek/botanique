create database botanique;
ALTER DATABASE botanique SET ENCODING = 'UTF8';
CREATE TABLE tools (
  tool_id int PRIMARY KEY NOT NULL,
  tool_img VARCHAR NOT NULL,
  tool_title VARCHAR(250) NOT NULL,
  tool_status BOOLEAN NOT NULL,
  tool_notification VARCHAR(20)
);

SELECT pg_encoding_to_char(encoding) FROM pg_tables WHERE tablename='tools';
SELECT column_name, character_set_name FROM information_schema.columns WHERE table_name = 'tools';
CREATE DATABASE my_utf8_db
  WITH ENCODING='UTF8'
       TEMPLATE=template0
       LC_COLLATE='C'
       LC_CTYPE='C'
       TABLESPACE=pg_default;

INSERT INTO tools (tool_id, tool_img, tool_title, tool_status, tool_notification)
VALUES (1, 'https://lh3.googleusercontent.com/owpRZH-D73weMsBwHk8yyTDxBacHi8lGQV2gYVFEKF7VTebep22VxapBhs16-Xyf8cefGaiQPlmZmLgdMUDzRQqUXDcyZ0jPw0AbZzB0vh_R3dxqYDAFrrESbQfIoSLQY83XF83zxYsfkAZFAx4h7Rw04a2er1WfZc0Y8cFwe2UwzDd-Aav1it7_gNvA17oJqZlIuQF0JfxQ97bLEJgaGrnye5EjrKfVDjtlkh_qnWVifDV4eHgzw2O89btsf0luXeK_pSpX3bqwqEodRHgXujyAy48GT7_Olc_iiIbiGIQeE2dLwh9Z7siHaBh8soErB9yCkFpTCgEs7zKt01M6jkfwztzAQxfBAIV8nbBXAWXxhtmjFiMC65-CzEDfjLO3ODisLa8W1zim2qwXirg16a2GQvvO1qIbl42oeMZh-LJ0hu0o5I1ZIC4aZD04m_Hgxhe-ExxrfijfqmGgliPghrfE4sCBmBVR6tRi3Nb-wCe4PqziMkO-s_22b7utK5C1xGTY_0fYYoiLun9_WlTpdnxHg1tn9v7ZbzD8UAUX0C7VPNtk6T1EDXQ31mnMTQucc0gyKOy_p7wdwuqP5zRC2_epZPAF5GU8KZX9k8sp-6U7-bCe62uUPrTzrhQcxxYuMyiJLiJL5gXxEyCFdfMaV9dTwB-MJPxmww1foIER6kXXtN8GAbxba8ynMSanuuc_YZK4I5es_n6yBaxL0p6GlxwLGS07icTd1N1WsJUtHOzVTlxOVmt3JRyezGmswK63QIKzMsrJAD72RMF0YGn4pX98ErHwkgyXLz9HaBKlCAZv3QXgM2zHq9J4G7L9wz6F36kobbV3j8caNKnJq3J1VdKDBz08zoQ7CjrGdIamiVcPyvqsDNpwk4NEpvCGq7T7_cUbJsN6YMRaH2_ZVrPqbaXEa6df_j4NIabV85qmAqJnJ9zKuTbegF5xGSQUxrDuxTRNL-hKcdQOOT8S8xiziw=w41-h40-s-no?authuser=0', 'pH-метр Mettler-Toledo International, Inc. SevenCompact S220', true, 'vibration');
      (2, 'https://lh3.googleusercontent.com/S-ADzzbTHoBKfNISB-5SA6x4hDgU452PMW3nDvCR3DgDxkksyQMXKqiPVOsGdbLZzsc9G13QtSkudRlskrvU05BKgHj_8ujAA0hai8hOaAKsZz2Gd7Lw2Vq57fDtkXc6gScb766ai6NxPX5zybgr3ORRamHqzTLuvllEn7_45r4AlPjqqoBrrligrW3bzn0eV3jpU6Die3lBcZQevznKBSI6YGKa362zjXq-1QHJP1EGRTGWNPO7Vf6Z7mhmr9M2Y9c2GNxTmxIU1ZpTBG7w91ss1sE6xPC0nSFSHWqhdAmwG2kA1VzvVo1lJ_o42eoKE_ftgO8SeM7GdQgBpcbcKnBQSmfP7HMYoObm6QTAAV4gIiJq7edcSdEfQbtOYBINzVRZXWOzmoyo56nkiRczOl-5aSfD16WSk-GrXYPQFPL2Ue5VhFs9vPWGqyXlAkiSl0Za-w0qTqvnox7vUsnejSfQ_r4qY9vfYFOmIsir9lbaXQGcB06zTdkTctk_P30lGjThezwv9-WzCfVgr_vC-lXwTw1iOYsVwz_r1swkjvzVfCSy4iA8XOlihujD4T3eetdnGxtmuuQP3yyjXFDK84IDIuJCY_HtUppcRKNpqkhgeu1sU6bM1f9YDOX2-ophUJmhuERL2DtfWIuFPdXv9Qm_iMQjQPeKcj3BFks3IJu4oL1AaSWlHhLrvlc7sGKaC9L0oq5Trp8VzJ2CSvbmWbOsrR-7_mOz5VbeUNarrV2arYvU5rOBvRusae9q2xCxpptXMW3u-x_QHSshWO1Aot3vjQ_yGpxo0QLJnTr_WfB6Vx5ITiKXze-tXYZ-3B7P2efQVicmW3tCmezj9q-oaRa7yqMMwZ4NuK60mwki5MQ4l-ROGYlDrRWYN1GXs8L7JLnXwF1-4XcI1e9N9kFOAvYUutWimacQIdMGIn4EVUWyz4VDawH2inVGFrtz1m-gXhWOdtVOqVNLKpq4U52xpA=w41-h40-s-no?authuser=0', 'Спектрофотометр Varian, Inc Cary 50 Bio', true, 'vibration'),
       (3, 'https://lh3.googleusercontent.com/y5qxOGtv21wj5L4nW7bhCi-ZIMtJKlyzwuHNg2dXGiLc1ipQDygeLM6uCNmOT9jzZEMWt3sY7YSShaJNgrGMsfTUO-2WJ9YCSuVQCkygVuS13mvsFdgToNaWp5Lh-Mg4mU7XzivlUaI2yfpfVOSnATyOZijTh5Kit7RzXbNpuPuosFW2nI19oaMUmQICcf4TYEHrsP2Ue2lAOe_lld1DKOTZPjNYnE_a9UVFsT47BH2LYa0MMUwbZNZIGQOMtBMESNRLspayw3z1GVecOU5NAGZix2dm17WPXjb_czTp7eLe_wew9cMu_OAAhBqbpmvuXB_5rw9PopaV-3DleXVlskFrf_zIKBOAUREx-x7V7wWlXJ6JCz2af7gHcIDSrIHq_APVXDEGk1q1ez-M1Wnvt6vls094dNPMd03TPoIjZtNuMh-nNNMzk66yIkCxWg7hgMi-mc_WKuHrwYmtCncdNy6nocIccnKpRfHQFxF42NGMFpyz3llXPO65jhldga3UqddV9qlcWjIS5dRMGvmFY4iN1t7xyHdvRyoyWC5Vn87-TAq4NjdgFMvisHtwFtiEhZ71xKOe3FjwFbOedMrRxAWEI0-XKBW0xLXGIDVd3nL7bbB9L0bfiXH1ywUtxLIusvBzDebCwwBbcZYy62pkpNC8kmIrVHr0Ug-6vBcLWBOG-JYcLkvfp5hGpS5_GMn23GkWVf6tVDHPEJX5_0F1veNzLsKo3hqiajgiWb3D4vs9W1R49L__fA15eqLr__ZQwenW7Eyhfb-CO2KQqaP5WXtP-ScjNHXuPSqwoA-GfBMDO7Nxx1G_Y0htcWN5Z1HGIzOv6T-ax4JHYl4v3MHILa8zTdg49IjGrQHzYgPj8DpnXznHBno-kYMFdjsbX-5v6DpGS_UQsC1RNl2ETSNMg7oWqytw-PF2SXHltfq6Ce2AiO1V6d7u9fH-Jw60XqslXCeinFtocD0motUoF_2sUQ=w41-h40-s-no?authuser=0', 'Титратор ', true, 'sound'),
       (4, 'https://lh3.googleusercontent.com/nE0HET-BA6mcAEf16pYTJfZLvhNmQk2YcAjEpIxdNfBJC47z1Xfmc_bxcfFm1oGF0gz-FLpHJndO27Mx9e-FWc3EslHzrPl9p_lMUc7C171a_hMwkVzCn_khPPHLPTKOwjlvwnODeiiFacxDdYYLpumeIHSa9qx4CXSwQc6v0aovAdGuTXswtF8NPCJO0dJa9J5WDyNwOhg9XGmN1PwKGiEMlA_3xWKnGvLkZqyQfk2a2ayWFVhVWnXM_Q5eRo_0HILG3S7aUDnxZQcw4UNxpmB9HbCX16-rERtGwep3JwlXwzLw18y_9cL3gyrB4VzSVUcwefZVR0juLWCDcP15U8yuSspxJ3IeMwGyB38J1ZcG9gCDzZe6CUizrCMqQKP-N5abiaiAOoKn_14FpVpjNlk5bjApmi7sKL-mEpdt9eN25340WE4U28alif96yEPDzgaxfZvqquwzY5VPzG9jsvNNSGHmA099VYKofwJk17gHGcW2MwmNK61gDrTV-RX5S7NQjshTifJzPZXo0SEI4kbTxctoAzDuC9_zNseIXTENTkW5ZMcjZsX1f0TL-gG1ch1-0ctVFFkrBWGXfkhwjVc15RiC1rv_1zCNM-bYn6Bnf4T_w-AT_UbU8Xoz3pVUcjSP1g6c_hZKV8xlScw4wQ74TtY5cV2sWPOuaaOEudGvvhlDIScCPzinryqKgVXvYlg0-jg0nghoK48c3pKeA9KbIduDbEdNxG3umwe2NnqNJ_nEk_GgZLK59LMQuJVaDEN12wVyGExeuFJ2gqBU-Wx7RSiW94qYc1LBAPzgpOyaLV6IT9OmCorzUdku7jnX8fkrBukPkPYXvDAlZhIQhB_fkaaIeyAGLFbON7nsRt0Hej2GrGTrlLV0q3gCiLPSSOxszN6kwY2R4aNAF91_4LqrYPDznJeqBHmlbI5_PZ2g9Ur8vbAfzgRcI_7vg3nSSwb2KO_aP3bNMZt_pHjQKA=w41-h40-s-no?authuser=0', 'Коагулометр Tcoag, KC 4 Delta', true, 'dont_disturb'),
       (5, 'https://lh3.googleusercontent.com/nE0HET-BA6mcAEf16pYTJfZLvhNmQk2YcAjEpIxdNfBJC47z1Xfmc_bxcfFm1oGF0gz-FLpHJndO27Mx9e-FWc3EslHzrPl9p_lMUc7C171a_hMwkVzCn_khPPHLPTKOwjlvwnODeiiFacxDdYYLpumeIHSa9qx4CXSwQc6v0aovAdGuTXswtF8NPCJO0dJa9J5WDyNwOhg9XGmN1PwKGiEMlA_3xWKnGvLkZqyQfk2a2ayWFVhVWnXM_Q5eRo_0HILG3S7aUDnxZQcw4UNxpmB9HbCX16-rERtGwep3JwlXwzLw18y_9cL3gyrB4VzSVUcwefZVR0juLWCDcP15U8yuSspxJ3IeMwGyB38J1ZcG9gCDzZe6CUizrCMqQKP-N5abiaiAOoKn_14FpVpjNlk5bjApmi7sKL-mEpdt9eN25340WE4U28alif96yEPDzgaxfZvqquwzY5VPzG9jsvNNSGHmA099VYKofwJk17gHGcW2MwmNK61gDrTV-RX5S7NQjshTifJzPZXo0SEI4kbTxctoAzDuC9_zNseIXTENTkW5ZMcjZsX1f0TL-gG1ch1-0ctVFFkrBWGXfkhwjVc15RiC1rv_1zCNM-bYn6Bnf4T_w-AT_UbU8Xoz3pVUcjSP1g6c_hZKV8xlScw4wQ74TtY5cV2sWPOuaaOEudGvvhlDIScCPzinryqKgVXvYlg0-jg0nghoK48c3pKeA9KbIduDbEdNxG3umwe2NnqNJ_nEk_GgZLK59LMQuJVaDEN12wVyGExeuFJ2gqBU-Wx7RSiW94qYc1LBAPzgpOyaLV6IT9OmCorzUdku7jnX8fkrBukPkPYXvDAlZhIQhB_fkaaIeyAGLFbON7nsRt0Hej2GrGTrlLV0q3gCiLPSSOxszN6kwY2R4aNAF91_4LqrYPDznJeqBHmlbI5_PZ2g9Ur8vbAfzgRcI_7vg3nSSwb2KO_aP3bNMZt_pHjQKA=w41-h40-s-no?authuser=0', 'Коагулометр Tcoag, KC 4 Delta', false, 'dont_disturb');


       ALTER TABLE tools ALTER COLUMN tool_title SET DATA TYPE varchar USING tool_title::bytea::text;




CREATE TABLE tool_info (
  info_id int PRIMARY KEY NOT NULL,
  tool_id int NOT NULL,
  start_at VARCHAR(50) NOT NULL,
  end_at VARCHAR(50) NOT NULL,
  work_type VARCHAR(50) NOT NULL,
  works jsonb,
  result VARCHAR(50),
  is_working BOOLEAN,
  username VARCHAR(100) NOT NULL,
  FOREIGN KEY (tool_id) REFERENCES tools(tool_id)
);

INSERT INTO tool_info (info_id, tool_id, start_at, end_at, work_type, works, is_working, username)
VALUES (1, 1, '09.10.2021, 15:46', '19.10.2021, 15:46', 'Измерение', '{"Образец/серия:":"000100057935_170000010325_0000251849"}', true, 'morozovava' );


INSERT INTO tool_info (info_id, tool_id, start_at, end_at, work_type, works, is_working, result, username)
VALUES (2, 1, '12.10.2021, 12:17', '28.10.2021, 15:46', 'Калибровка', '{"Номер колонки:":"Колонка 2", "Образец:":"Образец 2", "Образец:":"образец 1", "Метод:":"метов тестовый", "Номер колонки:":"Колонка 1"}', true, 'Промывка с указанием вещества: Вещество', 'morozovava' ),
(3, 3, '19.10.2021, 15:46', '29.10.2021, 15:46', 'Измерение', '{"Образец/серия:":"000100057935_170000010325_0000251849"}', true, '', 'morozovava' ),
(4, 4, '22.10.2021, 12:17', '28.10.2021, 15:46', 'Калибровка', '{"Номер колонки:":"Колонка 2", "Образец:":"Образец 2", "Образец:":"образец 1", "Метод:":"метов тестовый", "Номер колонки:":"Колонка 1"}', true, 'Промывка с указанием вещества: Вещество', 'morozovava' ),
(5, 5, '09.10.2021, 15:46', '19.10.2021, 15:46', 'Измерение', '{"Образец/серия:":"000100057935_170000010325_0000251849"}', true, '', 'morozovava' );




SELECT *
FROM tools
JOIN tool_info
ON tools.id = tool_info.tool_id;