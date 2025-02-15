# language: ru

# Тестовые данные:
#   $Наименование Манго
#   $Тип Фрукт
#   $Экзотический true


Функция: Добавление товара через веб интерфейс

  Сценарий: Добавления товара

    * страница "Стартовая страница" загружена

    * выполнено нажатие на "Песочница"
    * нажатием на кнопку "Товары" загружена страница "Список товаров"
    * выполнено нажатие на "Песочница"
    * выполнено нажатие на "Сброс данных"
    * страница "Список товаров" загружена
    * количество элементов коллекции "Таблица" равно "4"
    * нажатием на кнопку "Добавить" загружена страница "Добавление товара"
    * заполняются поля:
      | field        | value           |
      | Наименование | #{Наименование} |
      | Тип          | #{Тип}          |
      | Экзотический | #{Экзотический} |
    * выполнено нажатие на "Сохранить"
    * страница "Список товаров" загружена
    * ожидается элемент коллекции "Таблица" в течение "5" секунд с параметрами:
      | field | value |
      | Наименование | #{Наименование} |
      | Тип          | #{Тип}          |
      | Экзотический | #{Экзотический} |
    * количество элементов коллекции "Таблица" равно "5"
    * выполнено нажатие на "Песочница"
    * выполнено нажатие на "Сброс данных"
    * сохранить скриншот "Конец теста"
