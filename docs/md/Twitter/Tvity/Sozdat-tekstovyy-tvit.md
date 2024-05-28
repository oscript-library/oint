﻿---
sidebar_position: 2
---

# Создать текстовый твит
 Создает твит без вложений


*Функция СоздатьТекстовыйТвит(Знач Текст, Знач Параметры = "") ЭкспортВозврат СоздатьПроизвольныйТвит(Текст, , , , Параметры);КонецФункции*

  | Параметр | CLI опция | Тип | Назначение |
  |-|-|-|-|
  | Текст | --text | Строка | Текст твита |
  | Параметры | --auth | Структура из Строка | JSON авторизации или путь к .json |

  
  Вовзращаемое значение:   Соответствие Из КлючИЗначение - сериализованный JSON ответа от Twitter

```bsl title="Пример кода"
	

	
```

```sh title="Пример команд CLI"
    
  oint twitter СоздатьТекстовыйТвит --text %text% --auth %auth%

```


```json title="Результат"



```