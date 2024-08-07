﻿---
sidebar_position: 7
---

# Mark message as unreaded
 Mark current and all messages after as unreaded



`Function MarkMessageAsUnreaded(Val URL, Val ChatID, Val MessageID, Val Token = "") Export`

 | Parameter | CLI option | Type | Destination |
 |-|-|-|-|
 | URL | --url | String | URL of webhook or a Bitrix24 domain, when token used |
 | ChatID | --chat | String, Number | Chat ID (as chatXXX) or User ID (as XXX) |
 | MessageID | --message | String, Number | ID of last unreaded message |
 | Token | --token | String | Access token, when app auth method used |

 
 Returns: Map Of KeyAndValue - serialized JSON of answer from Bitrix24 API

<br/>

:::tip
Method at API documentation: [im.dialog.unread](https://dev.1c-bitrix.ru/learning/course/?COURSE_ID=93&LESSON_ID=12055)
:::
<br/>


```bsl title="Code example"
 URL = "https://b24-ar17wx.bitrix24.by/rest/1/4swokunb3tk7h7dt/";
 ChatID = "chat" + "264";
 MessageID = "5506";
 
 Result = OPI_Bitrix24.MarkMessageAsUnreaded(URL, ChatID, MessageID);
 
 
 URL = "b24-ar17wx.bitrix24.by";
 Token = "adf89366006e9f06006b12e400000001000...";
 UserID = 10;
 MessageID = "5508";
 
 Result = OPI_Bitrix24.MarkMessageAsUnreaded(URL, UserID, MessageID, Token);
```
	


```sh title="CLI command example"
 
 oint bitrix24 MarkMessageAsUnreaded --url %url% --chat %chat% --message %message% --token %token%

```

```json title="Result"
{
 "result": true,
 "time": {
 "start": 1720969158.8803,
 "finish": 1720969158.91584,
 "duration": 0.035538911819458,
 "processing": 0.0112378597259521,
 "date_start": "2024-07-14T14:59:18+00:00",
 "date_finish": "2024-07-14T14:59:18+00:00",
 "operating_reset_at": 1720969758,
 "operating": 0
 }
}
```
