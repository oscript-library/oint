---
sidebar_position: 1
---

# Получить статистику
Получает общую статистику сообщества за период

*Функция ПолучитьСтатистику(Знач ДатаНачала, Знач ДатаОкончания, Знач Параметры = "") Экспорт*

  | Параметр | CLI опция | Тип | Назначение |
  |-|-|-|-|
  | ДатаНачала | --datefrom | Дата | Начало периода получения статистики |
  | ДатаОкончания | --dateto | Дата | Окончание периода получения статистики |
  | Параметры | --auth | Структура (необяз.) | Параметры / перезапись стандартных параметров (см. [Получение необходимых данных](../)) |
  
  Вовзращаемое значение: Соответствие - сериализованный JSON ответа от VK

```bsl title="Пример кода"
	
	Ответ = OPI_VK.ПолучитьСтатистику(ТекущаяДатаСеанса() - 60 * 60 * 24, ТекущаяДатаСеанса(), Параметры);
	Ответ = OPI_Инструменты.JSONСтрокой(Ответ);

```

```sh title="Пример команд CLI"

    oint vk ПолучитьСтатистику --datefrom "2024-01-14T12:48:17+03:00" --dateto "2024-04-14T12:48:17+03:00" --auth C:\auth.json

```

```json title="Результат"

{
 "response": [
  {
   "visitors": {
    "views": 8,
    "sex_age": [
     {
      "count": 0,
      "value": "f;12-18"
     },
     {
      "count": 0,
      "value": "f;18-21"
     },
     {
      "count": 0,
      "value": "f;21-24"
     },
     {
      "count": 0,
      "value": "f;24-27"
     },
     {
      "count": 0,
      "value": "f;27-30"
     },
     {
      "count": 0,
      "value": "f;30-35"
     },
     {
      "count": 0,
      "value": "f;35-45"
     },
     {
      "count": 0,
      "value": "f;45-100"
     },
     {
      "count": 0,
      "value": "m;12-18"
     },
     {
      "count": 0,
      "value": "m;18-21"
     },
     {
      "count": 1,
      "value": "m;21-24"
     },
     {
      "count": 0,
      "value": "m;24-27"
     },
     {
      "count": 0,
      "value": "m;27-30"
     },
     {
      "count": 0,
      "value": "m;30-35"
     },
     {
      "count": 0,
      "value": "m;35-45"
     },
     {
      "count": 0,
      "value": "m;45-100"
     }
    ],
    "sex": [
     {
      "count": 0,
      "value": "f"
     },
     {
      "count": 1,
      "value": "m"
     }
    ],
    "mobile_views": 0,
    "countries": [
     {
      "value": 3,
      "name": "Беларусь",
      "count": 1,
      "code": "BY"
     }
    ],
    "visitors": 1,
    "cities": [],
    "age": [
     {
      "count": 0,
      "value": "12-18"
     },
     {
      "count": 0,
      "value": "18-21"
     },
     {
      "count": 1,
      "value": "21-24"
     },
     {
      "count": 0,
      "value": "24-27"
     },
     {
      "count": 0,
      "value": "27-30"
     },
     {
      "count": 0,
      "value": "30-35"
     },
     {
      "count": 0,
      "value": "35-45"
     },
     {
      "count": 0,
      "value": "45-100"
     }
    ]
   },
   "reach": {
    "sex_age": [
     {
      "count": 0,
      "value": "f;12-18"
     },
     {
      "count": 0,
      "value": "f;18-21"
     },
     {
      "count": 0,
      "value": "f;21-24"
     },
     {
      "count": 0,
      "value": "f;24-27"
     },
     {
      "count": 0,
      "value": "f;27-30"
     },
     {
      "count": 0,
      "value": "f;30-35"
     },
     {
      "count": 0,
      "value": "f;35-45"
     },
     {
      "count": 0,
      "value": "f;45-100"
     },
     {
      "count": 0,
      "value": "m;12-18"
     },
     {
      "count": 0,
      "value": "m;18-21"
     },
     {
      "count": 1,
      "value": "m;21-24"
     },
     {
      "count": 0,
      "value": "m;24-27"
     },
     {
      "count": 0,
      "value": "m;27-30"
     },
     {
      "count": 0,
      "value": "m;30-35"
     },
     {
      "count": 0,
      "value": "m;35-45"
     },
     {
      "count": 0,
      "value": "m;45-100"
     }
    ],
    "sex": [
     {
      "count": 0,
      "value": "f"
     },
     {
      "count": 1,
      "value": "m"
     }
    ],
    "reach": 1,
    "mobile_reach": 0,
    "countries": [
     {
      "value": 3,
      "name": "Беларусь",
      "count": 1,
      "code": "BY"
     }
    ],
    "reach_subscribers": 1,
    "cities": [],
    "age": [
     {
      "count": 0,
      "value": "12-18"
     },
     {
      "count": 0,
      "value": "18-21"
     },
     {
      "count": 1,
      "value": "21-24"
     },
     {
      "count": 0,
      "value": "24-27"
     },
     {
      "count": 0,
      "value": "27-30"
     },
     {
      "count": 0,
      "value": "30-35"
     },
     {
      "count": 0,
      "value": "35-45"
     },
     {
      "count": 0,
      "value": "45-100"
     }
    ]
   },
   "period_to": 1704671999,
   "period_from": 1704585600
  },
  {
   "visitors": {
    "views": 3,
    "sex_age": [
     {
      "count": 0,
      "value": "f;12-18"
     },
     {
      "count": 0,
      "value": "f;18-21"
     },
     {
      "count": 0,
      "value": "f;21-24"
     },
     {
      "count": 0,
      "value": "f;24-27"
     },
     {
      "count": 0,
      "value": "f;27-30"
     },
     {
      "count": 0,
      "value": "f;30-35"
     },
     {
      "count": 0,
      "value": "f;35-45"
     },
     {
      "count": 0,
      "value": "f;45-100"
     },
     {
      "count": 0,
      "value": "m;12-18"
     },
     {
      "count": 0,
      "value": "m;18-21"
     },
     {
      "count": 1,
      "value": "m;21-24"
     },
     {
      "count": 0,
      "value": "m;24-27"
     },
     {
      "count": 0,
      "value": "m;27-30"
     },
     {
      "count": 0,
      "value": "m;30-35"
     },
     {
      "count": 0,
      "value": "m;35-45"
     },
     {
      "count": 0,
      "value": "m;45-100"
     }
    ],
    "sex": [
     {
      "count": 0,
      "value": "f"
     },
     {
      "count": 1,
      "value": "m"
     }
    ],
    "mobile_views": 0,
    "countries": [
     {
      "value": 3,
      "name": "Беларусь",
      "count": 1,
      "code": "BY"
     }
    ],
    "visitors": 1,
    "cities": [],
    "age": [
     {
      "count": 0,
      "value": "12-18"
     },
     {
      "count": 0,
      "value": "18-21"
     },
     {
      "count": 1,
      "value": "21-24"
     },
     {
      "count": 0,
      "value": "24-27"
     },
     {
      "count": 0,
      "value": "27-30"
     },
     {
      "count": 0,
      "value": "30-35"
     },
     {
      "count": 0,
      "value": "35-45"
     },
     {
      "count": 0,
      "value": "45-100"
     }
    ]
   },
   "reach": {
    "sex_age": [
     {
      "count": 0,
      "value": "f;12-18"
     },
     {
      "count": 0,
      "value": "f;18-21"
     },
     {
      "count": 0,
      "value": "f;21-24"
     },
     {
      "count": 0,
      "value": "f;24-27"
     },
     {
      "count": 0,
      "value": "f;27-30"
     },
     {
      "count": 0,
      "value": "f;30-35"
     },
     {
      "count": 0,
      "value": "f;35-45"
     },
     {
      "count": 0,
      "value": "f;45-100"
     },
     {
      "count": 0,
      "value": "m;12-18"
     },
     {
      "count": 0,
      "value": "m;18-21"
     },
     {
      "count": 1,
      "value": "m;21-24"
     },
     {
      "count": 0,
      "value": "m;24-27"
     },
     {
      "count": 0,
      "value": "m;27-30"
     },
     {
      "count": 0,
      "value": "m;30-35"
     },
     {
      "count": 0,
      "value": "m;35-45"
     },
     {
      "count": 0,
      "value": "m;45-100"
     }
    ],
    "sex": [
     {
      "count": 0,
      "value": "f"
     },
     {
      "count": 1,
      "value": "m"
     }
    ],
    "reach": 1,
    "mobile_reach": 0,
    "countries": [
     {
      "value": 3,
      "name": "Беларусь",
      "count": 1,
      "code": "BY"
     }
    ],
    "reach_subscribers": 1,
    "cities": [],
    "age": [
     {
      "count": 0,
      "value": "12-18"
     },
     {
      "count": 0,
      "value": "18-21"
     },
     {
      "count": 1,
      "value": "21-24"
     },
     {
      "count": 0,
      "value": "24-27"
     },
     {
      "count": 0,
      "value": "27-30"
     },
     {
      "count": 0,
      "value": "30-35"
     },
     {
      "count": 0,
      "value": "35-45"
     },
     {
      "count": 0,
      "value": "45-100"
     }
    ]
   },
   "period_to": 1704585599,
   "period_from": 1704499200
  }
 ]
}
```