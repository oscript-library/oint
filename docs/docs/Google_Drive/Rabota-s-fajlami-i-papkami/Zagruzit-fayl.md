---
sidebar_position: 4
---

# Загрузить файл
Загружает двоичные данные файла на Google Drive

*Функция ЗагрузитьФайл(Знач Токен, Знач Файл, Знач Описание) Экспорт*

  | Параметр | Тип | Назначение |
  |-|-|-|
  | Токен | Строка | Токен доступа |
  | Файл | ДвоичныеДанные,Строка | Двоичные данные или путь к файлу |
  | Описание | Соответствие | Описание файла. См. [ПолучитьОписаниеФайла](./Poluchit-opisanye-fayla) |
  
  Вовзращаемое значение: Соответствие - сериализованный JSON ответа от Google

```bsl title="Пример кода"
			
    Описание = Новый Соответствие;
    Описание.Вставить("MIME"        , "image/jpeg");
    Описание.Вставить("Имя"         , "Новый файл.jpg");
    Описание.Вставить("Описание"    , "Это новый файл");
    Описание.Вставить("Родитель"    , "root");

    Картинка = "C:\OPI\image.jpg";
 
    Ответ = OPI_GoogleDrive.ЗагрузитьФайл(Токен, Картинка, Описание);  //Соответствие
    Ответ = OPI_Инструменты.JSONСтрокой(Ответ);                                        //Строка

```

![Результат](img/1.png)

```json title="Результат"

{
 "mimeType": "image/jpeg",
 "name": "Новый файл.jpg",
 "id": "16hPGNTMmbnXhz_g0vjGbrLP19h56RwIg",
 "kind": "drive#file"
}

```