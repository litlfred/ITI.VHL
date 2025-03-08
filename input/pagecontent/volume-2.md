
# 2:X.1 Transactions

## 2:XX Issue VHL

### 2:XX.1 Scpope

A [Holder](ActorDefinition-VHLHolder.html) requests a  [Sharer](ActorDefinition-VHLSharer.html) to generate a VHL.
r
 
### 2:XX.2 Actor Roles

### 2:XX.3 Referenced Standards

### 2:XX.4 Messages

#### 2:XX.4.1 Issue VHL Request Message
##### 2:XX.4.1.1 Trigger Events
A [Holder](ActorDefinition-VHLHolder.Html) wishes to request a VHL from a [Sharer](ActorDefinition-VHLSharer.Html).

Optional precondition: the [Holder](ActorDefinition-VHLHolder.html) has selected consent and selective disclosure directives. 
##### 2:XX.4.1.2 Message Semantics
None defined. Up to a content profile to define.
##### 2:XX.4.1.3 Expected Actions
The [Sharer](ActorDefinition-VHLSharer.html) actor will generate a VHL.


The [Sharer](ActorDefinition-VHLSharer.html) actor shall follow the following requirement(s):
<ul>
  <li>
  	{% assign requirement = site.data.Requirements-GenerateVHL %}
    {% include requirements-short-summary.liquid requirement=requirement %}	
  </li>
</ul>

#### 2:XX.4.2 Issue VHL Response

##### 2:XX.4.2.1 Trigger Events
[Sharer](ActorDefinition-VHLSharer.Html) has performed any necceasry document generation, digital signatures and has generated a VHL according to a content profile.

##### 2:XX.4.2.2  Message Semantics
None defined. Up to a content profile to define.
##### 2:XX.4.2.3 Expected Actions
  
The [Holder](ActorDefinition-VHLHolder.Html) accepts the VHL for storage on wallet or other utilization.



### 2:XX.5 Security Considerations 
Depends on the content profile.





