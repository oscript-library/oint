#Использовать "./internal"
#Использовать "./internal/Modules/internal"

Перем ПутьPackagedef;
Перем ОсновнойПутьИсходников;
Перем СоответствиеЗамен;
Перем ПутьПакета;
Перем Версия;
Перем Языки;
Перем КаталогСловарей;
Перем ФайлыПеревода;
Перем ФайлыРазбораСловаря;
Перем ФайлыФорматирования;
Перем Корень;
Перем ОсновнойЯзык;
Перем КаталогWorkflow;
Перем КаталогJenkins;
Перем КаталогПараметровЛок;
Перем КаталогДополнений;
Перем ФайлПроверкиНабораТестов;

Процедура ПриСозданииОбъекта()

	ДанныеПроекта = ОбщиеМетоды.ПолучитьДанныеПроекта();

	// Основные
	Корень                     = ДанныеПроекта["root"];
	КаталогПакета              = ДанныеПроекта["packageSrc"];
	ОсновнойЯзык               = ДанныеПроекта["mainLang"];
	Версия                     = ДанныеПроекта["version"];
	Языки                      = ДанныеПроекта["additionalLangs"];
	КаталогСловарей            = ДанныеПроекта["dictionariesSrc"];
	КаталогWorkflow            = ДанныеПроекта["workflowsSrc"];
	КаталогJenkins             = ДанныеПроекта["jenkinsSrc"];
	КаталогПараметровЛок       = ДанныеПроекта["locVarsSrc"];
	КаталогДополнений          = ДанныеПроекта["paramsExamplesSrc"];

	ОсновнойПутьИсходников = Корень + ОсновнойЯзык + "/";
	ПутьПакета             = ОсновнойПутьИсходников + КаталогПакета;
	ПутьPackagedef         = ПутьПакета + "packagedef";

	// Замены для OneScript
	СоответствиеЗамен = Новый Соответствие();
	СоответствиеЗамен.Вставить("// #Использовать"					, "#Использовать");
	СоответствиеЗамен.Вставить("//#Использовать" 					, "#Использовать");
	СоответствиеЗамен.Вставить("УстановитьБезопасныйРежим(Истина);"	, "");
	СоответствиеЗамен.Вставить("УстановитьБезопасныйРежим(Ложь);"	, "");
	СоответствиеЗамен.Вставить("// !OInt "						    , "");
	
	// Файлы перевода
	ФайлыРазбораСловаря = ОпределитьНаборФайловДляСловаря();
	ФайлыПеревода       = ОпределитьНаборФайловПеревода();

КонецПроцедуры

Процедура ОсновнаяОбработка() Экспорт

	СоответствиеМодулей = МетодыКонвертации.ПолучитьСопоставлениеФайлов(ОсновнойПутьИсходников);

	МетодыВерсионирования.ОбновитьНомераВерсий(ПутьPackagedef, Версия);
	МетодыВерсионирования.ОбновитьLibConfig(СоответствиеМодулей, ПутьПакета);
	МетодыКонвертации.ПортироватьНабор(СоответствиеМодулей, СоответствиеЗамен);
	
	ЛокальныеПараметры = НайтиФайлы(КаталогПараметровЛок, "*.json");
	
	ЕстьНовыеСлова = МетодыСловарей.СоздатьНаборСловарей(ФайлыРазбораСловаря, Языки, КаталогСловарей);

	Если Не ЕстьНовыеСлова Тогда

		МетодыПеревода.ПеревестиПроект(КаталогСловарей, Корень, ОсновнойЯзык, Языки, ФайлыПеревода);

		ФайлыФорматирования = ОпределитьНаборФайловФорматирования();
		МетодыФорматирования.ОтформатироватьНабор(ФайлыФорматирования);

		Для Каждого ФайлПараметров Из ЛокальныеПараметры Цикл

			ТекущиеПараметры = Инструменты.ПрочитатьФайлJSON(ФайлПараметров.ПолноеИмя);
			МодульТестов          = ТекущиеПараметры["testsModulePath"];
			КаталогПримеров       = ТекущиеПараметры["codeExamplesSrc"];
			КаталогЗначенийТестов = ТекущиеПараметры["testValuesSrc"];
			ИмяОбласти            = ТекущиеПараметры["testsRegionName"];
	
			МетодыПримеровКода.ПолучитьПримерыКодаДокументации(МодульТестов
				, КаталогПримеров
				, КаталогЗначенийТестов
				, ИмяОбласти);
	
		КонецЦикла;

		Языки.Добавить(ОсновнойЯзык);

		МетодыCLI.СформироватьCLI(Корень, Языки, КаталогДополнений);
		МетодыФормированияТестовJenkins.СоздатьНаборWorkflow(Языки, КаталогПараметровЛок, КаталогJenkins);
		МетодыФормированияТестовJenkins.СоздатьНаборWorkflow(Языки, КаталогПараметровЛок, КаталогJenkins);

		МетодыФормированияТестовGA.СоздатьНаборWorkflow(Языки, КаталогПараметровЛок, КаталогWorkflow);
		МетодыФормированияТестовGA.СоздатьНаборWorkflow(Языки, КаталогПараметровЛок, КаталогWorkflow);

	Иначе
		Сообщить("В словарях есть новые слова без перевода. Перевод и создание CLI не выполнено!");
		ЗавершитьРаботу(111);
	КонецЕсли;

	Сообщить("Обработка завершена!");

КонецПроцедуры

Функция ОпределитьНаборФайловДляСловаря()

	ВсеФайлы       = НайтиФайлы(ОсновнойПутьИсходников, "*", Истина);
	МассивФайлов   = Новый Массив;
	
	МассивИсключаемыхРасширений = Новый Массив;
	МассивИсключаемыхРасширений.Добавить(".bin");
	МассивИсключаемыхРасширений.Добавить(".addin");
	МассивИсключаемыхРасширений.Добавить(".dll");
	МассивИсключаемыхРасширений.Добавить(".so");
	МассивИсключаемыхРасширений.Добавить(".exe");
	МассивИсключаемыхРасширений.Добавить(".zip");

	Для Каждого ФайлПроекта Из ВсеФайлы Цикл

		Признак = 
			СтрНайти(ФайлПроекта.ПолноеИмя, "cli\data") = 0
			И СтрНайти(ФайлПроекта.ПолноеИмя, "cli/data") = 0
			И Не ФайлПроекта.ЭтоКаталог();

		Для Каждого Расширение Из МассивИсключаемыхРасширений Цикл

			Если ФайлПроекта.Расширение = Расширение Тогда
				Признак = Ложь;
				Прервать;
			КонецЕсли;

		КонецЦикла;

		Если Признак Тогда
			МассивФайлов.Добавить(ФайлПроекта);
		КонецЕсли;

	КонецЦикла;

	Возврат МассивФайлов;

КонецФункции

Функция ОпределитьНаборФайловФорматирования()
	
	// Наборы файлов
	ВсеФайлы     = НайтиФайлы(Корень, "*", Истина);
	МассивФайлов = Новый Массив;
	
	Для Каждого ФайлПроекта Из ВсеФайлы Цикл

		Признак =
			(ФайлПроекта.Расширение = ".os"
			Или ФайлПроекта.Расширение = ".bsl")
			И СтрНайти(ФайлПроекта.ПолноеИмя, "cli/") = 0
			И СтрНайти(ФайлПроекта.ПолноеИмя, "cli\") = 0;

		Если Признак Тогда
			МассивФайлов.Добавить(ФайлПроекта);
		КонецЕсли;

	КонецЦикла;

	Возврат МассивФайлов;

КонецФункции

Функция ОпределитьНаборФайловПеревода()
	
	// Наборы файлов
	ВсеФайлы     = НайтиФайлы(ОсновнойПутьИсходников, "*", Истина);
	МассивФайлов = Новый Массив;
	
	Для Каждого ФайлПроекта Из ВсеФайлы Цикл

		Признак = СтрНайти(ФайлПроекта.ПолноеИмя, "cli") = 0;

		Если Признак Тогда
			МассивФайлов.Добавить(ФайлПроекта);
		КонецЕсли;

	КонецЦикла;

	Возврат МассивФайлов;

КонецФункции

ПриСозданииОбъекта();
ОсновнаяОбработка();
