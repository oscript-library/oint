﻿---
sidebar_position: 4
---

# Отправить контакт
 Отправляет контакт с номером телефона в чат или канал



`Функция ОтправитьКонтакт(Знач Токен, Знач ИмяКонтакта, Знач НомерТелефона, Знач IDПользователя, Знач ОтправкаВКанал) Экспорт`

  | Параметр | CLI опция | Тип | Назначение |
  |-|-|-|-|
  | Токен | --token | Строка | Токен |
  | ИмяКонтакта | --name | Строка | Имя контакта |
  | НомерТелефона | --phone | Строка | Номер телефона |
  | IDПользователя | --user | Строка,Число | ID пользователя. Для канала > администратора, для бота > получателя |
  | ОтправкаВКанал | --ischannel | Булево | Отправка в канал или в чат бота |

  
  Возвращаемое значение:   Соответствие Из КлючИЗначение - сериализованный JSON ответа от Viber

<br/>




```bsl title="Пример кода"
  
  ТокенБота      = "523b5b25ed27e6ec-111111111111111-2222222222222222";
  IDПользователя = "d3jxe1111111111jYGgZg==";
  
  Ответ = OPI_Viber.ОтправитьКонтакт(ТокенБота, "Пётр Петров", "+749521231", IDПользователя, Ложь); //Соответствие
  Ответ = OPI_Инструменты.JSONСтрокой(Ответ);                                                       //JSON строка
```
	


```sh title="Пример команды CLI"
    
  oint viber ОтправитьКонтакт --token %token% --name %name% --phone %phone% --user "d3jxe1111111111jYGgZg" --ischannel %ischannel%

```

```json title="Результат"
{
  "billing_status": 1,
  "chat_hostname": "SN-CHAT-15_",
  "message_token": 5925747984748149627,
  "status_message": "ok",
  "status": 0
  }
```
