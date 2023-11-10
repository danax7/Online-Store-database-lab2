CREATE TABLE КЛИЕНТ (
    ID SERIAL PRIMARY KEY,
    Имя VARCHAR(50),
    Фамилия VARCHAR(50),
    Адрес_доставки VARCHAR(255),
    Электронная_почта VARCHAR(100),
    Номер_телефона VARCHAR(20)
);

CREATE TABLE ПРОИЗВОДИТЕЛЬ_ТОВАРА (
    ID SERIAL PRIMARY KEY,
    Название_производителя VARCHAR(100),
    Страна_производства VARCHAR(50),
    Контактная_информация VARCHAR(255)
);

CREATE TABLE КАТЕГОРИЯ_ТОВАРА (
    ID SERIAL PRIMARY KEY,
    Название_категории VARCHAR(50),
    Описание_категории TEXT,
    Родительская_категория_ID INT,
    FOREIGN KEY (Родительская_категория_ID) REFERENCES КАТЕГОРИЯ_ТОВАРА(ID)
);

CREATE TABLE СКЛАД (
    ID SERIAL PRIMARY KEY,
    Местоположение VARCHAR(255),
    Общее_количество_товара INT
);

CREATE TABLE ТОВАР (
    ID SERIAL PRIMARY KEY,
    Название_товара VARCHAR(100),
    Описание_товара TEXT,
    Цена DECIMAL(10, 2),
    Наличие_на_складе INT,
    Категория_ID INT,
    Производитель_ID INT,
    FOREIGN KEY (Категория_ID) REFERENCES КАТЕГОРИЯ_ТОВАРА(ID),
    FOREIGN KEY (Производитель_ID) REFERENCES ПРОИЗВОДИТЕЛЬ_ТОВАРА(ID)
);

CREATE TABLE УНИКАЛЬНЫЙ_ТОВАР (
    ID SERIAL PRIMARY KEY,
    Товар_ID INT,
    Склад_ID INT,
    Уникальный_идентификатор VARCHAR(100) UNIQUE,
    Продан BOOLEAN DEFAULT FALSE,
    Возвращен BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (Товар_ID) REFERENCES ТОВАР(ID),
    FOREIGN KEY (Склад_ID) REFERENCES СКЛАД(ID)
);

CREATE TABLE КОРЗИНА (
    ID SERIAL PRIMARY KEY,
    Дата_и_время_создания TIMESTAMP,
    Клиент_ID INT,
    FOREIGN KEY (Клиент_ID) REFERENCES КЛИЕНТ(ID)
);

CREATE TABLE КОРЗИНА_ТОВАР (
    Корзина_ID INT,
    Товар_ID INT,
    Количество INT,
    PRIMARY KEY (Корзина_ID, Товар_ID),
    FOREIGN KEY (Корзина_ID) REFERENCES КОРЗИНА(ID),
    FOREIGN KEY (Товар_ID) REFERENCES ТОВАР(ID)
);

CREATE TABLE ЗАКАЗ (
    ID SERIAL PRIMARY KEY,
    Дата_и_время_заказа TIMESTAMP,
    Сумма_заказа DECIMAL(10, 2),
    Статус_заказа VARCHAR(50),
    Клиент_ID INT,
    Оплаченная_сумма DECIMAL(10, 2),
    Оставшаяся_сумма DECIMAL(10, 2),
    FOREIGN KEY (Клиент_ID) REFERENCES КЛИЕНТ(ID)
);

CREATE TABLE Оплата (
    ID SERIAL PRIMARY KEY,
    Заказ_ID INT,
    Способ_оплаты VARCHAR(50),
    Номер_карты VARCHAR(50),
    Дата_истечения_срока_действия_карты DATE,
    FOREIGN KEY (Заказ_ID) REFERENCES ЗАКАЗ(ID)
);

CREATE TABLE ЭЛЕМЕНТ_ЗАКАЗА (
    ID SERIAL PRIMARY KEY,
    Количество_товара INT,
    Сумма_за_товар DECIMAL(10, 2),

    Заказ_ID INT,

    FOREIGN KEY (Заказ_ID) REFERENCES ЗАКАЗ(ID)
);

CREATE TABLE ЭЛЕМЕНТ_ЗАКАЗА_УНИКАЛЬНЫЙ_ТОВАР (
    Элемент_заказа_ID INT,
    Уникальный_товар_ID INT,

    PRIMARY KEY (Элемент_заказа_ID, Уникальный_товар_ID),
    FOREIGN KEY (Элемент_заказа_ID) REFERENCES ЭЛЕМЕНТ_ЗАКАЗА(ID),
    FOREIGN KEY (Уникальный_товар_ID) REFERENCES УНИКАЛЬНЫЙ_ТОВАР(ID)
);


CREATE TABLE ОТЗЫВ (
    ID SERIAL PRIMARY KEY,
    Текст_отзыва TEXT,
    Рейтинг INT,
    Дата_публикации DATE,
    Клиент_ID INT,
    Товар_ID INT,
    FOREIGN KEY (Клиент_ID) REFERENCES КЛИЕНТ(ID),
    FOREIGN KEY (Товар_ID) REFERENCES ТОВАР(ID) ON DELETE CASCADE
);

CREATE TABLE ТОВАР_СКЛАД (
    Товар_ID INT,
    Склад_ID INT,
    Количество_на_складе INT,
    PRIMARY KEY (Товар_ID, Склад_ID),
    FOREIGN KEY (Товар_ID) REFERENCES ТОВАР(ID),
    FOREIGN KEY (Склад_ID) REFERENCES СКЛАД(ID)
);

CREATE TABLE СОТРУДНИК (
    ID SERIAL PRIMARY KEY,
    Имя VARCHAR(50),
    Фамилия VARCHAR(50),
    Должность VARCHAR(50),
    Зарплата DECIMAL(10, 2),
    Дата_найма DATE,
    Контактная_информация VARCHAR(255)
);

CREATE TABLE ВОЗВРАТ (
    ID SERIAL PRIMARY KEY,
    Дата_и_время_возврата TIMESTAMP,
    Причина TEXT,
    Сумма_возврата DECIMAL(10, 2),
    Заказ_ID INT,
    Элемент_заказа_ID INT,
    Сотрудник_ID INT,
    FOREIGN KEY (Заказ_ID) REFERENCES ЗАКАЗ(ID),
    FOREIGN KEY (Элемент_заказа_ID) REFERENCES ЭЛЕМЕНТ_ЗАКАЗА(ID),
    FOREIGN KEY (Сотрудник_ID) REFERENCES СОТРУДНИК(ID)
);


