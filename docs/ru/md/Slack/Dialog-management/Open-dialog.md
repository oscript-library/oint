﻿---
sidebar_position: 1
---

# Открыть диалог
 Открывает новый диалог с одним или несколькими пользователями



`Функция ОткрытьДиалог(Знач Токен, Знач МассивПользователей) Экспорт`

  | Параметр | CLI опция | Тип | Назначение |
  |-|-|-|-|
  | Токен | --token | Строка | Токен бота |
  | МассивПользователей | --users | Массив из Строка | Массив ID пользователей |

  
  Возвращаемое значение:   Соответствие Из КлючИЗначение - сериализованный JSON ответа от Slack

<br/>




```bsl title="Пример кода"
  
  МассивПользователей = Новый Массив;
  МассивПользователей.Добавить("U123456");
  МассивПользователей.Добавить("U654321");
  
  Ответ = OPI_Slack.ОткрытьДиалог(Токен, МассивПользователей); //Соответствие
  Ответ = OPI_Инструменты.JSONСтрокой(Ответ);                  //JSON строка
```
	


```sh title="Пример команды CLI"
    
  oint slack ОткрытьДиалог --token %token% --users %users%

```

```json title="Результат"
{
  "ok": true,
  "no_op": false,
  "already_open": false,
  "channel": {
  "id": "D06UAKK1C6R"
  }
  }
```
