INSERT INTO raw.raw_customers
    (first_name, last_name, email, city, country, segment, registered_at)
VALUES
('Ahmet',  'Yılmaz', 'ahmet@email.com',  'Istanbul', 'Turkey', 'retail',    '2022-03-15 09:00:00'),
('Ayşe',   'Kara',   'ayse@email.com',   'Ankara',   'Turkey', 'wholesale', '2022-05-22 14:30:00'),
('Mehmet', 'Demir',  'mehmet@email.com', 'Izmir',    'Turkey', 'vip',       '2021-11-08 11:00:00'),
('Fatma',  'Çelik',  'fatma@email.com',  'Bursa',    'Turkey', 'retail',    '2023-01-19 16:45:00'),
('Can',    'Öztürk', 'can@email.com',    'Antalya',  'Turkey', 'retail',    '2022-08-30 10:15:00'),
('Zeynep', 'Arslan', 'zeynep@email.com', 'Istanbul', 'Turkey', 'vip',       '2021-06-12 08:00:00'),
('Ali',    'Şahin',  'ali@email.com',    'Konya',    'Turkey', 'wholesale', '2023-03-05 13:20:00'),
('Elif',   'Doğan',  'elif@email.com',   'Adana',    'Turkey', 'retail',    '2022-12-01 17:00:00'),
('Murat',  'Kaya',   'murat@email.com',  'Istanbul', 'Turkey', 'vip',       '2021-09-25 09:30:00'),
('Selin',  'Yıldız', 'selin@email.com',  'Ankara',   'Turkey', 'retail',    '2023-06-14 12:00:00');

INSERT INTO raw.raw_products
    (name, category, subcategory, unit_price, unit_cost, supplier, is_active)
VALUES
('MacBook Pro 14',    'Electronics', 'Laptops',      65000.00, 48000.00, 'TechDist A.Ş.',  TRUE),
('iPhone 15 Pro',     'Electronics', 'Phones',       55000.00, 40000.00, 'TechDist A.Ş.',  TRUE),
('AirPods Pro',       'Electronics', 'Accessories',   8500.00,  5500.00, 'TechDist A.Ş.',  TRUE),
('Sony WH-1000XM5',  'Electronics', 'Accessories',   7200.00,  4800.00, 'SoundPlus Ltd.', TRUE),
('Ergonomik Masa',    'Furniture',   'Desks',         4500.00,  2800.00, 'OfisMob A.Ş.',   TRUE),
('Oyuncu Koltuğu',    'Furniture',   'Chairs',        6800.00,  4200.00, 'OfisMob A.Ş.',   TRUE),
('Kitaplık',          'Furniture',   'Storage',       2200.00,  1300.00, 'OfisMob A.Ş.',   TRUE),
('Clean Code',        'Books',       'Programming',    250.00,   120.00, 'Kitabevi Ltd.',  TRUE),
('Designing Data',    'Books',       'Data',           320.00,   160.00, 'Kitabevi Ltd.',  TRUE),
('Temel Algoritmalar','Books',       'Computer Sci',   280.00,   140.00, 'Kitabevi Ltd.',  TRUE),
('Yoga Matı',         'Sports',      'Fitness',        450.00,   200.00, 'SportLine A.Ş.', TRUE),
('Dumbbell Set',      'Sports',      'Weights',       1800.00,   900.00, 'SportLine A.Ş.', TRUE),
('iPad Air',          'Electronics', 'Tablets',      28000.00, 20000.00, 'TechDist A.Ş.',  FALSE);

INSERT INTO raw.raw_orders
    (customer_id, order_date, status, channel, region)
VALUES
(1,  '2024-01-05', 'completed', 'web',    'Marmara'),
(1,  '2024-02-18', 'completed', 'mobile', 'Marmara'),
(2,  '2024-01-12', 'completed', 'web',    'Ic Anadolu'),
(3,  '2024-01-20', 'completed', 'store',  'Ege'),
(3,  '2024-03-08', 'returned',  'web',    'Ege'),
(4,  '2024-02-01', 'completed', 'mobile', 'Marmara'),
(5,  '2024-02-14', 'cancelled', 'web',    'Akdeniz'),
(6,  '2024-01-30', 'completed', 'store',  'Marmara'),
(6,  '2024-03-15', 'completed', 'web',    'Marmara'),
(7,  '2024-02-22', 'completed', 'web',    'Ic Anadolu'),
(8,  '2024-03-01', 'completed', 'mobile', 'Akdeniz'),
(9,  '2024-01-08', 'completed', 'store',  'Marmara'),
(9,  '2024-02-25', 'completed', 'web',    'Marmara'),
(10, '2024-03-20', 'pending',   'web',    'Ic Anadolu');

INSERT INTO raw.raw_order_items
    (order_id, product_id, quantity, unit_price, discount_pct)
VALUES
(1,  1,  1, 65000.00,  0.00),
(1,  3,  1,  8500.00,  5.00),
(2,  2,  1, 55000.00,  0.00),
(3,  5,  1,  4500.00, 10.00),
(3,  6,  1,  6800.00, 10.00),
(4,  2,  1, 55000.00,  0.00),
(4,  4,  1,  7200.00,  0.00),
(5,  3,  1,  8500.00,  0.00),
(6,  7,  2,  2200.00,  0.00),
(6,  8,  1,   250.00,  0.00),
(7,  11, 2,   450.00,  0.00),
(8,  1,  1, 65000.00,  5.00),
(8,  3,  2,  8500.00,  5.00),
(9,  9,  1,   320.00,  0.00),
(9,  10, 1,   280.00,  0.00),
(10, 6,  1,  6800.00, 15.00),
(11, 12, 1,  1800.00,  0.00),
(12, 2,  1, 55000.00,  0.00),
(13, 1,  1, 65000.00,  0.00),
(13, 4,  1,  7200.00,  5.00);