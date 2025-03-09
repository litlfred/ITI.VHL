Instance: TrustAnchor
InstanceOf: ActorDefinition
Usage: #definition
* name = "TrustAnchor"
* title = "Trust Anchor"
* description = "The Trust Anchor receives, aggregates and distributes PKI material to the participants within a trust network, specifically the VHL Reciver and VHL Sharer."
* status = $pubStatus#active
* publisher = "IHE"
* type = $actorType#system
* capabilities[+] = Canonical(IHE.VHL.TrustAnchor)

Instance: VHLHolder
InstanceOf: ActorDefinition
Usage: #definition
* name = "VHLHolder"
* title = "VHL Holder"
* description = "The VHL Holder is an individual that is holding an authorization mechanism, a VHL, which allows a VHL Receiver to access a (set of) health document(s) held by a VHL Sharer.
"
* status = $pubStatus#active
* publisher = "IHE"
* type = $actorType#person

Instance: VHLReceiver
InstanceOf: ActorDefinition
Usage: #definition
* name = "VHLReceiver"
* title = "VHL Receiver"
* description = "The VHL Receiver receives a VHL from a VHL Holder which it utilizes to request access to health documents from a VHL Sharer.
"
* status = $pubStatus#active
* publisher = "IHE"
* type = $actorType#system

Instance: VHLSharer
InstanceOf: ActorDefinition
Usage: #definition
* name = "VHLSharer"
* title = "VHL Sharer"
* description = "The VHL Sharer generates a VHL, provides the VHL to a VHL Holder, and responds to requests from a VHL Sharer to utilize the VHL."
* status = $pubStatus#active
* publisher = "IHE"
* type = $actorType#system

