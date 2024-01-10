create table ВОЗВРАТ
(
  СОТРУДНИК_СОТРУДНИК_ID NUMBER(10) not null,
  ДАТА_И_ВРЕМЯ_ВОЗВРАТА  DATE not null,
  ПРИЧИНА                LONG not null,
  СУММА_ВОЗВРАТА         INTEGER not null,
  ВОЗВРАТ_ID             NUMBER(10) not null
);

create table ЗАКАЗ
(
  КЛИЕНТ_КЛИЕНТ_ID    NUMBER(10) not null,
  ДАТА_И_ВРЕМЯ_ЗАКАЗА DATE not null,
  ОПЛАЧЕННАЯ_СУММА    INTEGER not null,
  ОСТАВШАЯСЯ_СУММА    INTEGER not null,
  СТАТУС_ЗАКАЗА       VARCHAR2(50) not null,
  СУММА_ЗАКАЗА        INTEGER not null,
  ЗАКАЗ_ID            NUMBER(10) not null
);

create table КАТЕГОРИЯ_ТОВАРА
(
  КАТЕГОРИЯ__КАТЕГОРИЯ__ID NUMBER(10),
  НАЗВАНИЕ_КАТЕГОРИИ       VARCHAR2(240) not null,
  ОПИСАНИЕ_КАТЕГОРИИ       VARCHAR2(240) not null,
  КАТЕГОРИЯ__ID            NUMBER(10) not null
);

create table КАТЕГОРИЯ_ТОВАРА_ТОВАР
(
  КАТЕГОРИЯ__КАТЕГОРИЯ__ID NUMBER(10) not null,
  ТОВАР_ТОВАР_ID           NUMBER(10) not null
);

create table КЛИЕНТ
(
  КОРЗИНА_КОРЗИНА_ID NUMBER(10) not null,
  АДРЕС_ДОСТАВКИ     VARCHAR2(255) not null,
  ИМЯ                VARCHAR2(50) not null,
  НОМЕР_ТЕЛЕФОНА     VARCHAR2(20) not null,
  ФАМИЛИЯ            VARCHAR2(50) not null,
  ЭЛЕКТРОННАЯ_ПОЧТА  VARCHAR2(100) not null,
  КЛИЕНТ_ID          NUMBER(10) not null
);

create table КОРЗИНА
(
  ДАТА_И_ВРЕМЯ_СОЗДАНИЯ DATE not null,
  КОРЗИНА_ID            NUMBER(10) not null
);

create table КОРЗИНА_ТОВАР
(
  КОРЗИНА_КОРЗИНА_ID NUMBER(10) not null,
  ТОВАР_ТОВАР_ID     NUMBER(10) not null,
  КОЛИЧЕСТВО         INTEGER not null,
  КОРЗИНА_ТО_ID      NUMBER(10) not null
);

create table ОПЛАТА
(
  ЗАКАЗ_ЗАКАЗ_ID    NUMBER(10) not null,
  КЛИЕНТ_КЛИЕНТ_ID  NUMBER(10) not null,
  КОЛИЧЕСТВО_ТОВАРА INTEGER not null,
  СУММА_ЗА_ТОВАР    INTEGER not null,
  ОПЛАТА_ID         NUMBER(10) not null
);

create table ОТЗЫВ
(
  КЛИЕНТ_КЛИЕНТ_ID NUMBER(10) not null,
  ТОВАР_ТОВАР_ID   NUMBER(10) not null,
  ДАТА_ПУБЛИКАЦИИ  VARCHAR2(240) not null,
  РЕЙТИНГ          INTEGER not null,
  ТЕКСТ_ОТЗЫВА     LONG not null,
  ОТЗЫВ_ID         NUMBER(10) not null
);

create table ПРОИЗВОДИТЕЛЬ_ТОВАРА
(
  КОНТАКТНАЯ_ИНФОРМАЦИЯ  VARCHAR2(255) not null,
  НАЗВАНИЕ_ПРОИЗВОДИТЕЛЯ VARCHAR2(100) not null,
  СТРАНА_ПРОИЗВОДСТВА    VARCHAR2(50) not null,
  ПРОИЗВОДИТ_ID          NUMBER(10) not null
);

create table СКЛАД
(
  МЕСТОПОЛОЖЕНИЕ          VARCHAR2(255) not null,
  ОБЩЕЕ_КОЛИЧЕСТВО_ТОВАРА INTEGER,
  СКЛАД_ID                NUMBER(10) not null
);

create table СОТРУДНИК
(
  ДАТА_НАЙМА            DATE not null,
  ДОЛЖНОСТЬ             VARCHAR2(50) not null,
  ЗАРПЛАТА              INTEGER not null,
  ИМЯ                   VARCHAR2(50) not null,
  КОНТАКТНАЯ_ИНФОРМАЦИЯ VARCHAR2(255) not null,
  ФАМИЛИЯ               VARCHAR2(50) not null,
  СОТРУДНИК_ID          NUMBER(10) not null
);

create table ТОВАР
(
  ПРОИЗВОДИТ_ПРОИЗВОДИТ_ID NUMBER(10) not null,
  НАЗВАНИЕ_ТОВАРА          VARCHAR2(100) not null,
  НАЛИЧИЕ_НА_СКЛАДЕ        INTEGER not null,
  ОПИСАНИЕ_ТОВАРА          VARCHAR2(240) not null,
  ЦЕНА                     INTEGER not null,
  ТОВАР_ID                 NUMBER(10) not null
);

create table УНИКАЛЬНЫЙ_ТОВАР
(
  ВОЗВРАТ_ВОЗВРАТ_ID       NUMBER(10),
  СКЛАД_СКЛАД_ID           NUMBER(10) not null,
  ТОВАР_ТОВАР_ID           NUMBER(10) not null,
  ЭЛЕМЕНТ_ЗА_ЭЛЕМЕНТ_ЗА_ID NUMBER(10),
  ВОЗВРАЩЕН                INTEGER not null,
  ПРОДАН                   INTEGER not null,
  УНИКАЛЬНЫЙ_ИДЕНТИФИКАТОР VARCHAR2(100) not null,
  УНИКАЛЬНЫЙ_ID            NUMBER(10) not null
);

create table ЭЛЕМЕНТ_ЗАКАЗА
(
  ЗАКАЗ_ЗАКАЗ_ID    NUMBER(10) not null,
  КОЛИЧЕСТВО_ТОВАРА INTEGER not null,
  СУММА_ЗА_ТОВАР    INTEGER not null,
  ЭЛЕМЕНТ_ЗА_ID     NUMBER(10) not null
);




