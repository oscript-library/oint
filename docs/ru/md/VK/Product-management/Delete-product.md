﻿---
sidebar_position: 6
---

# Удалить товар
 Удаляет ранее созданный товар



`Функция УдалитьТовар(Знач Товар, Знач Параметры = "") Экспорт`

  | Параметр | CLI опция | Тип | Назначение |
  |-|-|-|-|
  | Товар | --item | Строка,Число | ID товара |
  | Параметры | --auth | Структура из Строка | JSON авторизации или путь к .json |

  
  Возвращаемое значение:   Соответствие Из КлючИЗначение - сериализованный JSON ответа от VK

<br/>




```bsl title="Пример кода"
  
  Ответ = OPI_VK.УдалитьТовар(ИДТовара, Параметры);
  Ответ = OPI_Инструменты.JSONСтрокой(Ответ);
```
	


```sh title="Пример команды CLI"
    
  oint vk УдалитьТовар --item %item% --auth %auth%

```

```json title="Результат"
{
  "response": 1
  }
```
