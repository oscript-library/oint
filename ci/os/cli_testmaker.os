#Использовать "../../src/ru/cli/data"

Перем Версия;
Перем ТекущийФайл;
Перем ТаблицаПараметров;
Перем Модули;

#Область Основа

Процедура ПриСозданииОбъекта()

	ТекущийСоставБиблиотеки = Новый СоставБиблиотеки();

	ТаблицаПараметров = ТекущийСоставБиблиотеки.ПолучитьПолныйСостав();
	Версия            = ТекущийСоставБиблиотеки.ПолучитьВерсию();
	Модули            = ТекущийСоставБиблиотеки.ПолучитьСоответствиеКомандМодулей();

	СоздатьОсновнойФайл();

КонецПроцедуры

Процедура СоздатьОсновнойФайл()

	ТекущийФайл = Новый ТекстовыйДокумент();

	СформироватьОпределения();
	СформироватьПроцесс();

	Текст = ТекущийФайл.ПолучитьТекст();
	ПолучитьДвоичныеДанныеИзСтроки(Текст).Записать("./ci/clitestru");

КонецПроцедуры

#КонецОбласти

#Область ФормированиеФайлов

Процедура СформироватьПроцесс()

	Язык = "ru";

	ТекущийФайл.ДобавитьСтроку(
	"pipeline {
	|   agent any
	|   stages {
	|      stage('Prepare'){
	|         steps{
	|            powershell encoding: 'UTF-8', script:'cd ./src/" + Язык + "/OInt; opm build; opm install oint-1.17.0.ospx; del oint-1.17.0.ospx'
	|            powershell encoding: 'UTF-8', script:'oscript -make ./src/" + Язык + "/cli/core/Classes/app.os oint.exe'          
	|         }
	|      }
	|      stage('Run'){
	|         steps{");   

	Для Каждого Модуль Из Модули Цикл

		ТекущийФайл.ДобавитьСтроку("test_" + Модуль.Ключ + "()");

	КонецЦикла;

	ТекущийФайл.ДобавитьСтроку("
	|         }
	|      }
	|   }
	|}
	|
	|");

КонецПроцедуры

Процедура СформироватьОпределения()
	
	Язык = "ru";

	ТекстРаботы = "
	|pipeline {
	|   agent any
	|   	stages {
	|          stage('Prepare'){
	|             steps{
	|                powershell encoding: 'UTF-8', script:'cd ./src/" + Язык + "/OInt; opm build; opm install oint-1.17.0.ospx; del oint-1.17.0.ospx'
	|                powershell encoding: 'UTF-8', script:'oscript -make ./src/" + Язык + "/cli/core/Classes/app.os oint.exe'          
	|             }
	|          }
	|          stage('Run Tests') {
    |             parallel {
	|";

	Для Каждого Модуль Из Модули Цикл

		ТекущаяКоманда = Модуль.Ключ;

		ТекстРаботы = ТекстРаботы + "
	    |          stage('" + ТекущаяКоманда + "'){
	    |             steps{
		|                test_" + ТекущаяКоманда + "()
		|             }
		|          }";

	КонецЦикла;
	
	ТекстРаботы = ТекстРаботы + "
	|   } 
	|  }    
	| }
	|}
	|";

	ТекущийФайл.ДобавитьСтроку(ТекстРаботы);

	Для Каждого Модуль Из Модули Цикл

		ТекущаяКоманда = Модуль.Ключ;

		ТекстФункции = "
		|
		|def test_" + ТекущаяКоманда + "(){
		|					
		|";

		Отбор            = Новый Структура("Библиотека", ТекущаяКоманда);
		СтрокиБиблиотеки = ТаблицаПараметров.НайтиСтроки(Отбор);
		ТекущийМетод     = "";

		Для Каждого СтрокаПараметра Из СтрокиБиблиотеки Цикл

			Если ТекущийМетод <> СтрокаПараметра.Метод Тогда

				ТекущийМетод  = СтрокаПараметра.Метод;
				СтрокаЗапуска = ТекущийМетод;
				Отбор.Вставить("Метод", ТекущийМетод);	

				СтрокиМетода = ТаблицаПараметров.НайтиСтроки(Отбор);

				Для Каждого СтрокаМетода Из СтрокиМетода Цикл
					СтрокаЗапуска = СтрокаЗапуска 
						+ " "
						+ СтрокаМетода.Параметр
						+ " ""test"""
				КонецЦикла;

				ТекстФункции = ТекстФункции + "
				|               catchError(buildResult: 'FAILURE', stageResult: 'FAILURE') {   
				|					powershell encoding: 'UTF-8', script:'./oint.exe " + ТекущаяКоманда + " " + СтрокаЗапуска + " --debug --test '
				|               }
				|";

			КонецЕсли;

		КонецЦикла;

		ТекстФункции = ТекстФункции + "
		|}
		|";


		ТекущийФайл.ДобавитьСтроку(ТекстФункции);

	КонецЦикла;

КонецПроцедуры

#КонецОбласти