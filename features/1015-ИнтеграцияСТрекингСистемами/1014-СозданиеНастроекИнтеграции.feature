#language: ru

@draft
@tree

Функция: Создаем настройки подключения к трекер системе. Проверяем что настройки сохранились. Тестируем подключение.

    Предыстория:
    Дано есть настроенная трекер система "Redmine"
    И у пользователя "Администраторы расширения" есть роль "Администратор расширения"
    И Я открыл сеанс TestClient от имени "Администратор расширения" с паролем "" или подключаю уже существующий
    
    Сценарий: Создаем настройки подключения
        Создаем подключение Redmine
            И В командном интерфейсе я выбираю 'Техподдержка' 'Интеграции с трекер системой'
            Тогда открылось окно 'Интеграции с трекер системой'
            И я нажимаю на кнопку с именем 'ФормаСоздать'
            Тогда открылось окно 'Интеграции с трекер системой (создание)'
            И в поле 'Наименование' я ввожу текст 'Redmine test sys'
            И я нажимаю на кнопку 'Записать'
            И я нажимаю на кнопку 'Записать и закрыть'
            И я жду закрытия окна 'Интеграции с трекер системой (создание)' в течение 20 секунд

    Сценарий: Проверяем, что настройки сохранены в базе
        Проверяем настройки Redmine
            И В командном интерфейсе я выбираю 'Техподдержка' 'Интеграции с трекер системой'
            Тогда открылось окно 'Интеграции с трекер системой'
            И в таблице "Список" я перехожу к строке:
                | Наименование     |
                | Redmine test sys |

    Сценарий: Выполняем тестирование подключения командой "Тест подключения" на рабочей системе и на фейковой
        Проверяем настройки Redmine
            И В командном интерфейсе я выбираю 'Техподдержка' 'Интеграции с трекер системой'
            Тогда открылось окно 'Интеграции с трекер системой'
            И в таблице "Список" я выбираю текущую строку
            Тогда открылось окно 'Redmine test sys (Интеграции с трекер системой)'
            И я нажимаю на кнопку 'Тест соединения'
            Тогда открылось окно 'Проверка соединения с трекер системой'
            И у элемента с именем "Поле1" я жду значения "Тест прошел успешно!" в течение 1 секунд
            И я нажимаю на кнопку 'OK'
            Тогда открылось окно 'Redmine test sys (Интеграции с трекер системой)'
            И Я закрываю окно 'Redmine test sys (Интеграции с трекер системой)'
            Тогда открылось окно 'Интеграции с трекер системой'
            И Я закрываю окно 'Интеграции с трекер системой'
            И я закрываю сеанс TESTCLIENT
