Alias: $pubStatus = http://hl7.org/fhir/publication-status
Alias: $actorType = http://hl7.org/fhir/examplescenario-actor-type


Instance: TrustAnchor
InstanceOf: ActorDefinition
* name = "Trust Anchor"
* status = $pubStatus#active
* publisher = "IHE"
* type = $actorType#system

Instance: VHLHolder
InstanceOf: ActorDefinition
* name = "VHL Holder"
* status = $pubStatus#active
* publisher = "IHE"
* type = $actorType#individual

Instance: VHLReceiver
InstanceOf: ActorDefinition
* name = "VHL Receiver"
* status = $pubStatus#active
* publisher = "IHE"
* type = $actorType#system

Instance: VHLSharer
InstanceOf: ActorDefinition
* name = "VHL Sharer"
* status = $pubStatus#active
* publisher = "IHE"
* type = $actorType#system



Instance:   use-mtls-between-sharer-and-receiver
InstanceOf: Requirements
* title = "Use mTLS between VHL Sharer and VHL Receiver"
* status = $pubStatus#active
* publisher = "IHE"
* description = "Require the use of an mTLS connection for all transactions between the VHL Sharer and VHL Recevier"
* actor[+] = Canonical(VHLSharer)
* actor[+] = Canonical(VHLReceiver)


