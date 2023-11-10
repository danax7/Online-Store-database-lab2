-- CREATE OR REPLACE FUNCTION check_product_availability() RETURNS TRIGGER AS $$
-- BEGIN
--     IF NEW.Количество_товара > (
--         SELECT Наличие_на_складе
--         FROM ТОВАР
--         WHERE ID = (SELECT Товар_ID FROM УНИКАЛЬНЫЙ_ТОВАР WHERE ID = NEW.Уникальный_товар_ID)
--     ) THEN
--         RAISE EXCEPTION 'Товара недостаточно на складе';
--     END IF;
--     RETURN NEW;
-- END;
-- $$ LANGUAGE plpgsql;
--
-- CREATE TRIGGER check_product_availability_trigger
-- BEFORE INSERT ON ЭЛЕМЕНТ_ЗАКАЗА
-- FOR EACH ROW EXECUTE FUNCTION check_product_availability();
CREATE OR REPLACE FUNCTION check_product_availability()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.Количество_товара > (SELECT Наличие_на_складе FROM ТОВАР WHERE ID = NEW.Товар_ID) THEN
        RAISE EXCEPTION 'Товара недостаточно на складе';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER check_product_availability_trigger
BEFORE INSERT ON ЭЛЕМЕНТ_ЗАКАЗА
FOR EACH ROW EXECUTE FUNCTION check_product_availability();



INSERT INTO КОРЗИНА (Дата_и_время_создания, Клиент_ID)
VALUES
    ('2023-09-15 10:30:00', 1),
    ('2023-09-16 14:15:00', 2);

-- Добавление данных в таблицу ЭЛЕМЕНТ_ЗАКАЗА (этот запрос должен вызвать ошибку из-за триггера)
INSERT INTO ЭЛЕМЕНТ_ЗАКАЗА (Количество_товара, Сумма_за_товар, Товар_ID, Заказ_ID)
VALUES
    (101, 199.99, 1, 1), -- Этот запрос вызовет ошибку, так как товара недостаточно на складе
    (2, 699.99, 3, 2);



CREATE OR REPLACE FUNCTION update_product_availability() RETURNS TRIGGER AS $$
BEGIN
    -- Считаем общее количество товара на складе для данного товара
    UPDATE ТОВАР
    SET Наличие_на_складе = (
        SELECT SUM(Количество_на_складе)
        FROM ТОВАР_СКЛАД
        WHERE Товар_ID = NEW.Товар_ID
    )
    WHERE ID = NEW.Товар_ID;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER update_product_availability_trigger
AFTER INSERT OR UPDATE OR DELETE
ON ТОВАР_СКЛАД
FOR EACH ROW EXECUTE FUNCTION update_product_availability();


UPDATE ТОВАР_СКЛАД
SET Количество_на_складе = Количество_на_складе + 7
WHERE Товар_ID = 1 AND Склад_ID = 2;

-- UPDATE ТОВАР_СКЛАД
-- SET Количество_на_складе = Количество_на_складе + Новое_Количество_на_складе
-- WHERE Товар_ID = Существующий_Товар_ID AND Склад_ID = Существующий_Склад_ID;

CREATE OR REPLACE FUNCTION update_element_order_quantity()
RETURNS TRIGGER AS $$
BEGIN
    UPDATE ЭЛЕМЕНТ_ЗАКАЗА
    SET Количество_товара = (SELECT COUNT(*) FROM ЭЛЕМЕНТ_ЗАКАЗА_УНИКАЛЬНЫЙ_ТОВАР WHERE Элемент_заказа_ID = NEW.ID)
    WHERE ID = NEW.ID;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER update_element_order_quantity_trigger
AFTER INSERT OR DELETE ON ЭЛЕМЕНТ_ЗАКАЗА_УНИКАЛЬНЫЙ_ТОВАР
FOR EACH ROW EXECUTE FUNCTION update_element_order_quantity();
