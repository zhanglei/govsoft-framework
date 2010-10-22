
TRUNCATE TABLE gov_user_role;
TRUNCATE TABLE gov_role_menu;
TRUNCATE TABLE gov_role_resource;
TRUNCATE TABLE gov_user;
TRUNCATE TABLE gov_org;
TRUNCATE TABLE gov_role;
TRUNCATE TABLE gov_menu;
TRUNCATE TABLE gov_resource;
-- table `gov_org`
-- 
INSERT INTO gov_org
            (ID,
             NAME,
             DESCRIPTION,
             PARENT_ID,
             IS_DISABLED,
             VERSION)
VALUES (UUID(),
        '政创软件',
        '东莞市政创软件科技有限公司',
        NULL,
        0,
        NOW());
-- 
-- table `gov_role`
-- 
INSERT INTO gov_role
            (ID,
             NAME,
             CODE,
             DESCRIPTION,
             IS_DISABLED,
             VERSION)
VALUES (UUID(),
        '系统管理员',
        'ROLE_ADMIN',
        '系统管理员',
        0,
        NOW());
-- 
-- table `gov_menu`
-- 	
INSERT INTO gov_menu
            (ID,
             NAME,
             URL,
             SEQUENCE,
             PARENT_ID,
             DESCRIPTION,
             IS_DISABLED,
             VERSION)
VALUES (UUID(),
        '系统管理',
        '/',
        1,
        NULL,
        '系统管理',
        0,
        NOW());
INSERT INTO gov_menu
            (ID,
             NAME,
             URL,
             SEQUENCE,
             PARENT_ID,
             DESCRIPTION,
             IS_DISABLED,
             VERSION)
SELECT
  UUID(),
  '菜单管理',
  '/',
  1,
  id,
  '菜单管理',
  0,
  NOW()
FROM gov_menu m WHERE m.name='系统管理';
INSERT INTO gov_menu
            (ID,
             NAME,
             URL,
             SEQUENCE,
             PARENT_ID,
             DESCRIPTION,
             IS_DISABLED,
             VERSION)
SELECT
  UUID(),
  '角色管理',
  '/',
  2,
  id,
  '角色管理',
  0,
  NOW()
FROM gov_menu m WHERE m.name='系统管理';
INSERT INTO gov_menu
            (ID,
             NAME,
             URL,
             SEQUENCE,
             PARENT_ID,
             DESCRIPTION,
             IS_DISABLED,
             VERSION)
SELECT
  UUID(),
  '组织机构管理',
  '/',
  3,
  id,
  '组织机构管理',
  0,
  NOW()
FROM gov_menu m WHERE m.name='系统管理';
INSERT INTO gov_menu
            (ID,
             NAME,
             URL,
             SEQUENCE,
             PARENT_ID,
             DESCRIPTION,
             IS_DISABLED,
             VERSION)
SELECT
  UUID(),
  '用户管理',
  '/',
  4,
  id,
  '用户管理',
  0,
  NOW()
FROM gov_menu m WHERE m.name='系统管理';
-- 
-- table `gov_user`
-- 
INSERT INTO gov_user
            (ID,
             LOGIN_NAME,
             REAL_NAME,
             PASSWORD,
             WORK_CODE,
             EMAIL,
             FAX,
             TEL,
             MOBILE,
             ZIP,
             ADDRESS,
             GENDER,
             BIRTHDAY,
             CREATE_TIME,
             LAST_LOGIN_TIME,
             LAST_LOGIN_IP,
             CURRENT_LOGIN_TIME,
             CURRENT_LOGIN_IP,
             LOGIN_COUNT,
             IS_DISABLED,
             ORG_ID,
             VERSION)
SELECT
  UUID(),
  'ADMIN',
  '系统管理员',
  '202cb962ac59075b964b07152d234b70',
  'A001',
  'admin@govsoft.net',
  '0769-222222',
  '0769-222222',
  '13888888888',
  '222222',
  'ADDRESS',
  '1',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  0,
  id,
  NOW()
FROM gov_org
WHERE NAME = '政创软件';
-- 
-- table `gov_user_role`
-- 
INSERT INTO gov_user_role
            (USER_ID,
             ROLE_ID)
SELECT
  u.id,
  r.id
FROM gov_user u,
  gov_role r
WHERE u.REAL_NAME = '系统管理员'
    AND r.NAME = '系统管理员';
-- 
-- table `gov_role_menu`
-- 
INSERT INTO gov_role_menu
            (ROLE_ID,
             MENU_ID)
SELECT
  r.id,
  m.id
FROM gov_role r,
  gov_menu m
WHERE r.NAME = '系统管理员'
    AND m.NAME = '系统管理';
INSERT INTO gov_role_menu
            (ROLE_ID,
             MENU_ID)
SELECT
  r.id,
  m.id
FROM gov_role r,
  gov_menu m
WHERE r.NAME = '系统管理员'
    AND m.NAME = '菜单管理';
INSERT INTO gov_role_menu
            (ROLE_ID,
             MENU_ID)
SELECT
  r.id,
  m.id
FROM gov_role r,
  gov_menu m
WHERE r.NAME = '系统管理员'
    AND m.NAME = '角色管理';
INSERT INTO gov_role_menu
            (ROLE_ID,
             MENU_ID)
SELECT
  r.id,
  m.id
FROM gov_role r,
  gov_menu m
WHERE r.NAME = '系统管理员'
    AND m.NAME = '组织机构管理';
INSERT INTO gov_role_menu
            (ROLE_ID,
             MENU_ID)
SELECT
  r.id,
  m.id
FROM gov_role r,
  gov_menu m
WHERE r.NAME = '系统管理员'
    AND m.NAME = '用户管理';

INSERT INTO gov_resource
            (ID,
             TYPE,
             VALUE,
             DESCRIPTION,
             VERSION)
VALUES (UUID(),
        'url',
        '/*',
        'url访问',
        NOW());
INSERT INTO gov_role_resource
            (ROLE_ID,
             RESOURCE_ID)
SELECT
  r.id,
  rs.id
FROM gov_role r,
  gov_resource rs
WHERE r.NAME = '系统管理员'
    AND rs.type = 'url';