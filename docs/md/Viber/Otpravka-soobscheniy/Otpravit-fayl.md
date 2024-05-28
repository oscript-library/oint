﻿---
sidebar_position: 3
---

# Отправить файл
 Отправляет файл (документ) в чат или канал


*Функция ОтправитьФайл(Знач Токен, Знач URL, Знач IDПользователя, Знач ОтправкаВКанал, Знач Расширение, Знач Размер = "") Экспорт*

  | Параметр | CLI опция | Тип | Назначение |
  |-|-|-|-|
  | Токен | --token | Строка | Токен |
  | URL | --file | Строка | URL файла |
  | IDПользователя | --user | Строка,Число | ID пользователя. Для канала > администратора, для бота > получателя |
  | ОтправкаВКанал | --ischannel | Булево | Отправка в канал или в чат бота |
  | Расширение | --ext | Строка | Расширение файла |
  | Размер | --size | Число | Размер файла. Если не заполнен > определяется автоматически скачиванием файла |

  
  Вовзращаемое значение:   Соответствие Из КлючИЗначение - сериализованный JSON ответа от Viber

```bsl title="Пример кода"
	

	
```

```sh title="Пример команд CLI"
    
  oint viber ОтправитьФайл --token %token% --file %file% --user %user% --ischannel %ischannel% --ext %ext% --size %size%

```


```json title="Результат"



```