﻿---
sidebar_position: 6
---

# Создать каталог в хранилище
 Создает пустой каталог в хранилище



`Функция СоздатьКаталогВХранилище(Знач URL, Знач IDХранилища, Знач Наименование, Знач Токен = "") Экспорт`

  | Параметр | CLI опция | Тип | Назначение |
  |-|-|-|-|
  | URL | --url | Строка | URL внешнего вебхука или адрес Bitrix24 при использовании токена |
  | IDХранилища | --storageid | Строка | Идентификатор хранилища |
  | Наименование | --title | Строка | Имя каталога |
  | Токен | --token | Строка | Токен авторизации, если используется не вебхук |

  
  Возвращаемое значение:   Соответствие Из КлючИЗначение - сериализованный JSON ответа от Bitrxi24

<br/>

:::tip
Метод в документации API: [disk.storage.addfolder](https://dev.1c-bitrix.ru/rest_help/disk/storage/disk_storage_addfolder.php)
:::
<br/>


```bsl title="Пример кода"
  IDХранилища   = 3;
  Наименование  = "Новый каталог";
  Наименование2 = "Новый каталог 2";
  
  URL = "https://b24-ar17wx.bitrix24.by/rest/1/4swokunb3tk7h7dt/";
  
  Результат = OPI_Bitrix24.СоздатьКаталогВХранилище(URL, IDХранилища, Наименование2);
  
  
  
  URL   = "b24-ar17wx.bitrix24.by";
  Токен = "adf89366006e9f06006b12e400000001000...";
  
  Результат = OPI_Bitrix24.СоздатьКаталогВХранилище(URL, IDХранилища, Наименование, Токен);
```
	


```sh title="Пример команды CLI"
    
  oint bitrix24 СоздатьКаталогВХранилище --url "b24-ar17wx.bitrix24.by" --storageid %storageid% --title %title% --token "b9df7366006e9f06006b12e400000001000..."

```

```json title="Результат"
{
 "result": {
  "ID": 574,
  "NAME": "Новый каталог",
  "CODE": null,
  "STORAGE_ID": "3",
  "TYPE": "folder",
  "REAL_OBJECT_ID": 574,
  "PARENT_ID": "3",
  "DELETED_TYPE": 0,
  "CREATE_TIME": "2024-06-22T09:07:36+00:00",
  "UPDATE_TIME": "2024-06-22T09:07:36+00:00",
  "DELETE_TIME": null,
  "CREATED_BY": "1",
  "UPDATED_BY": "1",
  "DELETED_BY": null,
  "DETAIL_URL": "https://b24-ar17wx.bitrix24.by/docs/path/Новый каталог"
 },
 "time": {
  "start": 1719047256.22025,
  "finish": 1719047256.27758,
  "duration": 0.057330846786499,
  "processing": 0.0276291370391846,
  "date_start": "2024-06-22T09:07:36+00:00",
  "date_finish": "2024-06-22T09:07:36+00:00",
  "operating_reset_at": 1719047856,
  "operating": 0
 }
}
```
