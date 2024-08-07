﻿---
sidebar_position: 4
---

# Изменить комментарий задачи
 Изменяет текст комментария задачи



`Функция ИзменитьКомментарийЗадачи(Знач URL, Знач IDЗадачи, Знач IDКомментария, Знач Текст, Знач Токен = "") Экспорт`

  | Параметр | CLI опция | Тип | Назначение |
  |-|-|-|-|
  | URL | --url | Строка | URL внешнего вебхука или адрес Bitrix24 при использовании токена |
  | IDЗадачи | --task | Число, Строка | ID задачи |
  | IDКомментария | --comment | Число, Строка | ID комментария |
  | Текст | --text | Строка | Текст комментария |
  | Токен | --token | Строка | Токен авторизации, если используется не вебхук |

  
  Возвращаемое значение:   Соответствие Из КлючИЗначение - сериализованный JSON ответа от Bitrxi24

<br/>

:::tip
Метод в документации API: [task.commentitem.update](https://dev.1c-bitrix.ru/rest_help/tasks/task/commentitem/update.php)
:::
<br/>


```bsl title="Пример кода"
  URL           = "https://b24-ar17wx.bitrix24.by/rest/1/4swokunb3tk7h7dt/";
  IDЗадачи      = "724";
  IDКомментария = "2264";
  
  Текст     = "Задача изменена, не расходимся";
  
  Результат = OPI_Bitrix24.ИзменитьКомментарийЗадачи(URL, IDЗадачи, IDКомментария, Текст);
  
  
  URL           = "b24-ar17wx.bitrix24.by";
  Токен         = "adf89366006e9f06006b12e400000001000...";
  IDКомментария = "2266";
  
  Текст     = "Задача изменена, расходимся";
  
  Результат = OPI_Bitrix24.ИзменитьКомментарийЗадачи(URL, IDЗадачи, IDКомментария, Текст, Токен);
```
	


```sh title="Пример команды CLI"
    
  oint bitrix24 ИзменитьКомментарийЗадачи --url "b24-ar17wx.bitrix24.by" --task "504" --comment "1720" --text %text% --token "56898d66006e9f06006b12e400000001000..."

```

```json title="Результат"
{
 "result": true,
 "time": {
  "start": 1720186705.11133,
  "finish": 1720186705.21965,
  "duration": 0.108311891555786,
  "processing": 0.0788998603820801,
  "date_start": "2024-07-05T13:38:25+00:00",
  "date_finish": "2024-07-05T13:38:25+00:00",
  "operating_reset_at": 1720187305,
  "operating": 0
 }
}
```
