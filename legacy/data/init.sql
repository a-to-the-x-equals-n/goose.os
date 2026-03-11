CREATE DATABASE IF NOT EXISTS br_web;
USE br_web;

CREATE TABLE IF NOT EXISTS goose_images (
    id          INT AUTO_INCREMENT PRIMARY KEY,
    title       VARCHAR(255),
    filepath    VARCHAR(512) NOT NULL,
    uploaded_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    description TEXT,
    size        INT,
    width       INT,
    height      INT,
    upvotes     INT DEFAULT 0,
    downvotes   INT DEFAULT 0,
    format      VARCHAR(10)
);

INSERT INTO goose_images
    (id, title, filepath, description, size, width, height, format, upvotes, downvotes, uploaded_at)
VALUES
    (2,  'goots',            'f92ca1c4-d0e2-4f0d-8abb-7323ba9428ce.webp', 'The pinnacle of AI learning',                                                                                                         62066,  680,  753,  'webp', 4,  1, '2025-04-01 12:26:29'),
    (3,  'never-peace',      '03ad7783-4b9d-4a38-88a9-15f53c5ddd18.webp', 'The ancient Goose Tribes viewed war with the utmost',                                                                                  46754, 2048, 2048, 'webp', 0,  0, '2025-04-01 12:26:29'),
    (4,  'other-door',       'f01d8406-cbfb-435e-a914-db9dc0a3e05a.webp', 'in case of fire, prepare for combat',                                                                                                  32458,  507,  672, 'webp', 0,  3, '2025-04-01 12:26:29'),
    (5,  'bit-cig',          '0df82afb-ffa2-4a98-aa83-c690a2a1e2d7.webp', 'rare advertising image from the 1800s for goose cigarettes',                                                                          6432,  640,  640, 'webp', 1,  1, '2025-04-01 12:26:29'),
    (6,  'attack-goose',     'c3b37601-977c-4557-9350-f3aa105d5ea7.webp', 'gooses are trained from birth to attack on command',                                                                                   73270, 1500, 1500, 'webp', 0,  0, '2025-04-01 12:26:29'),
    (7,  'goose-energy',     '22bd1bcf-b320-4393-a950-52a2b5ce0b8c.webp', 'the tribe stood at a crossroads, each faction drawn down a path: one bred and eager for war, the other, hellbent on "silly-goosing"', 42138,  612,  408, 'webp', 1,  0, '2025-04-01 12:26:30'),
    (8,  'hjonk',            '867f166d-7572-4777-b521-e4b789d177d4.webp', 'an artist\'s rendering of an early goose chieftain',                                                                                   8894,  225,  225, 'webp', 3,  1, '2025-04-01 12:26:30'),
    (9,  'trying-to-reach',  'd030be75-7154-4544-9a23-0b4c0dc6c558.webp', 'cast into an era of peace, the gooses try to forge a new path forward, such as trying to reach you about your car\'s extended warranty', 102530, 1080, 946, 'webp', 1,  4, '2025-04-01 12:26:30'),
    (10, 'serious-goose',    '915c9d8f-9841-46f7-82c9-222d2b61e61c.webp', 'a stil depicting Serious Goose, the solemn sibling and eternal rival of the True God Silly Goose',                                   434348, 1946, 1946, 'webp', 1,  0, '2025-04-01 12:26:30'),
    (11, 'get-the-bonk',     '4737032b-ea19-48d1-947a-e39349d42583.webp', 'the battle-hardened goose\'s weapon of choice',                                                                                        8924,  270,  380, 'webp', 0,  1, '2025-04-01 12:26:30'),
    (12, 'mhmm-goose',       'eb3fa5b4-bc0e-4bf3-b775-c65cc7ef2c16.webp', 'not me, just silently watching your chaos unfold like I said it would...',                                                            37628,  728,  543, 'webp', 1,  0, '2025-04-01 12:26:30'),
    (13, 'no-god',           '473717de-e347-4a6d-8f7f-d59f2f92f68b.webp', '...when the dust settled, the Eldritch Gods had fallen--and in their place stood only goose, sovereign of The Unremembered Realms',  49500, 1444, 1443, 'webp', 9,  0, '2025-04-01 12:26:30'),
    (14, 'when-geese-attack','06ed09f5-521b-47c0-893e-f82aebeb844f.webp', 'everything changed when the fire nation attacked',                                                                                    109818, 1024,  576, 'webp', 10, 3, '2025-04-01 12:26:30'),
    (15, 'sad-goose',        'c2fcf9b1-dbae-441b-9878-c0c11eb8028b.webp', 'one tear traced his beak...not for the gods long buried, but for the lost goosen who honked their final honks',                       7332,  240,  240, 'webp', 1,  0, '2025-04-01 12:26:30'),
    (16, 'get-real2',        '0e331ab5-7dd0-4186-b967-4c25498a1f9f.webp', 'this is just a picture of ol\' Terry. Just... classic Terry',                                                                         57542,  640,  626, 'webp', 2,  4, '2025-04-01 12:26:30'),
    (17, 'life-is-goose',    'b8786882-e4c5-4106-83ed-16ed6b110265.webp', 'he who honks last, honks best',                                                                                                       12228,  360,  360, 'webp', 0,  4, '2025-04-01 12:26:30'),
    (18, 'he-attacc',        '3f134dc0-b48c-4045-8c98-2f90c3715e22.webp', 'one goose dared to love. All he ever wanted was a warm embrace... but fate made him a weapon',                                        301824, 1242, 2171, 'webp', 5,  0, '2025-04-01 12:26:30'),
    (35, 'fairygoose',       'e41bdad3-279c-4f62-a238-1da8aedcd389.webp', 'fairy goose mother',                                                                                                                  38278,  512,  355, 'webp', 0,  1, '2025-04-16 18:32:47'),
    (36, 'fairygoose',       '8d33d06e-fe3f-4260-91ff-d31a81e47592.webp', '',                                                                                                                                     38278,  512,  355, 'webp', 0,  0, '2025-04-16 23:55:19'),
    (37, 'fairygoose',       '215b6ba8-925d-4fb9-8410-ad56a04326db.webp', '',                                                                                                                                     38278,  512,  355, 'webp', 0,  0, '2025-04-16 23:56:05'),
    (38, 'fairygoose',       '7a1cb1f9-3075-4359-b0ad-103a1c3c18f1.webp', '',                                                                                                                                     38278,  512,  355, 'webp', 0,  0, '2025-04-17 00:09:39'),
    (39, 'fairygoose',       '10f6db28-9f7b-4c5d-925a-155fbc956fb5.webp', 'mother of gooses',                                                                                                                    38278,  512,  355, 'webp', 0,  0, '2025-04-17 01:12:45');

-- keep AUTO_INCREMENT ahead of seeded ids
ALTER TABLE goose_images AUTO_INCREMENT = 100;
