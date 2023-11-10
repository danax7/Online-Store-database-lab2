-- INSERT INTO КЛИЕНТ (Имя, Фамилия, Адрес_доставки, Электронная_почта, Номер_телефона) VALUES
-- ('Иван', 'Иванов', 'ул. Пушкина 10', 'ivan@example.com', '123-456-7890'),
-- ('Мария', 'Петрова', 'ул. Ленина 5', 'maria@example.com', '987-654-3210'),
-- ('Алексей', 'Сидоров', 'ул. Гагарина 15', 'alex@example.com', '111-222-3333');
--
--
-- INSERT INTO ЗАКАЗ (Дата_и_время_заказа, Сумма_заказа, Статус_заказа, Клиент_ID, Оплаченная_сумма, Оставшаяся_сумма) VALUES
-- ('2023-09-15 14:30:00', 150.50, 'В обработке', 1, 0.00, 150.50),
-- ('2023-09-16 10:15:00', 75.25, 'Доставлен', 2, 75.25, 0.00),
-- ('2023-09-17 16:45:00', 200.00, 'Оплачен', 3, 200.00, 0.00);
--
--
-- INSERT INTO Оплата (Клиент_ID, Способ_оплаты, Номер_карты, Дата_истечения_срока_действия_карты) VALUES
-- (1, 'Кредитная карта', '123456789', '2025-12-01'),
-- (2, 'Дебетовая карта', '65432109', '2024-06-01'),
-- (3, 'PayPal', '80912839012', NULL);
--
--
-- INSERT INTO КОРЗИНА (Дата_и_время_создания, Клиент_ID) VALUES
-- ('2023-09-15 14:00:00', 1),
-- ('2023-09-16 09:45:00', 2),
-- ('2023-09-17 16:30:00', 3);
--
-- INSERT INTO КАТЕГОРИЯ_ТОВАРА (Название_категории, Описание_категории, Родительская_категория_ID) VALUES
-- ('Электроника', 'Технические устройства', NULL),
-- ('Одежда', 'Мода и стиль', NULL),
-- ('Бытовая техника', 'Устройства для дома', NULL);
--
-- INSERT INTO КАТЕГОРИЯ_ТОВАРА (Название_категории, Описание_категории, Родительская_категория_ID) VALUES
-- ('Мониторы', 'Технические устройства для отображения', 1);
--
--
-- INSERT INTO ПРОИЗВОДИТЕЛЬ_ТОВАРА (Название_производителя, Страна_производства, Контактная_информация) VALUES
-- ('Samsung', 'США', 'support@samsung.com'),
-- ('Nike', 'США', 'support@nike.com'),
-- ('Bosch', 'Германия', 'support@bosch.com');
--
--
-- INSERT INTO ТОВАР (Название_товара, Описание_товара, Цена, Наличие_на_складе, Категория_ID, Производитель_ID) VALUES
-- ('Смартфон Galaxy S20', 'Популярный смартфон', 799.99, 50, 1, 1),
-- ('Футболка Nike', 'Модная футболка', 29.99, 100, 2, 2),
-- ('Пылесос Bosch', 'Мощный пылесос для дома', 149.99, 30, 3, 3);
-- INSERT INTO ТОВАР (Название_товара, Описание_товара, Цена, Наличие_на_складе, Категория_ID, Производитель_ID) VALUES
-- ('Монитор Samsung g5', '27-дюймовый монитор с высоким разрешением', 299.99, 15, 2, 1);
--
--
-- INSERT INTO ЭЛЕМЕНТ_ЗАКАЗА (Количество_товара, Сумма_за_товар, Товар_ID, Заказ_ID) VALUES
-- (1, 799.99, 1, 1),
-- (2, 59.98, 2, 1),
-- (1, 149.99, 3, 2);
--
--
-- INSERT INTO ОТЗЫВ (Текст_отзыва, Рейтинг, Дата_публикации, Клиент_ID, Товар_ID) VALUES
-- ('Отличный смартфон!', 5, '2023-09-16', 1, 1),
-- ('Футболка супер!', 4, '2023-09-17', 2, 2),
-- ('Пылесос работает отлично!', 5, '2023-09-18', 3, 3);
--
--
-- INSERT INTO СКЛАД (Местоположение, Общее_количество_товара) VALUES
-- ('Склад 1', 100),
-- ('Склад 2', 150),
-- ('Склад 3', 200);
--
--
-- INSERT INTO ТОВАР_СКЛАД (Товар_ID, Склад_ID, Количество_на_складе) VALUES
-- (1, 1, 20),
-- (1, 2, 30),
-- (1, 3, 50),
-- (2, 1, 50),
-- (2, 3, 50),
-- (3, 2, 20),
-- (3, 3, 10);

--
-- INSERT INTO СОТРУДНИК (Имя, Фамилия, Должность, Зарплата, Дата_найма, Контактная_информация) VALUES
-- ('Анна', 'Иванова', 'Менеджер', 2000.00, '2023-01-15', 'anna@example.com'),
-- ('Петр', 'Петров', 'Курьер', 1500.00, '2023-03-20', 'petr@example.com'),
-- ('Елена', 'Сидорова', 'Администратор', 2500.00, '2023-05-10', 'elena@example.com');
--
-- INSERT INTO ВОЗВРАТ (Дата_и_время_возврата, Причина, Сумма_возврата, Заказ_ID, Элемент_заказа_ID, Сотрудник_ID) VALUES
-- ('2023-09-18 11:30:00', 'Дефектный товар', 799.99, 1, 1, 3),
-- ('2023-09-18 12:00:00', 'Не подошел размер', 29.99, 2, 2, 3),
-- ('2023-09-18 12:30:00', 'Не соответствует описанию', 149.99, 3, 3, 3);
-- Вставляем клиентов
-- Добавление клиентов
-- Добавление данных в таблицу КЛИЕНТ

INSERT INTO КЛИЕНТ (Имя, Фамилия, Адрес_доставки, Электронная_почта, Номер_телефона)
VALUES
    ('Иван', 'Иванов', 'ул. Пушкина, 1', 'ivan@example.com', '+7 (123) 456-7890'),
    ('Мария', 'Петрова', 'ул. Ленина, 2', 'maria@example.com', '+7 (234) 567-8901');

-- Добавление данных в таблицу ПРОИЗВОДИТЕЛЬ_ТОВАРА
INSERT INTO ПРОИЗВОДИТЕЛЬ_ТОВАРА (Название_производителя, Страна_производства, Контактная_информация)
VALUES
    ('Apple', 'США', 'apple@example.com'),
    ('Samsung', 'Южная Корея', 'samsung@example.com');

-- Добавление данных в таблицу КАТЕГОРИЯ_ТОВАРА (с подкатегориями)
INSERT INTO КАТЕГОРИЯ_ТОВАРА (Название_категории, Описание_категории, Родительская_категория_ID)
VALUES
    ('Электроника', 'Технические устройства', NULL), -- Главная категория
    ('Смартфоны', 'Мобильные телефоны', 1), -- Подкатегория
    ('Ноутбуки', 'Портативные компьютеры', 1); -- Подкатегория;

-- Добавление данных в таблицу СКЛАД
INSERT INTO СКЛАД (Местоположение, Общее_количество_товара)
VALUES
    ('Склад 1', 1000),
    ('Склад 2', 1500);

-- Добавление данных в таблицу ТОВАР
INSERT INTO ТОВАР (Название_товара, Описание_товара, Цена, Наличие_на_складе, Категория_ID, Производитель_ID)
VALUES
    ('iPhone 13', 'Смартфон от Apple', 799.99, 100, 2, 1),
    ('Galaxy S21', 'Смартфон от Samsung', 699.99, 150, 2, 2),
    ('MacBook Air', 'Ноутбук от Apple', 999.99, 50, 3, 1);

-- Добавление данных в таблицу УНИКАЛЬНЫЙ_ТОВАР
INSERT INTO УНИКАЛЬНЫЙ_ТОВАР (Товар_ID, Склад_ID, Уникальный_идентификатор, Продан, Возвращен)
VALUES
    (1, 1, 'UNIQUE-123', FALSE, FALSE),
    (1, 2, 'UNIQUE-124', FALSE, FALSE),
    (2, 2, 'UNIQUE-125', FALSE, FALSE);

-- Добавление данных в таблицу КОРЗИНА
INSERT INTO КОРЗИНА (Дата_и_время_создания, Клиент_ID)
VALUES
    ('2023-09-15 10:30:00', 1),
    ('2023-09-16 14:15:00', 2);

-- Добавление данных в таблицу КОРЗИНА_ТОВАР
INSERT INTO КОРЗИНА_ТОВАР (Корзина_ID, Товар_ID, Количество)
VALUES
    (1, 1, 1),
    (2, 2, 2);

-- Добавление данных в таблицу ЗАКАЗ
INSERT INTO ЗАКАЗ (Дата_и_время_заказа, Сумма_заказа, Статус_заказа, Клиент_ID, Оплаченная_сумма, Оставшаяся_сумма)
VALUES
    ('2023-09-16 15:00:00', 199.99, 'В обработке', 1, 0, 199.99),
    ('2023-09-16 16:30:00', 699.99, 'Оплачен', 2, 699.99, 0);

-- Добавление данных в таблицу Оплата
INSERT INTO Оплата (Заказ_ID, Способ_оплаты, Номер_карты, Дата_истечения_срока_действия_карты)
VALUES
    (1, 'Кредитная карта', '1234-5678-9012-3456', '2025-12-31'),
    (2, 'PayPal', 'paypal@example.com', '2025-12-31');

-- Добавление данных в таблицу ЭЛЕМЕНТ_ЗАКАЗА
INSERT INTO ЭЛЕМЕНТ_ЗАКАЗА (Количество_товара, Сумма_за_товар, Товар_ID, Уникальный_товар_ID, Заказ_ID)
VALUES
    (1, 199.99, 1, 1, 1),
    (2, 699.99, 2, 3, 2);

-- Добавление данных в таблицу ОТЗЫВ
INSERT INTO ОТЗЫВ (Текст_отзыва, Рейтинг, Дата_публикации, Клиент_ID, Товар_ID)
VALUES
    ('Отличный смартфон!', 5, '2023-09-16', 1, 1),
    ('Покупкой доволен, все работает отлично.', 4, '2023-09-17', 2, 2);

-- Добавление данных в таблицу ТОВАР_СКЛАД
INSERT INTO ТОВАР_СКЛАД (Товар_ID, Склад_ID, Количество_на_складе)
VALUES
    (1, 1, 100),
    (1, 2, 50),
    (2, 2, 100),
    (3, 1, 25);

-- Добавление данных в таблицу СОТРУДНИК
INSERT INTO СОТРУДНИК (Имя, Фамилия, Должность, Зарплата, Дата_найма, Контактная_информация)
VALUES
    ('Алексей', 'Иванов', 'Продавец-консультант', 1500.00, '2021-01-15', 'alex@example.com'),
    ('Елена', 'Петрова', 'Менеджер по продажам', 2000.00, '2020-03-20', 'elena@example.com');

-- Добавление данных в таблицу ВОЗВРАТ
INSERT INTO ВОЗВРАТ (Дата_и_время_возврата, Причина, Сумма_возврата, Заказ_ID, Элемент_заказа_ID, Сотрудник_ID)
VALUES
    ('2023-09-17 11:30:00', 'Не понравился товар', 199.99, 1, 1, 2),
    ('2023-09-17 12:15:00', 'Дублирование заказа', 699.99, 2, 2, 1);


-- Клиенты
INSERT INTO КЛИЕНТ (Имя, Фамилия, Адрес_доставки, Электронная_почта, Номер_телефона)
VALUES
    ('Иван', 'Иванов', 'ул. Пушкина, 1', 'ivan@example.com', '+7 (123) 456-7890'),
    ('Мария', 'Петрова', 'ул. Ленина, 2', 'maria@example.com', '+7 (234) 567-8901'),
    ('Алексей', 'Смирнов', 'пр. Гагарина, 3', 'alex@example.com', '+7 (345) 678-9012');

-- Производители товаров
INSERT INTO ПРОИЗВОДИТЕЛЬ_ТОВАРА (Название_производителя, Страна_производства, Контактная_информация)
VALUES
    ('Apple', 'США', 'apple@example.com'),
    ('Samsung', 'Южная Корея', 'samsung@example.com'),
    ('Sony', 'Япония', 'sony@example.com');

-- Категории товаров
INSERT INTO КАТЕГОРИЯ_ТОВАРА (Название_категории, Описание_категории, Родительская_категория_ID)
VALUES
    ('Электроника', 'Технические устройства', NULL),
    ('Смартфоны', 'Мобильные телефоны', 1),
    ('Ноутбуки', 'Портативные компьютеры', 1),
    ('Телевизоры', 'Телевизионная техника', 1);

-- Склады
INSERT INTO СКЛАД (Местоположение, Общее_количество_товара)
VALUES
    ('Склад 1', 1000),
    ('Склад 2', 1500);

-- Товары
INSERT INTO ТОВАР (Название_товара, Описание_товара, Цена, Наличие_на_складе, Категория_ID, Производитель_ID)
VALUES
    ('iPhone 13', 'Смартфон от Apple', 799.99, 100, 2, 1),
    ('Galaxy S21', 'Смартфон от Samsung', 699.99, 150, 2, 2),
    ('VAIO Z', 'Ноутбук от Sony', 1299.99, 50, 3, 3),
    ('Bravia X900H', 'Телевизор от Sony', 899.99, 75, 4, 3);

-- Уникальные товары
INSERT INTO УНИКАЛЬНЫЙ_ТОВАР (Товар_ID, Склад_ID, Уникальный_идентификатор, Продан, Возвращен)
VALUES
    (1, 1, 'UNIQUE-123', FALSE, FALSE),
    (1, 2, 'UNIQUE-124', FALSE, FALSE),
    (2, 2, 'UNIQUE-125', FALSE, FALSE),
    (3, 1, 'UNIQUE-126', FALSE, FALSE),
    (4, 2, 'UNIQUE-127', FALSE, FALSE);

-- Корзины
INSERT INTO КОРЗИНА (Дата_и_время_создания, Клиент_ID)
VALUES
    ('2023-09-15 10:30:00', 1),
    ('2023-09-16 14:15:00', 2),
    ('2023-09-16 16:30:00', 3);

-- Элементы корзины
INSERT INTO КОРЗИНА_ТОВАР (Корзина_ID, Товар_ID, Количество)
VALUES
    (1, 1, 1),
    (2, 2, 2),
    (3, 3, 1);

-- Заказы
INSERT INTO ЗАКАЗ (Дата_и_время_заказа, Сумма_заказа, Статус_заказа, Клиент_ID, Оплаченная_сумма, Оставшаяся_сумма)
VALUES
    ('2023-09-16 15:00:00', 199.99, 'В обработке', 1, 0, 199.99),
    ('2023-09-16 16:30:00', 699.99, 'Оплачен', 2, 699.99, 0),
    ('2023-09-17 09:45:00', 899.99, 'В пути', 3, 899.99, 0);

-- Оплаты
INSERT INTO Оплата (Заказ_ID, Способ_оплаты, Номер_карты, Дата_истечения_срока_действия_карты)
VALUES
    (1, 'Кредитная карта', '1234-5678-9012-3456', '2025-12-31'),
    (2, 'PayPal', 'paypal@example.com', '2025-12-31'),
    (3, 'Банковский перевод', '1234567890', '2025-12-31');

-- Элементы заказа
INSERT INTO ЭЛЕМЕНТ_ЗАКАЗА (Количество_товара, Сумма_за_товар, Уникальный_товар_ID, Заказ_ID)
VALUES
    (1, 199.99, 1, 1),
    (2, 699.99, 2, 2),
    (1, 899.99, 3, 3);

-- Отзывы
INSERT INTO ОТЗЫВ (Текст_отзыва, Рейтинг, Дата_публикации, Клиент_ID, Товар_ID)
VALUES
    ('Отличный смартфон!', 5, '2023-09-16', 1, 1),
    ('Покупкой доволен, все работает отлично.', 4, '2023-09-17', 2, 2),
    ('Качество изображения на телевизоре просто потрясающее!', 5, '2023-09-18', 3, 4);

-- Товары на складе
INSERT INTO ТОВАР_СКЛАД (Товар_ID, Склад_ID, Количество_на_складе)
VALUES
    (1, 1, 100),
    (1, 2, 50),
    (2, 2, 100),
    (3, 1, 25),
    (4, 2, 60);

-- Сотрудники
INSERT INTO СОТРУДНИК (Имя, Фамилия, Должность, Зарплата, Дата_найма, Контактная_информация)
VALUES
    ('Алексей', 'Иванов', 'Продавец-консультант', 1500.00, '2021-01-15', 'alex@example.com'),
    ('Елена', 'Петрова', 'Менеджер по продажам', 2000.00, '2020-03-20', 'elena@example.com'),
    ('Дмитрий', 'Смирнов', 'Старший продавец', 1800.00, '2019-11-10', 'dmitriy@example.com');

-- Возвраты
INSERT INTO ВОЗВРАТ (Дата_и_время_возврата, Причина, Сумма_возврата, Заказ_ID, Элемент_заказа_ID, Сотрудник_ID)
VALUES
    ('2023-09-17 11:30:00', 'Не понравился товар', 199.99, 1, 1, 2),
    ('2023-09-17 12:15:00', 'Дублирование заказа', 699.99, 2, 2, 1),
    ('2023-09-18 13:30:00', 'Товар оказался бракованным', 899.99, 3, 3, 3);

-- Клиенты
INSERT INTO КЛИЕНТ (Имя, Фамилия, Адрес_доставки, Электронная_почта, Номер_телефона)
VALUES
    ('Александр', 'Иванов', 'ул. Ленина, 123', 'alex@example.com', '+7 (123) 456-7890'),
    ('Екатерина', 'Петрова', 'пр. Гагарина, 45', 'ekaterina@example.com', '+7 (234) 567-8901');

-- Производители товаров
INSERT INTO ПРОИЗВОДИТЕЛЬ_ТОВАРА (Название_производителя, Страна_производства, Контактная_информация)
VALUES
    ('LG', 'Южная Корея', 'lg@example.com'),
    ('HP', 'США', 'hp@example.com');

-- Категории товаров
INSERT INTO КАТЕГОРИЯ_ТОВАРА (Название_категории, Описание_категории, Родительская_категория_ID)
VALUES
    ('Электроника', 'Технические устройства', NULL),
    ('Компьютеры', 'Персональные компьютеры', 1),
    ('Телефоны', 'Мобильные устройства', 1);

-- Склады
INSERT INTO СКЛАД (Местоположение, Общее_количество_товара)
VALUES
    ('Склад 1', 100),
    ('Склад 2', 150);

-- Товары
INSERT INTO ТОВАР (Название_товара, Описание_товара, Цена, Наличие_на_складе, Категория_ID, Производитель_ID)
VALUES
    ('Монитор LG 27"', 'ЖК монитор', 199.99, 50, 2, 1),
    ('Ноутбук HP Pavilion', 'Портативный компьютер', 699.99, 75, 2, 2),
    ('Смартфон LG G8', 'Смартфон с Android', 399.99, 30, 3, 1);

-- Уникальные товары
INSERT INTO УНИКАЛЬНЫЙ_ТОВАР (Товар_ID, Склад_ID, Уникальный_идентификатор)
VALUES
    (1, 1, 'UNIQUE-001'),
    (1, 2, 'UNIQUE-002'),
    (2, 1, 'UNIQUE-003'),
    (3, 2, 'UNIQUE-004');

-- Корзины
INSERT INTO КОРЗИНА (Дата_и_время_создания, Клиент_ID)
VALUES
    ('2023-10-25 10:30:00', 1),
    ('2023-10-25 14:15:00', 2);

-- Элементы корзины
INSERT INTO КОРЗИНА_ТОВАР (Корзина_ID, Товар_ID, Количество)
VALUES
    (1, 1, 1),
    (2, 2, 2),
    (2, 3, 1);

-- Заказы
INSERT INTO ЗАКАЗ (Дата_и_время_заказа, Сумма_заказа, Статус_заказа, Клиент_ID, Оплаченная_сумма, Оставшаяся_сумма)
VALUES
    ('2023-10-26 15:00:00', 199.99, 'В обработке', 1, 0, 199.99),
    ('2023-10-26 16:30:00', 1099.98, 'Ожидает оплаты', 2, 0, 1099.98);

-- Оплаты
INSERT INTO Оплата (Заказ_ID, Способ_оплаты, Номер_карты, Дата_истечения_срока_действия_карты)
VALUES
    (1, 'Кредитная карта', '1234-5678-9012-3456', '2025-12-31'),
    (2, 'PayPal', 'paypal@example.com', NULL);

-- Элементы заказа
INSERT INTO ЭЛЕМЕНТ_ЗАКАЗА (ID, Количество_товара, Сумма_за_товар, Уникальный_товар_ID, Заказ_ID)
VALUES
    (1, 1, 199.99, 1, 1),
    (2, 2, 699.99, 2, 2),
    (3, 1, 899.99, 3, 2);


-- Элементы заказа - уникальные товары
INSERT INTO ЭЛЕМЕНТ_ЗАКАЗА_УНИКАЛЬНЫЙ_ТОВАР (Элемент_заказа_ID, Уникальный_товар_ID)
VALUES
    (1, 1),
    (2, 2),
    (2, 3);

-- Отзывы
INSERT INTO ОТЗЫВ (Текст_отзыва, Рейтинг, Дата_публикации, Клиент_ID, Товар_ID)
VALUES
    ('Отличный монитор!', 5, '2023-10-27', 1, 1),
    ('Хороший ноутбук для работы', 4, '2023-10-27', 2, 2);

-- Сотрудники
INSERT INTO СОТРУДНИК (Имя, Фамилия, Должность, Зарплата, Дата_найма, Контактная_информация)
VALUES
    ('Иван', 'Петров', 'Менеджер по продажам', 2000.00, '2023-01-15', 'ivan@example.com'),
    ('Елена', 'Сидорова', 'Администратор', 1800.00, '2023-02-10', 'elena@example.com');

-- Возвраты
INSERT INTO ВОЗВРАТ (Дата_и_время_возврата, Причина, Сумма_возврата, Заказ_ID, Элемент_заказа_ID, Сотрудник_ID)
VALUES
    ('2023-10-28 11:30:00', 'Не подходит по размеру', 199.99, 1, 1, 1),
    ('2023-10-28 14:45:00', 'Другая модель заказана ошибочно', 699.99, 2, 2, 2);

-- Обновление количества товара на складе
UPDATE ТОВАР_СКЛАД
SET Количество_на_складе = Количество_на_складе + 7
WHERE Товар_ID = 1 AND Склад_ID = 2;

----------------------------------------------------------
-- Вставка данных в таблицу КЛИЕНТ
INSERT INTO КЛИЕНТ (Имя, Фамилия, Адрес_доставки, Электронная_почта, Номер_телефона)
VALUES
    ('Александр', 'Иванов', 'ул. Ленина, 123', 'alex@example.com', '+7 (123) 456-7890'),
    ('Екатерина', 'Петрова', 'пр. Гагарина, 45', 'ekaterina@example.com', '+7 (234) 567-8901'),
    ('Ирина', 'Сидорова', 'ул. Пушкина, 1', 'irina@example.com', '+7 (345) 678-9012');

-- Вставка данных в таблицу ПРОИЗВОДИТЕЛЬ_ТОВАРА
INSERT INTO ПРОИЗВОДИТЕЛЬ_ТОВАРА (Название_производителя, Страна_производства, Контактная_информация)
VALUES
    ('LG', 'Южная Корея', 'lg@example.com'),
    ('HP', 'США', 'hp@example.com'),
    ('Samsung', 'Южная Корея', 'samsung@example.com');

-- Вставка данных в таблицу КАТЕГОРИЯ_ТОВАРА
INSERT INTO КАТЕГОРИЯ_ТОВАРА (Название_категории, Описание_категории, Родительская_категория_ID)
VALUES
    ('Электроника', 'Технические устройства', NULL),
    ('Компьютеры', 'Персональные компьютеры', 1),
    ('Телефоны', 'Мобильные устройства', 1),
    ('Ноутбуки', 'Переносные компьютеры', 2),
    ('Мониторы', 'Видео и мониторы', 2);

-- Вставка данных в таблицу СКЛАД
INSERT INTO СКЛАД (Местоположение, Общее_количество_товара)
VALUES
    ('Склад 1', 100),
    ('Склад 2', 150),
    ('Склад 3', 200);

-- Вставка данных в таблицу ТОВАР
INSERT INTO ТОВАР (Название_товара, Описание_товара, Цена, Наличие_на_складе, Категория_ID, Производитель_ID)
VALUES
    ('Монитор LG 27"', 'ЖК монитор', 199.99, 50, 5, 1),
    ('Ноутбук HP Pavilion', 'Портативный компьютер', 699.99, 75, 4, 2),
    ('Смартфон Samsung Galaxy', 'Смартфон с Android', 499.99, 30, 3, 3);

-- Вставка данных в таблицу УНИКАЛЬНЫЙ_ТОВАР
INSERT INTO УНИКАЛЬНЫЙ_ТОВАР (Товар_ID, Склад_ID, Уникальный_идентификатор)
VALUES
    (1, 1, 'UNIQUE-001'),
    (1, 2, 'UNIQUE-002'),
    (2, 1, 'UNIQUE-003'),
    (3, 2, 'UNIQUE-004'),
    (3, 3, 'UNIQUE-005');

-- Вставка данных в таблицу КОРЗИНА
INSERT INTO КОРЗИНА (Дата_и_время_создания, Клиент_ID)
VALUES
    ('2023-10-25 10:30:00', 1),
    ('2023-10-25 14:15:00', 2),
    ('2023-10-26 09:00:00', 3);

-- Вставка данных в таблицу КОРЗИНА_ТОВАР
INSERT INTO КОРЗИНА_ТОВАР (Корзина_ID, Товар_ID, Количество)
VALUES
    (1, 1, 1),
    (2, 2, 2),
    (2, 3, 1),
    (3, 1, 3),
    (3, 3, 1);

-- Вставка данных в таблицу ЗАКАЗ
INSERT INTO ЗАКАЗ (Дата_и_время_заказа, Сумма_заказа, Статус_заказа, Клиент_ID, Оплаченная_сумма, Оставшаяся_сумма)
VALUES
    ('2023-10-25 11:00:00', 199.99, 'В обработке', 1, 0, 199.99),
    ('2023-10-25 15:00:00', 1399.97, 'Оплачен', 2, 1399.97, 0),
    ('2023-10-26 09:30:00', 1849.96, 'Оплачен', 3, 1849.96, 0);

-- Вставка данных в таблицу Оплата
INSERT INTO Оплата (Заказ_ID, Способ_оплаты, Номер_карты, Дата_истечения_срока_действия_карты)
VALUES
    (1, 'Кредитная карта', '1234-5678-9012-3456', '2025-12-01'),
    (2, 'PayPal', 'paypal@example.com', NULL),
    (3, 'Банковский перевод', NULL, NULL);

-- Вставка данных в таблицу ЭЛЕМЕНТ_ЗАКАЗА
INSERT INTO ЭЛЕМЕНТ_ЗАКАЗА (Количество_товара, Сумма_за_товар, Заказ_ID)
VALUES
    (1, 199.99, 1),
    (3, 899.97, 2),
    (4, 949.96, 3);

-- Вставка данных в таблицу ЭЛЕМЕНТ_ЗАКАЗА_УНИКАЛЬНЫЙ_ТОВАР
INSERT INTO ЭЛЕМЕНТ_ЗАКАЗА_УНИКАЛЬНЫЙ_ТОВАР (Элемент_заказа_ID, Уникальный_товар_ID)
VALUES
    (1, 1),
    (2, 2),
    (2, 3),
    (3, 4),
    (3, 5);

-- Вставка данных в таблицу ОТЗЫВ
INSERT INTO ОТЗЫВ (Текст_отзыва, Рейтинг, Дата_публикации, Клиент_ID, Товар_ID)
VALUES
    ('Отличный монитор!', 5, '2023-10-26', 1, 1),
    ('Ноутбук просто великолепен!', 5, '2023-10-26', 2, 2),
    ('Смартфон работает быстро и плавно.', 4, '2023-10-26', 3, 3),
    ('Прекрасный сервис и быстрая доставка.', 5, '2023-10-26', 1, 2),
    ('Хорошая работа, рекомендую.', 4, '2023-10-26', 2, 1);

-- Вставка данных в таблицу ТОВАР_СКЛАД
INSERT INTO ТОВАР_СКЛАД (Товар_ID, Склад_ID, Количество_на_складе)
VALUES
    (1, 1, 30),
    (1, 2, 20),
    (1, 3, 50),
    (2, 1, 40),
    (2, 2, 35),
    (3, 2, 25),
    (3, 3, 30);

-- Вставка данных в таблицу СОТРУДНИК
INSERT INTO СОТРУДНИК (Имя, Фамилия, Должность, Зарплата, Дата_найма, Контактная_информация)
VALUES
    ('Иван', 'Петров', 'Менеджер по продажам', 2000.00, '2020-05-15', '+7 (111) 222-3333'),
    ('Ольга', 'Смирнова', 'Менеджер по закупкам', 2200.00, '2021-02-10', '+7 (222) 333-4444');

-- Вставка данных в таблицу ВОЗВРАТ
INSERT INTO ВОЗВРАТ (Дата_и_время_возврата, Причина, Сумма_возврата, Заказ_ID, Элемент_заказа_ID, Сотрудник_ID)
VALUES
    ('2023-10-27 14:30:00', 'Бракованный товар', 199.99, 1, 1, 1),
    ('2023-10-27 15:00:00', 'Изменение решения', 899.97, 2, 2, 2),
    ('2023-10-27 15:30:00', 'Неудовлетворительное качество', 949.96, 3, 3, 1);

UPDATE ТОВАР_СКЛАД
SET Количество_на_складе = Количество_на_складе + 7
WHERE Товар_ID = 1 AND Склад_ID = 2;
