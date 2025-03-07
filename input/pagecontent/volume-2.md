;; This buffer is for text that is not saved, and for Lisp evaluation.
;; To create a file, visit it with C-x C-f and enter text in its buffer.

## 2:X.1 Transactions

### 2:X.1.1 Issue VHL

A [[Holder](ActorDefinition-VHLHolder.Html)](ActorDefinition-VHL[Holder](ActorDefinition-VHLHolder.Html).html) requests  [Sharer](ActorDefinition-VHLSharer.html) to generate a VHL.

 
 
#### Request Trigger
A [Holder](ActorDefinition-VHLHolder.Html) wishes to request a VHL from a [Sharer](ActorDefinition-VHLSharer.Html).

Optionally: The [Holder](ActorDefinition-VHLHolder.html) has selected consent and selective disclosure directives. 
#### Request Semantics
None defined. Up to a content profile to define.
#### Request Actions 
The [Sharer](ActorDefinition-VHLSharer.html) will generate a VHL.

See requirement(s):
* [Issue VHL](Requirements-IssueVHL.html)

> Note: I would rather include the narrative of the requirement here

#### Response Trigger
[Sharer](ActorDefinition-VHLSharer.Html) has performed any necceasry document generation, digital signatures and has generated a VHL according to a content profile.
#### Response Semantics
None defined. Up to content profile to define.
#### Response Actions
The [Holder](ActorDefinition-VHLHolder.Html) accepts the VHL for storage on wallet or other utilization.
#### Security Considerations 
Depends on the content profile.






