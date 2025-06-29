#Использовать osparser

Перем ФайлСоставаОПИ;
Перем КаталогСписковСотава;
Перем МодульСоставаОПИ;
Перем СоответствиеМодулейКоманд;
Перем ТекущийМодуль;
Перем ТаблицаОписанийПараметров;
Перем ОбщийМассивМодулей;
Перем ТекущийФайлСостава;
Перем КаталогДополненийОпций;
Перем СоответствиеСлужебныхКлючей;

Процедура СформироватьCLI(Знач Корень, Знач Языки, Знач КаталогДополнений) Экспорт
    
    ЗаполнитьСоответствиеСлужебныхКлючей();
    
    Для Каждого Язык Из Языки Цикл
        
        Если Не Язык = "ru" Тогда
            СоздатьОснову(Язык, Корень);
        КонецЕсли;
        
        МодульСоставаОПИ       = Новый ТекстовыйДокумент();
        ФайлСоставаОПИ         = Корень + Язык + "/cli/data/Classes/LibraryComposition.os";
        КаталогСписковСотава   = Корень + Язык + "/cli/data/Classes/internal/Classes/";
        КаталогДополненийОпций = КаталогДополнений;
        
        ЗаписатьНачалоФайла(Язык);
        ЗаписатьФункциюОпределенияВерсии();
        ЗаписатьФункциюОпределенияКоманд();
        ЗаписатьВспомогательныеФункции(Язык);
        МодульСоставаОПИ.Записать(ФайлСоставаОПИ);
        
        ЗаполнитьТаблицыСостава();
        ВыолнитьДополнительныйПеревод(Язык);
        
    КонецЦикла;
    
КонецПроцедуры

Процедура СоздатьОснову(ТекущийЯзык, Корень)
    
    ПутьCLI  = Корень + ТекущийЯзык + "/cli";
    ПапкаCLI = Новый Файл(ПутьCLI);
    
    Если ПапкаCLI.Существует() Тогда
        УдалитьФайлы(ПапкаCLI.ПолноеИмя);
    КонецЕсли;
    
    ПутьОригинала  = "./src/ru/cli";
    ПапкаОригинала = Новый Файл(ПутьОригинала);
    СкопироватьФайлы(ПапкаОригинала.ПолноеИмя, ПапкаCLI.ПолноеИмя);
    
КонецПроцедуры

Процедура ЗаписатьНачалоФайла(ТекущийЯзык)
    
    Версия = ПолучитьВерсиюПакета();
    
    МодульСоставаОПИ.ДобавитьСтроку("#Использовать ""./internal""");
    МодульСоставаОПИ.ДобавитьСтроку("");
    МодульСоставаОПИ.ДобавитьСтроку("Перем СоответствиеКомандМодулей;");
    МодульСоставаОПИ.ДобавитьСтроку("Перем Версия;");
    МодульСоставаОПИ.ДобавитьСтроку("Перем КэшированиеСоставов;");
    МодульСоставаОПИ.ДобавитьСтроку("");
    
    МодульСоставаОПИ.ДобавитьСтроку("
    |Процедура ПриСозданииОбъекта()
    |
    |    Версия = """ + Версия + """;
    |    ИнициализироватьОсновныеСписки();
    |
    |КонецПроцедуры
    |
    |Процедура ИнициализироватьОсновныеСписки() Экспорт
    |
    |    КэшированиеСоставов       = Новый Соответствие();
    |    СоответствиеКомандМодулей = Новый Соответствие();
    |");
    
    ОпределитьСоответствиеМодулейКоманд(ТекущийЯзык);
    
    Для Каждого КомандаМодуля Из СоответствиеМодулейКоманд Цикл
        МодульСоставаОПИ.ДобавитьСтроку("    СоответствиеКомандМодулей.Вставить("""
        + КомандаМодуля.Значение
        + """, """
        + КомандаМодуля.Ключ
        + """);");
    КонецЦикла;
    
    МодульСоставаОПИ.ДобавитьСтроку("
    |КонецПроцедуры
    |
    |");
    
КонецПроцедуры

Процедура ЗаписатьФункциюОпределенияВерсии()
    
    МодульСоставаОПИ.ДобавитьСтроку("Функция ПолучитьВерсию() Экспорт");
    МодульСоставаОПИ.ДобавитьСтроку("  Возврат Версия;");
    МодульСоставаОПИ.ДобавитьСтроку("КонецФункции");
    МодульСоставаОПИ.ДобавитьСтроку("");
    
КонецПроцедуры

Процедура ЗаписатьФункциюОпределенияКоманд()
    
    МодульСоставаОПИ.ДобавитьСтроку("Функция ПолучитьСоответствиеКомандМодулей() Экспорт
    |    Возврат СоответствиеКомандМодулей;
    |КонецФункции
    |");
    
КонецПроцедуры

Процедура ЗаписатьВспомогательныеФункции(Язык)
        
    МодульСоставаОПИ.ДобавитьСтроку("
    |
    |Функция ПолучитьСостав(Знач Команда) Экспорт
    |
    |    ТекущийСостав = КэшированиеСоставов.Получить(Команда);
    |
    |    Если ТекущийСостав = Неопределено Тогда
    |        ОбъектСостава = Новый(Команда);
    |        ТекущийСостав = ОбъектСостава.ПолучитьСостав();
    |        КэшированиеСоставов.Вставить(Команда, ТекущийСостав);
    |    КонецЕсли;
    |
    |    Возврат ТекущийСостав;
    |
    |КонецФункции
    |
    |Функция ПолучитьПолныйСостав() Экспорт
    |
    |    ОбщаяТаблица = Неопределено;
    |
    |    Для Каждого Команда Из СоответствиеКомандМодулей Цикл
    |
    |        ТекущаяТаблица = ПолучитьСостав(Команда.Ключ);
    |        
    |        Если ОбщаяТаблица = Неопределено Тогда
    |            ОбщаяТаблица = ТекущаяТаблица;
    |        Иначе
    |            Для Каждого СтрокаТаблицы Из ТекущаяТаблица Цикл
    |                ЗаполнитьЗначенияСвойств(ОбщаяТаблица.Добавить(), СтрокаТаблицы);
    |            КонецЦикла;
    |        КонецЕсли;
    |
    |    КонецЦикла;
    |
    |    Возврат ОбщаяТаблица;
    |
    |КонецФункции
    |
    |Функция СформироватьСтрокуВызоваМетода(Знач ПереданныеПараметры, Знач Команда, Знач Метод) Экспорт
    |
    |    Модуль = ПолучитьСоответствиеКомандМодулей().Получить(Команда);
    |    
    |    Если Не ЗначениеЗаполнено(Модуль) Тогда
    |        Возврат Новый Структура(""Ошибка,Результат"", Истина, ""Команда"");
    |    КонецЕсли;
    |    
    |    ОтборКоманды      = Новый Структура(""МетодПоиска"", вРег(Метод));
    |    ПараметрыМетода   = ПолучитьСостав(Команда).НайтиСтроки(ОтборКоманды);
    |    
    |    Если Не ЗначениеЗаполнено(ПараметрыМетода) Тогда
    |        Возврат Новый Структура(""Ошибка,Результат"", Истина, ""Метод"");
    |    КонецЕсли;
    |
    |    ТекстВыполнения = """";
    |    СтрокаВызова    = Модуль + ""."" + Метод + ""("";
    |    Счетчик         = 0;
    |
    |    Для Каждого НеобходимыйПараметр Из ПараметрыМетода Цикл
    |
    |        ИмяПараметра      = НеобходимыйПараметр.Параметр;
    |        ЗначениеПараметра = ПереданныеПараметры.Получить(ИмяПараметра);
    |
    |        Если ЗначениеЗаполнено(ЗначениеПараметра) Тогда
    |
    |            ИмяПараметра = ""Параметр"" + СтрЗаменить(ИмяПараметра, ""--"", ""_"");
    |
    |            ТекстВыполнения = ТекстВыполнения 
    |                + Символы.ПС 
    |                + ИмяПараметра
    |                + "" = """""" 
    |                + СтрЗаменить(ЗначениеПараметра, """""""", """""""""""")
    |                + """""";"";
    |
    |            Если ТребуетсяОбработкаУправляющихПоследовательностей(ИмяПараметра, ЗначениеПараметра) Тогда
    |
    |                ТекстВыполнения = ТекстВыполнения + ""
    |                | OPI_Инструменты.ЗаменитьУправляющиеПоследовательности("" + ИмяПараметра + "");
    |                |"";
    |
    |            КонецЕсли;
    |
    |            СтрокаВызова = СтрокаВызова + ИмяПараметра + "", "";
    |            Счетчик      = Счетчик + 1;
    |
    |        Иначе
    |            СтрокаВызова = СтрокаВызова + "" , "";
    |        КонецЕсли;
    |
    |    КонецЦикла;
    |
    |    ЛишниеСимволы   = 2;
    |    СтрокаВызова    = Лев(СтрокаВызова, СтрДлина(СтрокаВызова) - ЛишниеСимволы);
    |    СтрокаВызова    = СтрокаВызова + "");"";
    |    СтрокаВызова    = ""Ответ = "" + СтрокаВызова;
    |    ТекстВыполнения = ТекстВыполнения + Символы.ПС + СтрокаВызова;
    |
    |    СтруктураВозврата = Новый Структура(""Ошибка,Результат"", Ложь, ТекстВыполнения);
    |
    |    Возврат СтруктураВозврата;
    |
    |КонецФункции
    |
    |Функция ДополнитьКэшСостава(Знач Библиотека, Знач ТаблицаПараметров, Команда = """") Экспорт
    |   КэшированиеСоставов.Вставить(Библиотека, ТаблицаПараметров);
    |   Команда = ?(ЗначениеЗаполнено(Команда), Команда, Библиотека);
    |   СоответствиеКомандМодулей.Вставить(Команда, Библиотека);
    |КонецФункции
    |
    |Функция ТребуетсяОбработкаУправляющихПоследовательностей(Знач ИмяПараметра, Знач ЗначениеПараметра)
    |
    |    ФайлПараметра         = Новый Файл(ЗначениеПараметра);
    |    ЗначениеПараметраСокр = СокрЛП(ЗначениеПараметра);
    |
    |    Возврат Не СтрНачинаетсяС(ЗначениеПараметраСокр, ""{"")
    |                И Не СтрНачинаетсяС(ЗначениеПараметраСокр, ""["") 
    |                И Не ФайлПараметра.Существует() 
    |                И Не ИмяПараметра = ""Параметр_out"";
    |
    |КонецФункции");
    
КонецПроцедуры

Процедура ЗаполнитьТаблицыСостава()
    
    Для Каждого Модуль Из ОбщийМассивМодулей Цикл
        
        ТекущийМодуль = Модуль.ИмяБезРасширения;
        
        Если Не СоответствиеМодулейКоманд[ТекущийМодуль] = Неопределено Тогда    
            РазобратьМодуль(Модуль);
        КонецЕсли;
        
    КонецЦикла;
    
КонецПроцедуры

Процедура РазобратьМодуль(Модуль)
    
    ЗаписатьНачалоСоставаБиблиотеки();
    
    Парсер         = Новый ПарсерВстроенногоЯзыка;
    ДокументМодуля = Новый ТекстовыйДокумент;
    ДокументМодуля.Прочитать(Модуль.ПолноеИмя);
    ТекстМодуля = ДокументМодуля.ПолучитьТекст();
    
    СтруктураМодуля = Парсер.Разобрать(ТекстМодуля);
    ТекущаяОбласть  = "Основные методы";
    Для Каждого Метод Из СтруктураМодуля.Объявления Цикл
        
        Если Метод.Тип = "ИнструкцияПрепроцессораОбласть" Тогда
            ТекущаяОбласть = Синонимайзер(Метод.Имя);
        КонецЕсли;
        
        Если Метод.Тип = "ОбъявлениеМетода" И Метод.Сигнатура.Экспорт = Истина Тогда
            ТаблицаОписанийПараметров.Очистить();
            РазобратьКомментарийМетода(ДокументМодуля, Метод, Модуль, ТекущаяОбласть);	
            
        КонецЕсли;
        
    КонецЦикла;
    
    Команда = СоответствиеМодулейКоманд[Модуль.ИмяБезРасширения];
    ЗаписатьОкончаниеСоставаБиблиотеки(Команда);
    
КонецПроцедуры

Процедура ЗаписатьНачалоСоставаБиблиотеки()
    
    ТекущийФайлСостава = Новый ТекстовыйДокумент();
    
    ТекущийФайлСостава.ДобавитьСтроку("Функция ПолучитьСостав() Экспорт
    |
    |    ТаблицаСостава = Новый ТаблицаЗначений();
    |    ТаблицаСостава.Колонки.Добавить(""Библиотека"");
    |    ТаблицаСостава.Колонки.Добавить(""Модуль"");
    |    ТаблицаСостава.Колонки.Добавить(""Метод"");
    |    ТаблицаСостава.Колонки.Добавить(""МетодПоиска"");
    |    ТаблицаСостава.Колонки.Добавить(""Параметр"");
    |    ТаблицаСостава.Колонки.Добавить(""Описание"");
    |    ТаблицаСостава.Колонки.Добавить(""ОписаниеМетода"");
    |    ТаблицаСостава.Колонки.Добавить(""Область"");
    |");
    
    ТаблицаОписанийПараметров = Новый ТаблицаЗначений;
    ТаблицаОписанийПараметров.Колонки.Добавить("Имя");
    ТаблицаОписанийПараметров.Колонки.Добавить("Типы");
    ТаблицаОписанийПараметров.Колонки.Добавить("Описание");
    ТаблицаОписанийПараметров.Колонки.Добавить("ЗначениеПоУмолчанию");
    
КонецПроцедуры

Процедура ЗаписатьОкончаниеСоставаБиблиотеки(Библиотека)
    
    ТекущийФайлСостава.ДобавитьСтроку("    Возврат ТаблицаСостава;");
    ТекущийФайлСостава.ДобавитьСтроку("КонецФункции");
    ТекущийФайлСостава.ДобавитьСтроку(Символы.ПС);
    
    ТекущийФайлСостава.Записать(КаталогСписковСотава + Библиотека + ".os");
    
КонецПроцедуры

Процедура РазобратьКомментарийМетода(ТекстовыйДокумент, Метод, Модуль, Область)
    
    НомерСтроки         = Метод.Начало.НомерСтроки;
    ИмяМетода           = Метод.Сигнатура.Имя;
    
    МассивКомментария = ПарсингКомментария(ТекстовыйДокумент, НомерСтроки);
    
    Если МассивКомментария.Количество() = 0 Тогда
        Возврат;
    КонецЕсли;
    
    МассивПараметров  = Новый Массив;
    ОписаниеМетода    = "";
    
    СформироватьСтруктуруМетода(МассивКомментария, МассивПараметров, ОписаниеМетода);
    СформироватьТаблицуОписанийПараметров(МассивПараметров, Метод, Модуль);
    
    ДопОписание = "";
    ОпределитьДопОписание(ДопОписание, Модуль);
    
    ОписаниеМетода = СокрЛП(ОписаниеМетода) + ДопОписание;
    
    Для Каждого СтрокаПараметра Из ТаблицаОписанийПараметров Цикл
        
        ЗаписатьСозданиеПараметраСостава(СтрокаПараметра, ИмяМетода, Область, СокрЛП(ОписаниеМетода));
        ОписаниеМетода = "";
        
    КонецЦикла;
    
КонецПроцедуры

Функция ПарсингКомментария(Знач ТекстовыйДокумент, Знач НомерСтроки)
    
    ТекущаяСтрока       = ТекстовыйДокумент.ПолучитьСтроку(НомерСтроки - 1);
    ТекстКомментария    = ТекущаяСтрока;
    
    Счетчик	= 1;
    Пока СтрНайти(ТекущаяСтрока, "//") > 0 Цикл
        
        Счетчик = Счетчик + 1;
        
        ТекущаяСтрока    = ТекстовыйДокумент.ПолучитьСтроку(НомерСтроки - Счетчик);
        ТекстКомментария = ТекущаяСтрока + Символы.ПС + ТекстКомментария;
        
    КонецЦикла;
    
    Если СтрНайти(ТекстКомментария, "!NOCLI") > 0 Тогда
        Возврат Новый Массив;
    КонецЕсли;
    
    МассивКомментария = СтрРазделить(ТекстКомментария, "//", Ложь);
    
    Если МассивКомментария.Количество() = 0 Тогда
        Сообщить(ТекстКомментария);
        Возврат Новый Массив;
    Иначе
        МассивКомментария.Удалить(0);
    КонецЕсли;
    
    Возврат МассивКомментария;
    
КонецФункции

Процедура СформироватьСтруктуруМетода(Знач МассивКомментария, МассивПараметров, ОписаниеМетода)
    
    ЗаписыватьПараметры = Ложь;
    ЗаписыватьОписание  = Истина;
    
    Счетчик = 0;
    Для Каждого СтрокаКомментария Из МассивКомментария Цикл
        
        Счетчик = Счетчик + 1;
        
        Если Не ЗначениеЗаполнено(СокрЛП(СтрокаКомментария)) Тогда
            ЗаписыватьОписание = Ложь;
        КонецЕсли;
        
        Если ЗаписыватьОписание = Истина И Счетчик > 1 Тогда
            ОписаниеМетода = ?(ЗначениеЗаполнено(ОписаниеМетода), ОписаниеМетода + "    |   ", ОписаниеМетода) 
            + СтрокаКомментария;
        КонецЕсли;
        
        Если СтрНайти(СтрокаКомментария, "Параметры:") > 0 Или СтрНайти(СтрокаКомментария, "Parameters:") > 0 Тогда
            ЗаписыватьПараметры = Истина;
            ЗаписыватьОписание  = Ложь;
            
        ИначеЕсли СтрНайти(СтрокаКомментария, "Возвращаемое значение:") > 0 Или СтрНайти(СтрокаКомментария, "Returns:") > 0 Тогда
            Прервать;
            
        ИначеЕсли ЗаписыватьПараметры = Истина 
            И ЗначениеЗаполнено(СокрЛП(СтрокаКомментария)) 
            И Не СтрНачинаетсяС(СокрЛП(СтрокаКомментария), "*") Тогда
            
            МассивПараметров.Добавить(СтрокаКомментария);
            
        Иначе
            Продолжить;
        КонецЕсли;
        
    КонецЦикла;
    
КонецПроцедуры

Процедура СформироватьТаблицуОписанийПараметров(Знач МассивПараметров, Знач Метод, Знач Модуль = "")
    
    Разделитель = "-";
    
    Для Каждого ПараметрМетода Из МассивПараметров Цикл
        
        МассивЭлементовПараметра = СтрРазделить(ПараметрМетода, Разделитель, Ложь);
        КоличествоЭлементов      = МассивЭлементовПараметра.Количество();
        
        Для Н = 0 По МассивЭлементовПараметра.ВГраница() Цикл
            МассивЭлементовПараметра[Н] = СокрЛП(МассивЭлементовПараметра[Н]);
        КонецЦикла;
        
        Если КоличествоЭлементов < 4 Тогда
            Сообщить("Недостаточный набор данных в док. комментарии: " + Модуль.ИмяБезРасширения + " - " + Метод.Сигнатура.Имя);
            Возврат;
        КонецЕсли;
        
        
        Имя1С     = МассивЭлементовПараметра[0];
        Имя       = "--" + МассивЭлементовПараметра[3];
        Типы      = МассивЭлементовПараметра[1];
        Описание  = ?(КоличествоЭлементов >= 5, МассивЭлементовПараметра[4], МассивЭлементовПараметра[2]);
        
        Если КоличествоЭлементов > 5 Или СтрНайти(Имя, " ") > 0 Тогда
            ВызватьИсключение("Некоррентный документирующий комментарий в методе: " + Модуль.ИмяБезРасширения + " - " + Метод.Сигнатура.Имя);
        КонецЕсли;
        
        НоваяСтрокаТаблицы = ТаблицаОписанийПараметров.Добавить();
        НоваяСтрокаТаблицы.Имя      = Имя;
        НоваяСтрокаТаблицы.Типы     = Типы;
        НоваяСтрокаТаблицы.Описание = Описание;
        
        НоваяСтрокаТаблицы.ЗначениеПоУмолчанию = ПолучитьЗначениеПараметраПоУмолчанию(Имя1С, Метод);
    КонецЦикла;
    
КонецПроцедуры

Функция ПолучитьЗначениеПараметраПоУмолчанию(Знач Имя, Знач Метод)
    
    Значение = "";
    
    Для Каждого ПараметрМетода Из Метод.Сигнатура.Параметры Цикл
        
        Если ПараметрМетода.Имя = Имя Тогда
            
            ЗначениеПараметра = ПараметрМетода.Значение;
            Если ЗначениеЗаполнено(ЗначениеПараметра) Тогда
                Попытка
                    Значение = ЗначениеПараметра["Элементы"][0]["Значение"];
                Исключение 
                    Значение = ЗначениеПараметра.Значение;
                КонецПопытки;
                Значение = ?(ЗначениеЗаполнено(Значение), Значение, "Пустое значение");
            КонецЕсли;
            
        КонецЕсли;
        
    КонецЦикла;
    
    Возврат Значение;
    
КонецФункции

Процедура ОпределитьДопОписание(ДопОписание, Модуль)
    
    ЕстьМассив       = Ложь;
    ЕстьДата         = Ложь;
    ТекстДополнения  = "";
    ИмяМодуля        = Модуль.ИмяБезРасширения;
    
    ДЛя Каждого СтрокаПараметра Из ТаблицаОписанийПараметров Цикл
        
        Типы = СтрокаПараметра["Типы"];
        Имя  = СтрокаПараметра["Имя"];
        
        Если СтрНайти(Типы, "Массив") > 0 Тогда
            ЕстьМассив = Истина;
        КонецЕсли;
        
        Если СтрНайти(Типы, "Дата") > 0 Тогда
            ЕстьДата = Истина;
        КонецЕсли;
        
        ОпределитьДопОписаниеПоПараметру(ТекстДополнения, ИмяМодуля, Имя)
        
    КонецЦикла;
    
    Если ЕстьМассив Тогда
        ТекстДополнения =  
        "
        |
        |    Пример указания параметра типа массив:
        |    --param ""['Val1','Val2','Val3']""
        |" + ТекстДополнения;
        
    КонецЕсли;
    
    Если ЕстьДата Тогда
        ТекстДополнения =  
        "
        |
        |    Дата указывается в формате ISO 8601:
        |    ""2024-04-07""
        |    ""2024-04-07T13:34:42+00:00"" 
        |    ""2024-04-07T13:34:42Z""
        |" + ТекстДополнения;
    КонецЕсли;
    
    ТекстДополнения = СтрЗаменить(ТекстДополнения, Символы.ПС, Символы.ПС + "    |");
    ДопОписание     = ДопОписание +  СтрЗаменить(ТекстДополнения, """", """""");
    
КонецПроцедуры

Процедура ОпределитьДопОписаниеПоПараметру(ТекстДополнения, ИмяМодуля, ИмяПараметра)
    
    ИмяФайлаДополнения    = КаталогДополненийОпций 
    + СтрЗаменить(ИмяМодуля, "OPI_", "") 
    + "/"
    + СтрЗаменить(ИмяПараметра, "--", "")
    + ".txt";
    
    ОбъектФайлаДополнения = Новый Файл(ИмяФайлаДополнения);
    
    Если Не ОбъектФайлаДополнения.Существует() Тогда
        Возврат;
    КонецЕсли;
    
    ТекстовыйДокумент = Новый ТекстовыйДокумент();
    ТекстовыйДокумент.Прочитать(ИмяФайлаДополнения, "UTF-8");
    ТекстДополненияФайла = СокрЛП(ТекстовыйДокумент.ПолучитьТекст());
    
    Если Не ЗначениеЗаполнено(ТекстДополненияФайла) Тогда
        Возврат;
    КонецЕсли;
    
    ЧислоСтрок          = СтрЧислоСтрок(ТекстДополненияФайла);
    ВставленоПримечание = Ложь;
    ТекстДополнения     = ТекстДополнения + Символы.ПС;
    
    Для Н = 1 По ЧислоСтрок Цикл
        
        ТекущаяСтрока = СтрПолучитьСтроку(ТекстДополненияФайла, Н);
        
        Если СтрНачинаетсяС(СокрЛ(ТекущаяСтрока), "{")
            И Не ВставленоПримечание Тогда
            
            ВставленоПримечание = Истина;
            ТекстДополнения = ТекстДополнения 
            + "    Структура заполнения опции "
            + ИмяПараметра
            + ":"
            + Символы.ПС;
            
        КонецЕсли;
        
        ТекстДополнения = ТекстДополнения 
        + "    "
        + ТекущаяСтрока 
        + Символы.ПС;
        
    КонецЦикла;
    
КонецПроцедуры

Процедура ЗаписатьСозданиеПараметраСостава(СтрокаПараметра, ИмяМетода, Область, ОписаниеМетода = "") 
    
    Имя        = СтрокаПараметра["Имя"];
    Описание   = СтрокаПараметра["Описание"];
    Значение   = СтрокаПараметра["ЗначениеПоУмолчанию"];
    Библиотека = СоответствиеМодулейКоманд.Получить(ТекущийМодуль);
    
    Если ЗначениеЗаполнено(Значение) Тогда
        Описание = Описание + " (необяз. по ум. - " + Значение + ")";
    КонецЕсли;
    
    ТекущийФайлСостава.ДобавитьСтроку(Символы.ПС);
    
    ТекущийФайлСостава.ДобавитьСтроку("    НоваяСтрока = ТаблицаСостава.Добавить();");
    ТекущийФайлСостава.ДобавитьСтроку("    НоваяСтрока.Библиотека  = """ + Библиотека + """;");
    ТекущийФайлСостава.ДобавитьСтроку("    НоваяСтрока.Модуль      = """ + ТекущийМодуль + """;");
    ТекущийФайлСостава.ДобавитьСтроку("    НоваяСтрока.Метод       = """ + ИмяМетода + """;");
    ТекущийФайлСостава.ДобавитьСтроку("    НоваяСтрока.МетодПоиска = """ + вРег(ИмяМетода) + """;");
    ТекущийФайлСостава.ДобавитьСтроку("    НоваяСтрока.Параметр    = """ + Имя + """;");
    ТекущийФайлСостава.ДобавитьСтроку("    НоваяСтрока.Описание    = """ + Описание + """;");
    ТекущийФайлСостава.ДобавитьСтроку("    НоваяСтрока.Область     = """ + Область + """;");
    
    Если ЗначениеЗаполнено(ОписаниеМетода) Тогда
        ТекущийФайлСостава.ДобавитьСтроку("    НоваяСтрока.ОписаниеМетода   = """ + ОписаниеМетода + """;");
    КонецЕсли;
    
    ТекущийФайлСостава.ДобавитьСтроку(Символы.ПС);
    
КонецПроцедуры

Процедура ОпределитьСоответствиеМодулейКоманд(ТекущийЯзык)
    
    СоответствиеМодулейКоманд  = Новый Соответствие();
    
    ОбщийМассивМодулей = Новый Массив;
    
    ФайлыМодулей = НайтиФайлы("./src/" + ТекущийЯзык + "/", "*.os", Истина);
    
    Для Каждого Модуль Из ФайлыМодулей Цикл
        
        КомандаCLI = ОпределитьКомандуCLI(Модуль.ПолноеИмя);
        
        Если Не ЗначениеЗаполнено(КомандаCLI) Или СокрЛП(Строка(КомандаCLI)) = "none" Тогда
            Продолжить;
        КонецЕсли;
        
        СоответствиеМодулейКоманд.Вставить(Модуль.ИмяБезРасширения, КомандаCLI);
        ОбщийМассивМодулей.Добавить(Модуль);
        
    КонецЦикла;
    
КонецПроцедуры

Функция ОпределитьКомандуCLI(Знач ПутьКМодулю)
    
    КомандаCLI     = "";
    ДокументМодуля = Новый ТекстовыйДокумент();
    Признак        = "// CLI: ";
    ДокументМодуля.Прочитать(ПутьКМодулю);
    
    Для Н = 1 По ДокументМодуля.КоличествоСтрок() Цикл
        
        ТекущаяСтрока = СокрЛП(ДокументМодуля.ПолучитьСтроку(Н));
        
        Если Не ЗначениеЗаполнено(ТекущаяСтрока) Тогда
            Прервать;
        КонецЕсли;
        
        Если СтрНачинаетсяС(ТекущаяСтрока, Признак) Тогда
            КомандаCLI = СтрЗаменить(ТекущаяСтрока, Признак, "");
            КомандаCLI = СокрЛП(КомандаCLI);
            Прервать;
        КонецЕсли;
        
    КонецЦикла;
    
    Возврат КомандаCLI;
    
КонецФункции

Функция ПолучитьВерсиюПакета()
    
    Версия     = "";
    Packagedef = "./src/ru/OInt/packagedef";
    Признак    = ".Версия(""";
    
    ТекстФайла = Новый ТекстовыйДокумент();
    ТекстФайла.Прочитать(Packagedef);
    
    Для Н = 1 По ТекстФайла.КоличествоСтрок() Цикл
        
        ТекущаяСтрока = СокрЛП(ТекстФайла.ПолучитьСтроку(Н));
        Если СтрНайти(ТекущаяСтрока, Признак) Тогда
            Версия = СтрЗаменить(ТекущаяСтрока, Признак, "");
            Версия = Лев(Версия, СтрДлина(Версия) - 2);
            Прервать;
        КонецЕсли;    
    КонецЦикла;
    
    Возврат Версия;
    
КонецФункции

Функция Синонимайзер(ИмяРеквизита)
    
    Перем Синоним, ъ, Символ, ПредСимвол, СледСимвол, Прописная, ПредПрописная, СледПрописная, ДлинаСтроки;
    
    Синоним = ВРег(Сред(ИмяРеквизита, 1, 1));
    ДлинаСтроки = СтрДлина(ИмяРеквизита);
    Для ъ=2 По ДлинаСтроки Цикл
        Символ = Сред(ИмяРеквизита, ъ, 1);
        ПредСимвол = Сред(ИмяРеквизита, ъ-1, 1);
        СледСимвол = Сред(ИмяРеквизита, ъ+1, 1);
        Прописная = Символ = ВРег(Символ);
        ПредПрописная = ПредСимвол = ВРег(ПредСимвол);
        СледПрописная = СледСимвол = ВРег(СледСимвол);
        
        // Варианты:
        Если НЕ ПредПрописная И Прописная Тогда
            Синоним = Синоним + " " + Символ;
        ИначеЕсли Прописная И НЕ СледПрописная Тогда
            Синоним = Синоним + " " + Символ;
        Иначе
            Синоним = Синоним + Символ;
        Конецесли;
    КонецЦикла;
    
    Синоним = ВРег(Лев(Синоним,1)) + нРег(Сред(Синоним,2));
    
    Возврат Синоним;
    
КонецФункции

Процедура СкопироватьФайлы(Знач КаталогИсточник, Знач КаталогПриемник)
    
    СоздатьКаталог(КаталогПриемник);
    
    МассивФайлов = НайтиФайлы(КаталогИсточник, "*.*", Истина);
    
    Для Каждого Файл Из МассивФайлов Цикл
        
        ПолноеИмяИсточник = Файл.ПолноеИмя;
        ПолноеИмяПриемник = КаталогПриемник + СтрЗаменить(Файл.ПолноеИмя, КаталогИсточник, "");
        
        Если Файл.ЭтоКаталог() Тогда
            СоздатьКаталог(ПолноеИмяПриемник);	
        Иначе
            КопироватьФайл(ПолноеИмяИсточник, ПолноеИмяПриемник);
        КонецЕсли;
    КонецЦикла;	
    
КонецПроцедуры

Процедура ВыолнитьДополнительныйПеревод(ТекущийЯзык)
    
    ПутьСловаря = "./service/dictionaries/" + ТекущийЯзык + ".json";
    ФайлСловаря = Новый Файл(ПутьСловаря);
    
    Если Не ФайлСловаря.Существует() Тогда 
        Возврат;
    КонецЕсли;
    
    ЧтениеJSON = Новый ЧтениеJSON();
    ЧтениеJSON.ОткрытьФайл(ПутьСловаря);
    ДанныеПревода = ПрочитатьJSON(ЧтениеJSON, Истина);
    ЧтениеJSON.Закрыть();
    
    ТЗСловаря = Новый ТаблицаЗначений();
    ТЗСловаря.Колонки.Добавить("Ключ");
    ТЗСловаря.Колонки.Добавить("Значение");
    ТЗСловаря.Колонки.Добавить("Длина");
    
    Для Каждого Элемент Из ДанныеПревода Цикл
        НоваяСтрока = ТЗСловаря.Добавить();
        НоваяСтрока.Ключ = Элемент.Ключ;
        НоваяСтрока.Значение = Элемент.Значение;
        НоваяСтрока.Длина = СтрДлина(Элемент.Ключ);
    КонецЦикла;
    
    ТЗСловаря.Сортировать("Длина УБЫВ");
    
    МассивМодулейДляПеревода = НайтиФайлы("./src/" + ТекущийЯзык + "/cli", "*", Истина);
    
    Для Каждого ПереводимыйМодуль Из МассивМодулейДляПеревода Цикл
        
        Если ПереводимыйМодуль.ЭтоКаталог() Или СтрНайти(ПереводимыйМодуль.Имя, "packagedef") <> 0 Тогда
            Продолжить;
        КонецЕсли;
        
        ТекстовыйДокумент = Новый ТекстовыйДокумент();
        ТекстовыйДокумент.Прочитать(ПереводимыйМодуль.ПолноеИмя, "UTF-8");
        ТекстМодуля = ТекстовыйДокумент.ПолучитьТекст();
        
        Для Каждого Элемент Из ТЗСловаря Цикл
            ТекстМодуля = СтрЗаменить(ТекстМодуля, Элемент.Ключ, Элемент.Значение);
        КонецЦикла;

        Для Каждого СлужебныйКлюч Из СоответствиеСлужебныхКлючей Цикл
            ТекстМодуля = СтрЗаменить(ТекстМодуля, "." + СлужебныйКлюч.Ключ, "." + СлужебныйКлюч.Значение);
            ТекстМодуля = СтрЗаменить(ТекстМодуля, "(""" + СлужебныйКлюч.Ключ + """)", "(""" + СлужебныйКлюч.Значение + """)");
            ТекстМодуля = СтрЗаменить(ТекстМодуля, СлужебныйКлюч.Ключ + "(", СлужебныйКлюч.Значение + "(");
        КонецЦикла;

        ТекстМодуля = СтрЗаменить(ТекстМодуля, "Console.", "Консоль.");
        
        ТекстовыйДокумент.УстановитьТекст(ТекстМодуля);
        ТекстовыйДокумент.Записать(ПереводимыйМодуль.ПолноеИмя);
        
    КонецЦикла;
        
КонецПроцедуры

Процедура ЗаполнитьСоответствиеСлужебныхКлючей()
    
    СоответствиеСлужебныхКлючей = Новый Соответствие();
    //СоответствиеСлужебныхКлючей.Вставить("ConcatBinaryData"                 , "ConcatenateBinaryData");
	СоответствиеСлужебныхКлючей.Вставить("ConcatBinaryData"                 , "СоединитьДвоичныеДанные"); // Исправлено в 2.0
	СоответствиеСлужебныхКлючей.Вставить("GetTestList"                      , "ПолучитьСписокТестов"); // Исправлено в 2.0
	СоответствиеСлужебныхКлючей.Вставить("Exists"                           , "Exist"); // Исправлено в 2.0
	СоответствиеСлужебныхКлючей.Вставить("SetBodyFromBinaryData"            , "SetBodyFromBinary"); // Исправлено в 2.0
	СоответствиеСлужебныхКлючей.Вставить("GetBodyAsBinaryData"              , "ПолучитьТелоКакДвоичныеДанные"); // Исправлено в 2.0
	СоответствиеСлужебныхКлючей.Вставить("FileCopy"                         , "CopyFile"); // Вопрос разных имен в 8.15 и более новых версиях
	СоответствиеСлужебныхКлючей.Вставить("GetBinaryDataFromString"          , "ПолучитьДвоичныеДанныеИзСтроки"); // В ПР
	СоответствиеСлужебныхКлючей.Вставить("GetHexStringFromBinaryData"       , "ПолучитьHexСтрокуИзДвоичныхДанных");
	СоответствиеСлужебныхКлючей.Вставить("SplitBinaryData"                  , "РазделитьДвоичныеДанные"); // В ПР
	СоответствиеСлужебныхКлючей.Вставить("GetStringFromBinaryData"          , "ПолучитьСтрокуИзДвоичныхДанных"); // В ПР
	СоответствиеСлужебныхКлючей.Вставить("GetBinaryDataBufferFromString"    , "ПолучитьБуферДвоичныхДанныхИзСтроки"); // В ПР
	СоответствиеСлужебныхКлючей.Вставить("GetBinaryDataFromHexString"       , "ПолучитьДвоичныеДанныеИзHexСтроки"); // В ПР
	СоответствиеСлужебныхКлючей.Вставить("GetBinaryDataBufferFromBinaryData", "ПолучитьБуферДвоичныхДанныхИзДвоичныхДанных"); // В ПР
	СоответствиеСлужебныхКлючей.Вставить("GetBinaryDataBufferFromHexString" , "ПолучитьБуферДвоичныхДанныхИзHexСтроки"); // В ПР
	СоответствиеСлужебныхКлючей.Вставить("GetBinaryDataFromBinaryDataBuffer", "ПолучитьДвоичныеДанныеИзБуфераДвоичныхДанных"); // В ПР
	СоответствиеСлужебныхКлючей.Вставить("WeekDay"                          , "DayOfWeek"); // Не исправлено
	СоответствиеСлужебныхКлючей.Вставить("BinDir"                           , "ProgramDirectory");
	СоответствиеСлужебныхКлючей.Вставить("OutputEncoding"                   , "КодировкаВыходногоПотока");
	СоответствиеСлужебныхКлючей.Вставить("Console."                         , "Консоль.");
	СоответствиеСлужебныхКлючей.Вставить("ThisObject"                       , "ЭтотОбъект");
	СоответствиеСлужебныхКлючей.Вставить("PositionInStream"                 , "StreamPosition");

КонецПроцедуры
