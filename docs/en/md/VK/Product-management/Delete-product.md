﻿---
sidebar_position: 6
---

# Delete product
 Deletes a previously created product



`Function DeleteProduct(Val Product, Val Parameters = "") Export`

 | Parameter | CLI option | Type | Destination |
 |-|-|-|-|
 | Product | --item | String, Number | Product ID |
 | Parameters | --auth | Structure Of String | Authorization JSON or path to .json |

 
 Returns: Map Of KeyAndValue - Serialized JSON response from VK

<br/>




```bsl title="Code example"
 
 Response = OPI_VK.DeleteProduct(ProductID, Parameters);
 Response = OPI_Tools.JSONString(Response);
```
	


```sh title="CLI command example"
 
 oint vk DeleteProduct --item %item% --auth %auth%

```

```json title="Result"
{
 "response": 1
 }
```
