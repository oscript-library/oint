﻿---
sidebar_position: 2
---

# Получить список файлов папки
 Получает список первых файлов каталога или продолжает получение следующих при указании курсора


*Функция ПолучитьСписокФайловПапки(Знач Токен, Знач Путь = "", Знач Подробно = Ложь, Знач Курсор = "") Экспорт*

  | Параметр | CLI опция | Тип | Назначение |
  |-|-|-|-|
  | Токен | --token | Строка | Токен |
  | Путь | --path | Строка | Путь к каталогу. Необязателен, если указан курсор |
  | Подробно | --detail | Булево | Добавляет дополнительные поля информации для медиафайлов |
  | Курсор | --cursor | Строка | Курсор из предыдущего запроса для получения следующего набора файлов |

  
  Вовзращаемое значение:   HTTPОтвет - Получить список файлов папки

```bsl title="Пример кода"
	
    Путь      = "/New";  
    Токен     = "sl.B2BrYIsNrnf_h8d1VSt-ilH_LEUuySQXhbDb51qh3chXboh4PF5ZjVKK-fmicHuGMHS8iZ3_6e...";
     
    Результат = OPI_Dropbox.ПолучитьСписокФайловПапки(Токен, Путь, Истина);

	
```

```sh title="Пример команд CLI"
    
  oint dropbox ПолучитьСписокФайловПапки --token "sl.B2BrYIsNrnf_h8d1VSt-ilH_LEUuySQXhbDb51qh3chXboh4PF5ZjVKK-fmicHuGMHS8iZ3_6e..." --path %path% --detail %detail% --cursor %cursor%

```


```json title="Результат"



```