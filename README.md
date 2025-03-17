Работа выполнена в рамках задания по дисциплине "Базы данных", специальность "Разработка программного обеспечения"

В данной работе представленно 4 базы данных:
1. database_vehicles (транспортные средства);
2. database_car_racing (автомобильные гонки);
3. database_hotels (бронирование отелей);
4. database_management (структура организации).

Каждая из баз данных включает в себя скрипт создания таблиц базы MySQL(create_table.sql), скрип наполнения базы данными (add_data.sql), решения задач (task.sql).

Реализованные задачи:
1. database_vehicles

V3_task_1.sql : Необходимо найдити производителей (maker) и модели всех мотоциклов, которые имеют мощность более 150 лошадиных сил, стоят менее 20 тысяч долларов и являются спортивными (тип Sport). Также отсортировать результаты по мощности в порядке убывания. Решение задачи представляет из себя один SQL-запрос.

V4_task_2.sql : Необходимо найти информацию о производителях и моделях различных типов транспортных средств (автомобили, мотоциклы и велосипеды), которые соответствуют заданным критериям:
- Автомобили:
Извлечь данные о всех автомобилях, которые имеют:
- мощность двигателя более 150 лошадиных сил;
- объем двигателя менее 3 литров;
- цену менее 35 тысяч долларов.
В выводе должны быть указаны производитель (maker), номер модели (model), мощность (horsepower), объем двигателя (engine_capacity) и тип транспортного средства, который будет обозначен как Car.
- Мотоциклы:
Извлечь данные о всех мотоциклах, которые имеют:
- мощность двигателя более 150 лошадиных сил;
- объем двигателя менее 1,5 литров;
- цену менее 20 тысяч долларов.
В выводе должны быть указаны производитель (maker), номер модели (model), мощность (horsepower), объем двигателя (engine_capacity) и тип транспортного средства, который будет обозначен как Motorcycle.
- Велосипеды:
Извлечь данные обо всех велосипедах, которые имеют:
- количество передач больше 18;
- цену менее 4 тысяч долларов.
В выводе должны быть указаны производитель (maker), номер модели (model), а также NULL для мощности и объема двигателя, так как эти характеристики не применимы для велосипедов. Тип транспортного средства будет обозначен как Bicycle.
Результаты должны быть объединены в один набор данных и отсортированы по мощности в порядке убывания. Для велосипедов, у которых нет значения мощности, они будут располагаться внизу списка.Решение задачи должно представлять из себя один SQL-запрос.

2. database_car_rasing

V3_task_1.sql : Необходимо определить, какие автомобили из каждого класса имеют наименьшую среднюю позицию в гонках, и вывести информацию о каждом таком автомобиле для данного класса, включая его класс, среднюю позицию и количество гонок, в которых он участвовал. Также отсортировать результаты по средней позиции. Решение задачи должно представлять из себя один SQL-запрос.

V4_task_2.sql : Необходимо определить автомобиль, который имеет наименьшую среднюю позицию в гонках среди всех автомобилей, и вывести информацию об этом автомобиле, включая его класс, среднюю позицию, количество гонок, в которых он участвовал, и страну производства класса автомобиля. Если несколько автомобилей имеют одинаковую наименьшую среднюю позицию, выбрать один из них по алфавиту (по имени автомобиля).Решение задачи должно представлять из себя один SQL-запрос.

V5_task_3.sql : Необходимо определить классы автомобилей, которые имеют наименьшую среднюю позицию в гонках, и вывести информацию о каждом автомобиле из этих классов, включая его имя, среднюю позицию, количество гонок, в которых он участвовал, страну производства класса автомобиля, а также общее количество гонок, в которых участвовали автомобили этих классов. Если несколько классов имеют одинаковую среднюю позицию, выбрать все из них.Решение задачи должно представлять из себя один SQL-запрос. 

V6_task_4.sql : Необходимо определить, какие автомобили имеют среднюю позицию лучше (меньше) средней позиции всех автомобилей в своем классе (то есть автомобилей в классе должно быть минимум два, чтобы выбрать один из них). Вывести информацию об этих автомобилях, включая их имя, класс, среднюю позицию, количество гонок, в которых они участвовали, и страну производства класса автомобиля. Также отсортировать результаты по классу и затем по средней позиции в порядке возрастания.Решение задачи должно представлять из себя один SQL-запрос.

V7_task_5.sql : Необходимо определить, какие классы автомобилей имеют наибольшее количество автомобилей с низкой средней позицией (больше 3.0) и вывести информацию о каждом автомобиле из этих классов, включая его имя, класс, среднюю позицию, количество гонок, в которых он участвовал, страну производства класса автомобиля, а также общее количество гонок для каждого класса. Отсортировать результаты по количеству автомобилей с низкой средней позицией.Решение задачи должно представлять из себя один SQL-запрос.

3. database_hotels

V3_task_1 : Необходимо определить, какие клиенты сделали более двух бронирований в разных отелях, и вывести информацию о каждом таком клиенте, включая его имя, электронную почту, телефон, общее количество бронирований, а также список отелей, в которых они бронировали номера (объединенные в одно поле через запятую с помощью CONCAT). Также подсчитать среднюю длительность их пребывания (в днях) по всем бронированиям. Отсортировать результаты по количеству бронирований в порядке убывания.Решение задачи должно представлять из себя один SQL-запрос.

V4_task_2 : Необходимо провести анализ клиентов, которые сделали более двух бронирований в разных отелях и потратили более 500 долларов на свои бронирования. Для этого:
- Определить клиентов, которые сделали более двух бронирований и забронировали номера в более чем одном отеле. Вывести для каждого такого клиента следующие данные: ID_customer, имя, общее количество бронирований, общее количество уникальных отелей, в которых они бронировали номера, и общую сумму, потраченную на бронирования.
- Также определить клиентов, которые потратили более 500 долларов на бронирования, и вывести для них ID_customer, имя, общую сумму, потраченную на бронирования, и общее количество бронирований.
- В результате объединить данные из первых двух пунктов, чтобы получить список клиентов, которые соответствуют условиям обоих запросов. Отобразить поля: ID_customer, имя, общее количество бронирований, общую сумму, потраченную на бронирования, и общее количество уникальных отелей.
Результаты отсортировать по общей сумме, потраченной клиентами, в порядке возрастания. Решение задачи должно представлять из себя один SQL-запрос.

V5_task_3 : Необходимо провести анализ данных о бронированиях в отелях и определить предпочтения клиентов по типу отелей.
Категоризация отелей:
- «Дешевый»: средняя стоимость менее 175 долларов.
- «Средний»: средняя стоимость от 175 до 300 долларов.
- «Дорогой»: средняя стоимость более 300 долларов.
Анализ предпочтений клиентов:
- Если у клиента есть хотя бы один «дорогой» отель, присвойте ему категорию «дорогой».
- Если у клиента нет «дорогих» отелей, но есть хотя бы один «средний», присвойте ему категорию «средний».
- Если у клиента нет «дорогих» и «средних» отелей, но есть «дешевые», присвойте ему категорию предпочитаемых отелей «дешевый».
Вывод информации для каждого клиента:
- ID_customer: уникальный идентификатор клиента.
- name: имя клиента.
- preferred_hotel_type: предпочитаемый тип отеля.
- visited_hotels: список уникальных отелей, которые посетил клиент.
Необходимо отсортировать клиентов так, чтобы сначала шли клиенты с «дешевыми» отелями, затем со «средними» и в конце — с «дорогими». Решение задачи должно представлять из себя один SQL-запрос.

4. database_management

V3_task_1 : Необходимо найти всех сотрудников, подчиняющихся Ивану Иванову (с EmployeeID = 1), включая их подчиненных и подчиненных подчиненных. Для каждого сотрудника вывести следующую информацию:
- EmployeeID: идентификатор сотрудника.
- Имя сотрудника.
- ManagerID: Идентификатор менеджера.
- Название отдела, к которому он принадлежит.
- Название роли, которую он занимает.
- Название проектов, к которым он относится (если есть, конкатенированные в одном столбце через запятую).
- Название задач, назначенных этому сотруднику (если есть, конкатенированные в одном столбце через запятую).
- Если у сотрудника нет назначенных проектов или задач, отобразить NULL.
Рекурсивно извлечь всех подчиненных сотрудников Ивана Иванова и их подчиненных. Для каждого сотрудника отобразить информацию из всех таблиц. Результаты должны быть отсортированы по имени сотрудника. Решение задачи должно представлять из себя один sql-запрос и задействовать ключевое слово RECURSIVE.

V4_task_2 : Необходимо найти всех сотрудников, подчиняющихся Ивану Иванову с EmployeeID = 1, включая их подчиненных и подчиненных подчиненных. Для каждого сотрудника вывести следующую информацию:
- EmployeeID: идентификатор сотрудника.
- Имя сотрудника.
- Идентификатор менеджера.
- Название отдела, к которому он принадлежит.
- Название роли, которую он занимает.
- Название проектов, к которым он относится (если есть, конкатенированные в одном столбце).
- Название задач, назначенных этому сотруднику (если есть, конкатенированные в одном столбце).
- Общее количество задач, назначенных этому сотруднику.
- Общее количество подчиненных у каждого сотрудника (не включая подчиненных их подчиненных).
= Если у сотрудника нет назначенных проектов или задач, отобразить NULL.
Решение задачи должно представлять из себя один sql-запрос и задействовать ключевое слово RECURSIVE.

V5_task_3 : Необходимо найти всех сотрудников, которые занимают роль менеджера и имеют подчиненных (то есть число подчиненных больше 0). Для каждого такого сотрудника вывести следующую информацию:
- EmployeeID: идентификатор сотрудника.
- Имя сотрудника.
- Идентификатор менеджера.
- Название отдела, к которому он принадлежит.
- Название роли, которую он занимает.
- Название проектов, к которым он относится (если есть, конкатенированные в одном столбце).
- Название задач, назначенных этому сотруднику (если есть, конкатенированные в одном столбце).
- Общее количество подчиненных у каждого сотрудника (включая их подчиненных).
- Если у сотрудника нет назначенных проектов или задач, отобразить NULL.
Решение задачи должно представлять из себя один sql-запрос и задействовать ключевое слово RECURSIVE.
