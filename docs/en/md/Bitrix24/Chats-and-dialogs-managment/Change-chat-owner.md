﻿---
sidebar_position: 9
---

# Change chat owner
 Change chat owner



`Function ChangeChatOwner(Val URL, Val ChatID, Val UserID, Val Token = "") Export`

 | Parameter | CLI option | Type | Destination |
 |-|-|-|-|
 | URL | --url | String | URL of webhook or a Bitrix24 domain, when token used |
 | ChatID | --chat | String, Number | Chat ID |
 | UserID | --user | String, Number | User ID |
 | Token | --token | String | Access token, when app auth method used |

 
 Returns: Map Of KeyAndValue - serialized JSON of answer from Bitrix24 API

<br/>

:::tip
Method at API documentation: [im.chat.setOwner](https://dev.1c-bitrix.ru/learning/course/?COURSE_ID=93&LESSON_ID=12111)
:::
<br/>


```bsl title="Code example"
 URL = "https://b24-ar17wx.bitrix24.by/rest/1/4swokunb3tk7h7dt/";
 ChatID = "264";
 
 UserID = 10;
 
 Result = OPI_Bitrix24.ChangeChatOwner(URL, ChatID, UserID);
 
 
 URL = "b24-ar17wx.bitrix24.by";
 Token = "adf89366006e9f06006b12e400000001000...";
 ChatID = "266";
 
 Result = OPI_Bitrix24.ChangeChatOwner(URL, ChatID, UserID, Token);
```
	


```sh title="CLI command example"
 
 oint bitrix24 ChangeChatOwner --url %url% --chat %chat% --user %user% --token %token%

```

```json title="Result"
{
 "result": true,
 "time": {
 "start": 1720865697.10595,
 "finish": 1720865697.13924,
 "duration": 0.0332820415496826,
 "processing": 0.0104668140411377,
 "date_start": "2024-07-13T10:14:57+00:00",
 "date_finish": "2024-07-13T10:14:57+00:00",
 "operating_reset_at": 1720866297,
 "operating": 0
 }
}
```
