﻿---
sidebar_position: 4
---

# Написать комментарий
 Создает комментарий под выбранной записью



`Функция НаписатьКомментарий(Знач IDПоста, Знач IDСтены, Знач Текст, Знач Параметры = "") Экспорт`

  | Параметр | CLI опция | Тип | Назначение |
  |-|-|-|-|
  | IDПоста | --post | Строка,Число | ID целевого поста |
  | IDСтены | --wall | Строка,Число | ID стены расположения поста |
  | Текст | --text | Строка | Текст комментария |
  | Параметры | --auth | Структура из Строка | JSON авторизации или путь к .json |

  
  Возвращаемое значение:   Соответствие Из КлючИЗначение - сериализованный JSON ответа от VK

<br/>




```bsl title="Пример кода"
  
  Ответ = OPI_VK.НаписатьКомментарий(221, -218861756, "Привет", Параметры);
  Ответ = OPI_Инструменты.JSONСтрокой(Ответ);
```
	


```sh title="Пример команды CLI"
    
  oint vk НаписатьКомментарий --post %post% --wall %wall% --text %text% --auth %auth%

```

```json title="Результат"
{
  "response": {
  "parents_stack": [],
  "comment_id": 229
  }
  }
```
