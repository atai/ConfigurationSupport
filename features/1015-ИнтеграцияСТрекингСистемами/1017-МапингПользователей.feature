#language: ru

@draft
@tree

Функция: Есть возможность сопоставить пользователя трекер системы и информационной базы. Сопоставление можно сохранить в информационной базе.
    
    Предыстория:
        Дано есть настроенная интеграция с трекер системой "Redmine test sys"
        И у пользователя "RM test user" есть роль "Администратор расширения"
        И в справочнике "Пользователи" не менее 2х элементов с флагом Отключен = Ложь
        И в справочнике "Пользователи" есть пользователь "RM test user"
        И в трекер системе заведено не менее 2х активных пользователей
        И в трекер системе есть пользователь "RM test user"
        И Я запускаю сценарий открытия TestClient или подключаю уже существующий

    Сценарий: Открываем настроенный элемент справочника "Интеграции с трекер системой" и выполняем процесс сопоставления пользователей трекер системы и базы 1С
        Дано в справочнике "Интеграции с трекер системой" есть элемент "Redmine test sys"
        Когда отрываем элемент справочника "Redmine test sys"
        То Открывается карточка настроек
        И Когда Переходим на вкладку "Пользователи"
        То открывается список поьзователей обеих систем
        И Когда нажимаем кнопку "Загрузить список пользователей"
        То в списке пользователей появляются строки с именами пользователей удаленной системы
        И Когда дважды кликаем в поле "Пользователь 1С" загруженной строки с удаленного сервера
        То в выпадающем списке есть несопоставленный пользователь базы 1С
        И Когда выбираем пользователя в выпадающем списке
        То он пропадает из списка несопоставленных пользователей
        И Когда мы нажимаем кнопку 
        
    Сценарий: Проверка сохранения сопоставления
        Дано в справочнике "Интеграции с трекер системой" есть элемент "Redmine test sys"
        Когда открываем элемент справочника "Redmine test sys"
        То открывается карточка настроек
        И Когда Переходим на вкладку "Пользователи"
        То открывается список пользователей обеих систем
        И В списке есть пользователь информационной базы "RM test user"
        То Ему соответствует пользователь трекер системы "RM test user"