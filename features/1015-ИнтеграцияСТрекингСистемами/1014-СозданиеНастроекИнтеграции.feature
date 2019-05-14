@draft
@tree

Функция: Создаем настройки подключения к трекер системе. Проверяем что настройки сохранились. Тестируем подключение.

    Предыстория:
    Дано есть настроенная трекер система "Redmine"
    И у пользователя "RM test user" есть роль "Администратор расширения"
    
    Сценарий: Создаем настройки подключения
    
    Сценарий: Проверяем, что настройки с названием "Redmine test sys" сохранены в базе

    Сценарий: Выполняем тестирование подключения командой "Тест подключения" на рабочей системе и на фейковой