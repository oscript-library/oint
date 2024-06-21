﻿---
sidebar_position: 3
---

# Получить хранилище
 Получает информацию о хранилище по ID


*Функция ПолучитьХранилище(Знач URL, Знач IDХранилища, Знач Токен = "") Экспорт*

  | Параметр | CLI опция | Тип | Назначение |
  |-|-|-|-|
  | URL | --url | Строка | URL внешнего вебхука или адрес Bitrix24 при использовании токена |
  | IDХранилища | --storageid | Строка, Число | Идентификатор хранилища |
  | Токен | --token | Строка | Токен авторизации, если используется не вебхук |

  
  Возвращаемое значение:   Соответствие Из КлючИЗначение - сериализованный JSON ответа от Bitrxi24

```bsl title="Пример кода"
	
  URL         = "https://b24-ar17wx.bitrix24.by/rest/1/4swokunb3tk7h7dt/";
  IDХранилища = 3;
  
  Результат = OPI_Bitrix24.ПолучитьХранилище(URL, IDХранилища);
  
  
  URL         = "b24-ar17wx.bitrix24.by";
  Токен       = "b9df7366006e9f06006b12e400000001000...";
  
  Результат = OPI_Bitrix24.ПолучитьХранилище(URL, IDХранилища, Токен);
	
```

```sh title="Пример команды CLI"
    
  oint bitrix24 ПолучитьХранилище --url "b24-ar17wx.bitrix24.by" --storageid %storageid% --token "b9df7366006e9f06006b12e400000001000..."

```


```json title="Результат"



```