﻿---
sidebar_position: 9
---

# Сменить владельца чата
 Изменяет пользователя владельца чата



`Функция СменитьВладельцаЧата(Знач URL, Знач IDЧата, Знач IDПользователя, Знач Токен = "") Экспорт`

  | Параметр | CLI опция | Тип | Назначение |
  |-|-|-|-|
  | URL | --url | Строка | URL внешнего вебхука или адрес Bitrix24 при использовании токена |
  | IDЧата | --chat | Строка, Число | ID чата |
  | IDПользователя | --user | Строка, Число | ID пользователя |
  | Токен | --token | Строка | Токен авторизации, если используется не вебхук |

  
  Возвращаемое значение:   Соответствие Из КлючИЗначение - сериализованный JSON ответа от Bitrxi24

<br/>

:::tip
Метод в документации API: [im.chat.setOwner](https://dev.1c-bitrix.ru/learning/course/?COURSE_ID=93&LESSON_ID=12111)
:::
<br/>


```bsl title="Пример кода"
  URL     = "https://b24-ar17wx.bitrix24.by/rest/1/4swokunb3tk7h7dt/";
  IDЧата  = "264";
  
  IDПользователя = 10;
  
  Результат = OPI_Bitrix24.СменитьВладельцаЧата(URL, IDЧата, IDПользователя);
  
  
  URL            = "b24-ar17wx.bitrix24.by";
  Токен          = "adf89366006e9f06006b12e400000001000...";
  IDЧата         = "266";
  
  Результат = OPI_Bitrix24.СменитьВладельцаЧата(URL, IDЧата, IDПользователя, Токен);
```
	


```sh title="Пример команды CLI"
    
  oint bitrix24 СменитьВладельцаЧата --url %url% --chat %chat% --user %user% --token %token%

```

```json title="Результат"
{
 "result": true,
 "time": {
  "start": 1720865697.10595,
  "finish": 1720865697.13924,
  "duration": 0.0332820415496826,
  "processing": 0.0104668140411377,
  "date_start": "2024-07-13T10:14:57+00:00",
  "date_finish": "2024-07-13T10:14:57+00:00",
  "operating_reset_at": 1720866297,
  "operating": 0
 }
}
```
