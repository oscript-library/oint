﻿Функция ПолучитьСостав() Экспорт

    ТаблицаСостава = Новый ТаблицаЗначений();
    ТаблицаСостава.Колонки.Добавить("Библиотека");
    ТаблицаСостава.Колонки.Добавить("Модуль");
    ТаблицаСостава.Колонки.Добавить("Метод");
    ТаблицаСостава.Колонки.Добавить("МетодПоиска");
    ТаблицаСостава.Колонки.Добавить("Параметр");
    ТаблицаСостава.Колонки.Добавить("Описание");
    ТаблицаСостава.Колонки.Добавить("ОписаниеМетода");

    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ПолучитьИнформациюОБоте";
    НоваяСтрока.МетодПоиска = "ПОЛУЧИТЬИНФОРМАЦИЮОБОТЕ";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Токен бота";
    НоваяСтрока.ОписаниеМетода   = "Получает основную информацию о боте";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ПолучитьСписокРабочихОбластей";
    НоваяСтрока.МетодПоиска = "ПОЛУЧИТЬСПИСОКРАБОЧИХОБЛАСТЕЙ";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Токен бота";
    НоваяСтрока.ОписаниеМетода   = "Получает список рабочих областей, в которых подключен бот";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ПолучитьСписокРабочихОбластей";
    НоваяСтрока.МетодПоиска = "ПОЛУЧИТЬСПИСОКРАБОЧИХОБЛАСТЕЙ";
    НоваяСтрока.Параметр    = "--cursor";
    НоваяСтрока.Описание    = "Указатель из предыдущего запроса, если строк результата > 100 (необяз. по ум. - Пустое значение)";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ПолучитьСписокПользователей";
    НоваяСтрока.МетодПоиска = "ПОЛУЧИТЬСПИСОКПОЛЬЗОВАТЕЛЕЙ";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Токен бота";
    НоваяСтрока.ОписаниеМетода   = "Получает список пользователей рабочей области";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ПолучитьСписокПользователей";
    НоваяСтрока.МетодПоиска = "ПОЛУЧИТЬСПИСОКПОЛЬЗОВАТЕЛЕЙ";
    НоваяСтрока.Параметр    = "--cursor";
    НоваяСтрока.Описание    = "Указатель из предыдущего запроса, если строк результата > 100 (необяз. по ум. - Пустое значение)";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ОтправитьСообщение";
    НоваяСтрока.МетодПоиска = "ОТПРАВИТЬСООБЩЕНИЕ";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Токен бота";
    НоваяСтрока.ОписаниеМетода   = "Отправляет сообщение в выбранный час
    |
    |    Дата указывается в формате ISO 8601:
    |    ""2024-04-07""
    |    ""2024-04-07T13:34:42+00:00"" 
    |    ""2024-04-07T13:34:42Z""
    |
    |
    |    Пример указания параметра типа массив:
    |    --param ""['Val1','Val2','Val3']""
    |";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ОтправитьСообщение";
    НоваяСтрока.МетодПоиска = "ОТПРАВИТЬСООБЩЕНИЕ";
    НоваяСтрока.Параметр    = "--channel";
    НоваяСтрока.Описание    = "Идентификатор канала";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ОтправитьСообщение";
    НоваяСтрока.МетодПоиска = "ОТПРАВИТЬСООБЩЕНИЕ";
    НоваяСтрока.Параметр    = "--text";
    НоваяСтрока.Описание    = "Текст сообщения (необяз. по ум. - Пустое значение)";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ОтправитьСообщение";
    НоваяСтрока.МетодПоиска = "ОТПРАВИТЬСООБЩЕНИЕ";
    НоваяСтрока.Параметр    = "--date";
    НоваяСтрока.Описание    = "Дата отправки для отложенного сообщения (необяз. по ум. - Пустое значение)";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ОтправитьСообщение";
    НоваяСтрока.МетодПоиска = "ОТПРАВИТЬСООБЩЕНИЕ";
    НоваяСтрока.Параметр    = "--blocks";
    НоваяСтрока.Описание    = "JSON массива описаний блоков (необяз. по ум. - Пустое значение)";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ОтправитьЭфемерноеСообщение";
    НоваяСтрока.МетодПоиска = "ОТПРАВИТЬЭФЕМЕРНОЕСООБЩЕНИЕ";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Токен бота";
    НоваяСтрока.ОписаниеМетода   = "Отправляет сообщение, которое приходит в канал, но видно 
    |    только конкретному пользователю
    |
    |    Пример указания параметра типа массив:
    |    --param ""['Val1','Val2','Val3']""
    |";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ОтправитьЭфемерноеСообщение";
    НоваяСтрока.МетодПоиска = "ОТПРАВИТЬЭФЕМЕРНОЕСООБЩЕНИЕ";
    НоваяСтрока.Параметр    = "--channel";
    НоваяСтрока.Описание    = "Идентификатор канала";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ОтправитьЭфемерноеСообщение";
    НоваяСтрока.МетодПоиска = "ОТПРАВИТЬЭФЕМЕРНОЕСООБЩЕНИЕ";
    НоваяСтрока.Параметр    = "--text";
    НоваяСтрока.Описание    = "Текст сообщения (необяз. по ум. - Пустое значение)";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ОтправитьЭфемерноеСообщение";
    НоваяСтрока.МетодПоиска = "ОТПРАВИТЬЭФЕМЕРНОЕСООБЩЕНИЕ";
    НоваяСтрока.Параметр    = "--user";
    НоваяСтрока.Описание    = "ID пользователя (необяз. по ум. - Пустое значение)";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ОтправитьЭфемерноеСообщение";
    НоваяСтрока.МетодПоиска = "ОТПРАВИТЬЭФЕМЕРНОЕСООБЩЕНИЕ";
    НоваяСтрока.Параметр    = "--blocks";
    НоваяСтрока.Описание    = "JSON массива описаний блоков (необяз. по ум. - Пустое значение)";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ИзменитьСообщение";
    НоваяСтрока.МетодПоиска = "ИЗМЕНИТЬСООБЩЕНИЕ";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Токен бота";
    НоваяСтрока.ОписаниеМетода   = "Изменяет состав существующего сообщения
    |
    |    Пример указания параметра типа массив:
    |    --param ""['Val1','Val2','Val3']""
    |";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ИзменитьСообщение";
    НоваяСтрока.МетодПоиска = "ИЗМЕНИТЬСООБЩЕНИЕ";
    НоваяСтрока.Параметр    = "--channel";
    НоваяСтрока.Описание    = "Идентификатор канала";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ИзменитьСообщение";
    НоваяСтрока.МетодПоиска = "ИЗМЕНИТЬСООБЩЕНИЕ";
    НоваяСтрока.Параметр    = "--stamp";
    НоваяСтрока.Описание    = "Временная отметка сообщения";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ИзменитьСообщение";
    НоваяСтрока.МетодПоиска = "ИЗМЕНИТЬСООБЩЕНИЕ";
    НоваяСтрока.Параметр    = "--text";
    НоваяСтрока.Описание    = "Новый текст сообщения (необяз. по ум. - Пустое значение)";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ИзменитьСообщение";
    НоваяСтрока.МетодПоиска = "ИЗМЕНИТЬСООБЩЕНИЕ";
    НоваяСтрока.Параметр    = "--blocks";
    НоваяСтрока.Описание    = "JSON массива описаний блоков (необяз. по ум. - Пустое значение)";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "УдалитьСообщение";
    НоваяСтрока.МетодПоиска = "УДАЛИТЬСООБЩЕНИЕ";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Токен бота";
    НоваяСтрока.ОписаниеМетода   = "Удаляет сообщение канала по timestamp";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "УдалитьСообщение";
    НоваяСтрока.МетодПоиска = "УДАЛИТЬСООБЩЕНИЕ";
    НоваяСтрока.Параметр    = "--channel";
    НоваяСтрока.Описание    = "Идентификатор канала";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "УдалитьСообщение";
    НоваяСтрока.МетодПоиска = "УДАЛИТЬСООБЩЕНИЕ";
    НоваяСтрока.Параметр    = "--stamp";
    НоваяСтрока.Описание    = "Временная отметка или ID сообщения";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "УдалитьСообщение";
    НоваяСтрока.МетодПоиска = "УДАЛИТЬСООБЩЕНИЕ";
    НоваяСтрока.Параметр    = "--issheduled";
    НоваяСтрока.Описание    = "Признак удаления отложенного сообщения (необяз. по ум. - Нет)";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ПолучитьСписокОтложенныхСообщений";
    НоваяСтрока.МетодПоиска = "ПОЛУЧИТЬСПИСОКОТЛОЖЕННЫХСООБЩЕНИЙ";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Токен бота";
    НоваяСтрока.ОписаниеМетода   = "Получает список отложенных сообщений канала";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ПолучитьСписокОтложенныхСообщений";
    НоваяСтрока.МетодПоиска = "ПОЛУЧИТЬСПИСОКОТЛОЖЕННЫХСООБЩЕНИЙ";
    НоваяСтрока.Параметр    = "--channel";
    НоваяСтрока.Описание    = "Идентификатор канала";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ПолучитьСписокОтложенныхСообщений";
    НоваяСтрока.МетодПоиска = "ПОЛУЧИТЬСПИСОКОТЛОЖЕННЫХСООБЩЕНИЙ";
    НоваяСтрока.Параметр    = "--cursor";
    НоваяСтрока.Описание    = "Указатель из предыдущего запроса, если строк результата > 100 (необяз. по ум. - Пустое значение)";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ПолучитьСсылкуНаСообщение";
    НоваяСтрока.МетодПоиска = "ПОЛУЧИТЬССЫЛКУНАСООБЩЕНИЕ";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Токен бота";
    НоваяСтрока.ОписаниеМетода   = "Получает постоянный UTL к сообщению канала";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ПолучитьСсылкуНаСообщение";
    НоваяСтрока.МетодПоиска = "ПОЛУЧИТЬССЫЛКУНАСООБЩЕНИЕ";
    НоваяСтрока.Параметр    = "--channel";
    НоваяСтрока.Описание    = "Идентификатор канала";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ПолучитьСсылкуНаСообщение";
    НоваяСтрока.МетодПоиска = "ПОЛУЧИТЬССЫЛКУНАСООБЩЕНИЕ";
    НоваяСтрока.Параметр    = "--stamp";
    НоваяСтрока.Описание    = "Временная отметка или ID сообщения";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ПолучитьСписокОтветовНаСообщение";
    НоваяСтрока.МетодПоиска = "ПОЛУЧИТЬСПИСОКОТВЕТОВНАСООБЩЕНИЕ";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Токен бота";
    НоваяСтрока.ОписаниеМетода   = "Получает массив сообщений, которые являются ответом на указанное";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ПолучитьСписокОтветовНаСообщение";
    НоваяСтрока.МетодПоиска = "ПОЛУЧИТЬСПИСОКОТВЕТОВНАСООБЩЕНИЕ";
    НоваяСтрока.Параметр    = "--channel";
    НоваяСтрока.Описание    = "Идентификатор канала";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ПолучитьСписокОтветовНаСообщение";
    НоваяСтрока.МетодПоиска = "ПОЛУЧИТЬСПИСОКОТВЕТОВНАСООБЩЕНИЕ";
    НоваяСтрока.Параметр    = "--stamp";
    НоваяСтрока.Описание    = "Временная отметка или ID сообщения";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ПолучитьСписокОтветовНаСообщение";
    НоваяСтрока.МетодПоиска = "ПОЛУЧИТЬСПИСОКОТВЕТОВНАСООБЩЕНИЕ";
    НоваяСтрока.Параметр    = "--cursor";
    НоваяСтрока.Описание    = "Указатель из предыдущего запроса, если строк результата > 100 (необяз. по ум. - Пустое значение)";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ПолучитьСписокКаналов";
    НоваяСтрока.МетодПоиска = "ПОЛУЧИТЬСПИСОККАНАЛОВ";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Токен бота";
    НоваяСтрока.ОписаниеМетода   = "Получает список доступных каналов";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ПолучитьСписокКаналов";
    НоваяСтрока.МетодПоиска = "ПОЛУЧИТЬСПИСОККАНАЛОВ";
    НоваяСтрока.Параметр    = "--notarchived";
    НоваяСтрока.Описание    = "Признак исключения архивированных каналов (необяз. по ум. - Нет)";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ПолучитьСписокКаналов";
    НоваяСтрока.МетодПоиска = "ПОЛУЧИТЬСПИСОККАНАЛОВ";
    НоваяСтрока.Параметр    = "--cursor";
    НоваяСтрока.Описание    = "Указатель из предыдущего запроса, если строк результата > 100 (необяз. по ум. - Пустое значение)";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ПолучитьСписокПользователейКанала";
    НоваяСтрока.МетодПоиска = "ПОЛУЧИТЬСПИСОКПОЛЬЗОВАТЕЛЕЙКАНАЛА";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Токен бота";
    НоваяСтрока.ОписаниеМетода   = "Получает список пользователей указанного канала";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ПолучитьСписокПользователейКанала";
    НоваяСтрока.МетодПоиска = "ПОЛУЧИТЬСПИСОКПОЛЬЗОВАТЕЛЕЙКАНАЛА";
    НоваяСтрока.Параметр    = "--channel";
    НоваяСтрока.Описание    = "Идентификатор канала";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ПолучитьСписокПользователейКанала";
    НоваяСтрока.МетодПоиска = "ПОЛУЧИТЬСПИСОКПОЛЬЗОВАТЕЛЕЙКАНАЛА";
    НоваяСтрока.Параметр    = "--cursor";
    НоваяСтрока.Описание    = "Указатель из предыдущего запроса, если строк результата > 100 (необяз. по ум. - Пустое значение)";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "СоздатьКанал";
    НоваяСтрока.МетодПоиска = "СОЗДАТЬКАНАЛ";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Токен бота";
    НоваяСтрока.ОписаниеМетода   = "Создает новый канал";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "СоздатьКанал";
    НоваяСтрока.МетодПоиска = "СОЗДАТЬКАНАЛ";
    НоваяСтрока.Параметр    = "--title";
    НоваяСтрока.Описание    = "Наименование канала";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "СоздатьКанал";
    НоваяСтрока.МетодПоиска = "СОЗДАТЬКАНАЛ";
    НоваяСтрока.Параметр    = "--private";
    НоваяСтрока.Описание    = "Создать канал приватным (необяз. по ум. - Нет)";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "АрхивироватьКанал";
    НоваяСтрока.МетодПоиска = "АРХИВИРОВАТЬКАНАЛ";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Токен бота";
    НоваяСтрока.ОписаниеМетода   = "Архивирует активный канал";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "АрхивироватьКанал";
    НоваяСтрока.МетодПоиска = "АРХИВИРОВАТЬКАНАЛ";
    НоваяСтрока.Параметр    = "--channel";
    НоваяСтрока.Описание    = "ID канала";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ПолучитьКанал";
    НоваяСтрока.МетодПоиска = "ПОЛУЧИТЬКАНАЛ";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Токен бота";
    НоваяСтрока.ОписаниеМетода   = "Получает информацию о канале";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ПолучитьКанал";
    НоваяСтрока.МетодПоиска = "ПОЛУЧИТЬКАНАЛ";
    НоваяСтрока.Параметр    = "--channel";
    НоваяСтрока.Описание    = "ID канала";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ПолучитьИсториюКанала";
    НоваяСтрока.МетодПоиска = "ПОЛУЧИТЬИСТОРИЮКАНАЛА";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Токен бота";
    НоваяСтрока.ОписаниеМетода   = "Получает информацию событиях канала";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ПолучитьИсториюКанала";
    НоваяСтрока.МетодПоиска = "ПОЛУЧИТЬИСТОРИЮКАНАЛА";
    НоваяСтрока.Параметр    = "--channel";
    НоваяСтрока.Описание    = "ID канала";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ПригласитьПользователейВКанал";
    НоваяСтрока.МетодПоиска = "ПРИГЛАСИТЬПОЛЬЗОВАТЕЛЕЙВКАНАЛ";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Токен бота";
    НоваяСтрока.ОписаниеМетода   = "Добавляет указанных пользователей в канал
    |
    |    Пример указания параметра типа массив:
    |    --param ""['Val1','Val2','Val3']""
    |";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ПригласитьПользователейВКанал";
    НоваяСтрока.МетодПоиска = "ПРИГЛАСИТЬПОЛЬЗОВАТЕЛЕЙВКАНАЛ";
    НоваяСтрока.Параметр    = "--channel";
    НоваяСтрока.Описание    = "ID канала";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ПригласитьПользователейВКанал";
    НоваяСтрока.МетодПоиска = "ПРИГЛАСИТЬПОЛЬЗОВАТЕЛЕЙВКАНАЛ";
    НоваяСтрока.Параметр    = "--users";
    НоваяСтрока.Описание    = "Массив ID пользователей";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ВыгнатьПользователяИзКанала";
    НоваяСтрока.МетодПоиска = "ВЫГНАТЬПОЛЬЗОВАТЕЛЯИЗКАНАЛА";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Токен бота";
    НоваяСтрока.ОписаниеМетода   = "Удаляет указанного пользователя из канала";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ВыгнатьПользователяИзКанала";
    НоваяСтрока.МетодПоиска = "ВЫГНАТЬПОЛЬЗОВАТЕЛЯИЗКАНАЛА";
    НоваяСтрока.Параметр    = "--channel";
    НоваяСтрока.Описание    = "ID канала";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ВыгнатьПользователяИзКанала";
    НоваяСтрока.МетодПоиска = "ВЫГНАТЬПОЛЬЗОВАТЕЛЯИЗКАНАЛА";
    НоваяСтрока.Параметр    = "--user";
    НоваяСтрока.Описание    = "ID пользователя";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ВступитьВКанал";
    НоваяСтрока.МетодПоиска = "ВСТУПИТЬВКАНАЛ";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Токен бота";
    НоваяСтрока.ОписаниеМетода   = "Добавляет текущего бота в канал";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ВступитьВКанал";
    НоваяСтрока.МетодПоиска = "ВСТУПИТЬВКАНАЛ";
    НоваяСтрока.Параметр    = "--channel";
    НоваяСтрока.Описание    = "ID канала";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ПокинутьКанал";
    НоваяСтрока.МетодПоиска = "ПОКИНУТЬКАНАЛ";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Токен бота";
    НоваяСтрока.ОписаниеМетода   = "Удаляет текущего бота из канала";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ПокинутьКанал";
    НоваяСтрока.МетодПоиска = "ПОКИНУТЬКАНАЛ";
    НоваяСтрока.Параметр    = "--channel";
    НоваяСтрока.Описание    = "ID канала";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "УстановитьТемуКанала";
    НоваяСтрока.МетодПоиска = "УСТАНОВИТЬТЕМУКАНАЛА";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Токен бота";
    НоваяСтрока.ОписаниеМетода   = "Устанавливает тему канала";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "УстановитьТемуКанала";
    НоваяСтрока.МетодПоиска = "УСТАНОВИТЬТЕМУКАНАЛА";
    НоваяСтрока.Параметр    = "--channel";
    НоваяСтрока.Описание    = "ID канала";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "УстановитьТемуКанала";
    НоваяСтрока.МетодПоиска = "УСТАНОВИТЬТЕМУКАНАЛА";
    НоваяСтрока.Параметр    = "--theme";
    НоваяСтрока.Описание    = "Тема канала";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "УстановитьЦельКанала";
    НоваяСтрока.МетодПоиска = "УСТАНОВИТЬЦЕЛЬКАНАЛА";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Токен бота";
    НоваяСтрока.ОписаниеМетода   = "Устанавливает цель (описание) канала";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "УстановитьЦельКанала";
    НоваяСтрока.МетодПоиска = "УСТАНОВИТЬЦЕЛЬКАНАЛА";
    НоваяСтрока.Параметр    = "--channel";
    НоваяСтрока.Описание    = "ID канала";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "УстановитьЦельКанала";
    НоваяСтрока.МетодПоиска = "УСТАНОВИТЬЦЕЛЬКАНАЛА";
    НоваяСтрока.Параметр    = "--purpose";
    НоваяСтрока.Описание    = "Цель канала";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ПереименоватьКанал";
    НоваяСтрока.МетодПоиска = "ПЕРЕИМЕНОВАТЬКАНАЛ";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Токен бота";
    НоваяСтрока.ОписаниеМетода   = "Изменяет название канала";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ПереименоватьКанал";
    НоваяСтрока.МетодПоиска = "ПЕРЕИМЕНОВАТЬКАНАЛ";
    НоваяСтрока.Параметр    = "--channel";
    НоваяСтрока.Описание    = "ID канала";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ПереименоватьКанал";
    НоваяСтрока.МетодПоиска = "ПЕРЕИМЕНОВАТЬКАНАЛ";
    НоваяСтрока.Параметр    = "--title";
    НоваяСтрока.Описание    = "Новое название канала";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ОткрытьДиалог";
    НоваяСтрока.МетодПоиска = "ОТКРЫТЬДИАЛОГ";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Токен бота";
    НоваяСтрока.ОписаниеМетода   = "Открывает новый диалог с одним или несколькими пользователями
    |
    |    Пример указания параметра типа массив:
    |    --param ""['Val1','Val2','Val3']""
    |";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ОткрытьДиалог";
    НоваяСтрока.МетодПоиска = "ОТКРЫТЬДИАЛОГ";
    НоваяСтрока.Параметр    = "--users";
    НоваяСтрока.Описание    = "Массив ID пользователей";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ЗакрытьДиалог";
    НоваяСтрока.МетодПоиска = "ЗАКРЫТЬДИАЛОГ";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Токен бота";
    НоваяСтрока.ОписаниеМетода   = "Закрывает существующий диалог";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ЗакрытьДиалог";
    НоваяСтрока.МетодПоиска = "ЗАКРЫТЬДИАЛОГ";
    НоваяСтрока.Параметр    = "--conv";
    НоваяСтрока.Описание    = "ID диалога";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ПолучитьСписокФайлов";
    НоваяСтрока.МетодПоиска = "ПОЛУЧИТЬСПИСОКФАЙЛОВ";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Токен бота";
    НоваяСтрока.ОписаниеМетода   = "Получает список файлов бота или канала";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ПолучитьСписокФайлов";
    НоваяСтрока.МетодПоиска = "ПОЛУЧИТЬСПИСОКФАЙЛОВ";
    НоваяСтрока.Параметр    = "--channel";
    НоваяСтрока.Описание    = "Канал для отбора (необяз. по ум. - Пустое значение)";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ПолучитьСписокФайлов";
    НоваяСтрока.МетодПоиска = "ПОЛУЧИТЬСПИСОКФАЙЛОВ";
    НоваяСтрока.Параметр    = "--page";
    НоваяСтрока.Описание    = "Номер страницы (необяз. по ум. - 1)";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ЗагрузитьФайл";
    НоваяСтрока.МетодПоиска = "ЗАГРУЗИТЬФАЙЛ";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Токен бота";
    НоваяСтрока.ОписаниеМетода   = "Загружает файл на сервера Slack";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ЗагрузитьФайл";
    НоваяСтрока.МетодПоиска = "ЗАГРУЗИТЬФАЙЛ";
    НоваяСтрока.Параметр    = "--file";
    НоваяСтрока.Описание    = "Файл для загрузки";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ЗагрузитьФайл";
    НоваяСтрока.МетодПоиска = "ЗАГРУЗИТЬФАЙЛ";
    НоваяСтрока.Параметр    = "--filename";
    НоваяСтрока.Описание    = "Имя файла с расширением";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ЗагрузитьФайл";
    НоваяСтрока.МетодПоиска = "ЗАГРУЗИТЬФАЙЛ";
    НоваяСтрока.Параметр    = "--title";
    НоваяСтрока.Описание    = "Имя файла в Slack";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ЗагрузитьФайл";
    НоваяСтрока.МетодПоиска = "ЗАГРУЗИТЬФАЙЛ";
    НоваяСтрока.Параметр    = "--channel";
    НоваяСтрока.Описание    = "ID канала (необяз. по ум. - Пустое значение)";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ПолучитьДанныеФайла";
    НоваяСтрока.МетодПоиска = "ПОЛУЧИТЬДАННЫЕФАЙЛА";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Токен бота";
    НоваяСтрока.ОписаниеМетода   = "Получает информацию о файле";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ПолучитьДанныеФайла";
    НоваяСтрока.МетодПоиска = "ПОЛУЧИТЬДАННЫЕФАЙЛА";
    НоваяСтрока.Параметр    = "--fileid";
    НоваяСтрока.Описание    = "Идентификатор файла";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "УдалитьФайл";
    НоваяСтрока.МетодПоиска = "УДАЛИТЬФАЙЛ";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Токен бота";
    НоваяСтрока.ОписаниеМетода   = "Удаляет файл на Slack";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "УдалитьФайл";
    НоваяСтрока.МетодПоиска = "УДАЛИТЬФАЙЛ";
    НоваяСтрока.Параметр    = "--fileid";
    НоваяСтрока.Описание    = "Идентификатор файла";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "СделатьФайлПубличным";
    НоваяСтрока.МетодПоиска = "СДЕЛАТЬФАЙЛПУБЛИЧНЫМ";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Токен пользователя";
    НоваяСтрока.ОписаниеМетода   = "Создает публичный URL для файла. Требует токен пользователя";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "СделатьФайлПубличным";
    НоваяСтрока.МетодПоиска = "СДЕЛАТЬФАЙЛПУБЛИЧНЫМ";
    НоваяСтрока.Параметр    = "--fileid";
    НоваяСтрока.Описание    = "Идентификатор файла";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "СделатьФайлПриватным";
    НоваяСтрока.МетодПоиска = "СДЕЛАТЬФАЙЛПРИВАТНЫМ";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Токен пользователя";
    НоваяСтрока.ОписаниеМетода   = "Удаляет публичный URL у файла. Требует токен пользователя";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "СделатьФайлПриватным";
    НоваяСтрока.МетодПоиска = "СДЕЛАТЬФАЙЛПРИВАТНЫМ";
    НоваяСтрока.Параметр    = "--fileid";
    НоваяСтрока.Описание    = "Идентификатор файла";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ПолучитьСписокВнешнихФайлов";
    НоваяСтрока.МетодПоиска = "ПОЛУЧИТЬСПИСОКВНЕШНИХФАЙЛОВ";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Токен бота";
    НоваяСтрока.ОписаниеМетода   = "Получает список внешних файлов пользователя или канала";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ПолучитьСписокВнешнихФайлов";
    НоваяСтрока.МетодПоиска = "ПОЛУЧИТЬСПИСОКВНЕШНИХФАЙЛОВ";
    НоваяСтрока.Параметр    = "--channel";
    НоваяСтрока.Описание    = "Канал для отбора (необяз. по ум. - Пустое значение)";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ПолучитьСписокВнешнихФайлов";
    НоваяСтрока.МетодПоиска = "ПОЛУЧИТЬСПИСОКВНЕШНИХФАЙЛОВ";
    НоваяСтрока.Параметр    = "--cursor";
    НоваяСтрока.Описание    = "Указатель из предыдущего запроса, если строк результата > 100 (необяз. по ум. - Пустое значение)";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ПолучитьВнешнийФайл";
    НоваяСтрока.МетодПоиска = "ПОЛУЧИТЬВНЕШНИЙФАЙЛ";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Токен бота";
    НоваяСтрока.ОписаниеМетода   = "Получает информацию о внешнем файле";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ПолучитьВнешнийФайл";
    НоваяСтрока.МетодПоиска = "ПОЛУЧИТЬВНЕШНИЙФАЙЛ";
    НоваяСтрока.Параметр    = "--fileid";
    НоваяСтрока.Описание    = "Идентификатор файла";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ДобавитьВнешнийФайл";
    НоваяСтрока.МетодПоиска = "ДОБАВИТЬВНЕШНИЙФАЙЛ";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Токен бота";
    НоваяСтрока.ОписаниеМетода   = "Добавляет новый внешний файл";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ДобавитьВнешнийФайл";
    НоваяСтрока.МетодПоиска = "ДОБАВИТЬВНЕШНИЙФАЙЛ";
    НоваяСтрока.Параметр    = "--url";
    НоваяСтрока.Описание    = "URL к внешнему файлу";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ДобавитьВнешнийФайл";
    НоваяСтрока.МетодПоиска = "ДОБАВИТЬВНЕШНИЙФАЙЛ";
    НоваяСтрока.Параметр    = "--title";
    НоваяСтрока.Описание    = "Заголовок файла для Slack";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ОтправитьВнешнийФайл";
    НоваяСтрока.МетодПоиска = "ОТПРАВИТЬВНЕШНИЙФАЙЛ";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Токен бота";
    НоваяСтрока.ОписаниеМетода   = "Отправляет внейшний файл по списку каналов
    |
    |    Пример указания параметра типа массив:
    |    --param ""['Val1','Val2','Val3']""
    |";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ОтправитьВнешнийФайл";
    НоваяСтрока.МетодПоиска = "ОТПРАВИТЬВНЕШНИЙФАЙЛ";
    НоваяСтрока.Параметр    = "--fileid";
    НоваяСтрока.Описание    = "Идентификатор файла";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "ОтправитьВнешнийФайл";
    НоваяСтрока.МетодПоиска = "ОТПРАВИТЬВНЕШНИЙФАЙЛ";
    НоваяСтрока.Параметр    = "--channels";
    НоваяСтрока.Описание    = "Массив каналов для отправки";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "УдалитьВнешнийФайл";
    НоваяСтрока.МетодПоиска = "УДАЛИТЬВНЕШНИЙФАЙЛ";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Токен бота";
    НоваяСтрока.ОписаниеМетода   = "Удаляет внешний файл из Slack";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "УдалитьВнешнийФайл";
    НоваяСтрока.МетодПоиска = "УДАЛИТЬВНЕШНИЙФАЙЛ";
    НоваяСтрока.Параметр    = "--fileid";
    НоваяСтрока.Описание    = "Идентификатор файла";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "СформироватьБлокКартинку";
    НоваяСтрока.МетодПоиска = "СФОРМИРОВАТЬБЛОККАРТИНКУ";
    НоваяСтрока.Параметр    = "--picture";
    НоваяСтрока.Описание    = "URL картинки";
    НоваяСтрока.ОписаниеМетода   = "Формирует блок с картинкой для добавления в массив блоков сообщения";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "slack";
    НоваяСтрока.Модуль      = "OPI_Slack";
    НоваяСтрока.Метод       = "СформироватьБлокКартинку";
    НоваяСтрока.МетодПоиска = "СФОРМИРОВАТЬБЛОККАРТИНКУ";
    НоваяСтрока.Параметр    = "--alt";
    НоваяСтрока.Описание    = "Альтернативный текст картинки (необяз. по ум. - Пустое значение)";

    Возврат ТаблицаСостава;
КонецФункции
