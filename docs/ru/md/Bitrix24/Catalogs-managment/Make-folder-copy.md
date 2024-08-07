﻿---
sidebar_position: 3
---

# Скопировать каталог
 Копирует один каталог в другой



`Функция СкопироватьКаталог(Знач URL, Знач IDКаталога, Знач IDПриемника, Знач Токен = "") Экспорт`

  | Параметр | CLI опция | Тип | Назначение |
  |-|-|-|-|
  | URL | --url | Строка | URL внешнего вебхука или адрес Bitrix24 при использовании токена |
  | IDКаталога | --folderid | Строка, Число | Идентификатор каталога |
  | IDПриемника | --tagetid | Строка, Число | ID каталога назначения |
  | Токен | --token | Строка | Токен авторизации, если используется не вебхук |

  
  Возвращаемое значение:   Соответствие Из КлючИЗначение - сериализованный JSON ответа от Bitrxi24

<br/>

:::tip
Метод в документации API: [disk.folder.copyto](https://dev.1c-bitrix.ru/rest_help/disk/folder/disk_folder_copyto.php)
:::
<br/>


```bsl title="Пример кода"
  IDПриемника = "3280";
  IDКаталога  = "3282";
  
  URL = "https://b24-ar17wx.bitrix24.by/rest/1/4swokunb3tk7h7dt/";
  
  Результат = OPI_Bitrix24.СкопироватьКаталог(URL, IDКаталога, IDПриемника);
  
  
  IDПриемника = "3282";
  IDКаталога  = "3280";
  
  URL   = "b24-ar17wx.bitrix24.by";
  Токен = "adf89366006e9f06006b12e400000001000...";
  
  Результат = OPI_Bitrix24.СкопироватьКаталог(URL, IDКаталога, IDПриемника, Токен);
  
  Проверка_БитриксОбъект(Результат);
```
	


```sh title="Пример команды CLI"
    
  oint bitrix24 СкопироватьКаталог --url "b24-ar17wx.bitrix24.by" --folderid "2492" --tagetid "2494" --token "56898d66006e9f06006b12e400000001000..."

```

```json title="Результат"
{
 "result": {
  "ID": 1732,
  "NAME": "Новый подкаталог 2",
  "CODE": null,
  "STORAGE_ID": "3",
  "TYPE": "folder",
  "REAL_OBJECT_ID": 1732,
  "PARENT_ID": "1726",
  "DELETED_TYPE": 0,
  "CREATE_TIME": "2024-07-03T14:42:46+00:00",
  "UPDATE_TIME": "2024-07-03T14:42:46+00:00",
  "DELETE_TIME": null,
  "CREATED_BY": "1",
  "UPDATED_BY": "1",
  "DELETED_BY": null,
  "DETAIL_URL": "https://b24-ar17wx.bitrix24.by/docs/path/Новый каталог/Новый подкаталог/Новый подкаталог 2"
 },
 "time": {
  "start": 1720017765.97028,
  "finish": 1720017766.08005,
  "duration": 0.109767913818359,
  "processing": 0.0799601078033447,
  "date_start": "2024-07-03T14:42:45+00:00",
  "date_finish": "2024-07-03T14:42:46+00:00",
  "operating_reset_at": 1720018366,
  "operating": 0
 }
}
```
