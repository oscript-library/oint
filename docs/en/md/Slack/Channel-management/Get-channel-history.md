﻿---
sidebar_position: 6
---

# Get channel history
 Gets information about channel events



`Function GetChannelHistory(Val Token, Val Channel) Export`

 | Parameter | CLI option | Type | Destination |
 |-|-|-|-|
 | Token | --token | String | Bot token |
 | Channel | --channel | String | Channel ID |

 
 Returns: Map Of KeyAndValue - Serialized JSON response from Slack

<br/>




```bsl title="Code example"
 
 Channel = "C070VPMKN8J";
 
 Response = OPI_Slack.GetChannelHistory(Token, Channel); //Map
 Response = OPI_Tools.JSONString(Response); //JSON string
```
	


```sh title="CLI command example"
 
 oint slack GetChannelHistory --token %token% --channel "C070VPMKN8J"

```

```json title="Result"
{
 "ok": true,
 "messages": [
 {
 "subtype": "channel_join",
 "user": "U06UABH3APP",
 "text": "<@U06UABH3APP> has joined the channel",
 "inviter": "U06UG1CAYH2",
 "type": "message",
 "ts": "1714146543.286219"
 },
 {
 "subtype": "channel_purpose",
 "user": "U06UG1CAYH2",
 "purpose": "TestGoal",
 "text": "set the channel description: TestGoal",
 "type": "message",
 "ts": "1714146543.014349"
 },
 {
 "subtype": "channel_topic",
 "user": "U06UG1CAYH2",
 "topic": "TestTopic",
 "text": "set the channel topic: TestTopic",
 "type": "message",
 "ts": "1714146542.849559"
 },
 {
 "subtype": "channel_join",
 "user": "U06UG1CAYH2",
 "text": "<@U06UG1CAYH2> has joined the channel",
 "type": "message",
 "ts": "1714146542.605859"
 }
 ],
 "has_more": false,
 "pin_count": 0,
 "channel_actions_ts": null,
 "channel_actions_count": 0
 }
```
