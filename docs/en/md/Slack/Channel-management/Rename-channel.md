﻿---
sidebar_position: 13
---

# Rename channel
 Changes the name of the channel


*Function RenameChannel(Val Token, Val Channel, Val Name) Export*

 | Parameter | CLI option | Type | Destination |
 |-|-|-|-|
 | Token | --token | String | Bot token |
 | Channel | --channel | String | Channel ID |
 | Name | --title | String | New channel name |

 
 Returns: Key-Value Pair - Serialized JSON response from Slack

```bsl title="Code example"
	
 
 Name = "testcov" + String(New UUID);
 Channel = "C070VPMKN8J";
 
 Response = OPI_Slack.RenameChannel(Token, Channel, Name); //Map
 Response = OPI_Tools.JSONString(Response); //JSON string
 

	
```

```sh title="CLI command example"
 
 oint slack RenameChannel --token %token% --channel "C070VPMKN8J" --title %title%

```


```json title="Result"

{
 "ok": true,
 "channel": {
 "id": "C070VPMKN8J",
 "name": "testconv42a25b36-8de3-4293-a6a9-6b92e6ea81ec",
 "is_channel": true,
 "is_group": false,
 "is_im": false,
 "is_mpim": false,
 "is_private": false,
 "created": 1714146542,
 "is_archived": false,
 "is_general": false,
 "unlinked": 0,
 "name_normalized": "testconv42a25b36-8de3-4293-a6a9-6b92e6ea81ec",
 "is_shared": false,
 "is_org_shared": false,
 "is_pending_ext_shared": false,
 "pending_shared": [],
 "context_team_id": "T06UD92BS3C",
 "updated": 1714146544414,
 "parent_conversation": null,
 "creator": "U06UG1CAYH2",
 "is_ext_shared": false,
 "shared_team_ids": [
 "T06UD92BS3C"
 ],
 "pending_connected_team_ids": [],
 "is_member": true,
 "last_read": "1714146543.286219",
 "topic": {
 "value": "TestTopic",
 "creator": "U06UG1CAYH2",
 "last_set": 1714146542
 },
 "purpose": {
 "value": "TestGoal",
 "creator": "U06UG1CAYH2",
 "last_set": 1714146542
 },
 "previous_names": [
 "testconv9a14fe4d-2fb1-4e47-b1e4-9bc1e4f7a05c"
 ]
 }
 }

```