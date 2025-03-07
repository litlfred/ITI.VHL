
Instance:   EstablishTrust
InstanceOf: Requirements 
Usage: #definition 
* name = "EstablishTrust"
* title = "Establish Trust"
* status = $pubStatus#active
* publisher = "IHE"
* description = "Establish a trust relationship as participants in a trust network" 
* actor[+] = Canonical(VHLSharer)
* actor[+] = Canonical(VHLReceiver)





Instance:   PublishPKIMaterial
InstanceOf: Requirements
Usage: #definition
* name = "PublishPKIMaterial"
* title = "Publish PKI material"
* status = $pubStatus#active
* publisher = "IHE"
* description = "Publish trust material to a Trust Anchor"
* derivedFrom = Canonical(EstablishTrust)
* actor[+] = Canonical(VHLSharer)
* actor[+] = Canonical(VHLReceiver)
* statement[+].key = "generate-private-public-key-pair"
* statement[=].label = "Generate Private-Public Key Pair"
* statement[=].requirement = "Generate one or more sets of private-public key pair for usage within a trust network.  The key pairs may be categorized in one or more ways.  For example, categories could include key usage type (e.g. signatures, encryption, mTLS) or by use contest / business domain."
* statement[+].key = "create-trust-list"
* statement[=].label = "Create Trust List"
* statement[=].requirement = "Create a trust list of the PKI material from the key pairs including any necessary data needed for categorization of PKImaterial."
* statement[+].key = "public-trust-list"
* statement[=].label = "Publish Trust List"
* statement[=].requirement = "Publish the trust list of created PKI material to the Trust Anchor for distribution among the trust network participants."



Instance:   ReceivePKIMaterial
InstanceOf: Requirements
Usage: #definition
* name = "ReceivePKIMaterial"
* title = "Receive PKI material"
* status = $pubStatus#active
* publisher = "IHE"
* description = "Receive trust material from a VHL Sharer or VHL Receiver, as trust network participants, for distribution within the Trust Network"
* derivedFrom = Canonical(EstablishTrust)
* actor[+] = Canonical(TrustAnchor)
* statement[+].key = "validate-trust-list"
* statement[=].label = "Validate Trust List"
* statement[=].requirement = "Perform any necessary validations of the trust list according to the jurisidictional policy under which the Trust Anchor is operating,  Validation may include enforcing, for example the governance of cryptographic algorithms used material, expiry times, or the presence of certificate chains back to certificate authorities."




Instance:   DistributePKIMaterial
InstanceOf: Requirements
Usage: #definition
* name = "DistributePKIMaterial"
* title = "Distribute PKI material"
* status = $pubStatus#active
* publisher = "IHE"
* description = "Make received trust material available through a distribution point to a VHL Sharer or VHL Receiver"
* derivedFrom = Canonical(EstablishTrust)
* actor[+] = Canonical(TrustAnchor)
* statement[+].key = "receive-pki-distribution-request"
* statement[=].label = "Receive PKI distribution request"
* statement[=].requirement = "Receive a PKI distribution request from a trust network participant."
* statement[+].key = "assemble-trust-list"
* statement[=].label = "Assemble Trust List"
* statement[=].requirement = "Assemble, if not previously done so, the necessary PKI material for distribution as part of a trust list. Distribution of PKI material should allow for the categorization of PKI material such as by participant, by key usage type, and usage/business context."
* statement[+].key = "assemble-key-material"
* statement[=].label = "Assemble PKI Material"
* statement[=].requirement = "Assemble PKI material for distribution as part of a trust list. Distribution of PKI material should allow for the categorization of PKI material such as by participant, by key usage type, and usage/business context."
* statement[+].key = "sign-trust-list"
* statement[=].label = "Sign trust list"
* statement[=].requirement = "Sign the trust list of PKI material using the private key of the Trust Anchor."
* statement[+].key = "distribute"
* statement[=].label = "Distribute signed PKI Material"
* statement[=].requirement = "Distribute the signed key material in response to the request from a trust network participant."




Instance:   RetrievePKIMaterial
InstanceOf: Requirements
Usage: #definition
* name = "RetrievePKIMaterial"
* title = "Retrieve PKI material"
* status = $pubStatus#active
* publisher = "IHE"
* description = "Retrieve PKI material from a distribution point"
* derivedFrom = Canonical(EstablishTrust)
* actor[+] = Canonical(VHLSharer)
* actor[+] = Canonical(VHLReceiver)





Instance:   AcceptMTLSConnection
InstanceOf: Requirements
Usage: #definition
* name = "AcceptMTLSConnection"
* title = "Accept mTLS"
* status = $pubStatus#active
* publisher = "IHE"
* description = "Accept an mTLS in order to conduct further transactions under a secure channel"
* derivedFrom = Canonical(EstablishTrust)
* actor[+] = Canonical(VHLSharer)


Instance:   InitiateMTLSConnection
InstanceOf: Requirements
Usage: #definition
* name = "InitiateMTLSConnection"
* title = "Initiate mTLS"
* status = $pubStatus#active
* publisher = "IHE"
* description = "Initiate an mTLS in order to conduct further transactions under a secure channel"
* derivedFrom = Canonical(EstablishTrust)
* actor[+] = Canonical(VHLReceiver)


Instance:   ProvideVHL
InstanceOf: Requirements
Usage: #definition
* name = "ProvideVHL"
* title = "Provide VHL"
* status = $pubStatus#active
* publisher = "IHE"
* description = "Is able to provide a VHL authorization mechanism to a VHL Receiver"
* actor[+] = Canonical(VHLHolder)


Instance:   ReceiveVHL
InstanceOf: Requirements
Usage: #definition
* name = "ReceiveVHL"
* title = "Receive VHL"
* status = $pubStatus#active
* publisher = "IHE"
* description = "Is able to receive a VHL authorization mechanism from a VHL Holder"
* actor[+] = Canonical(VHLSharer)



Instance:   IssueVHL
InstanceOf: Requirements
Usage: #definition
* name = "IssueVHL"
* experimental = true
* title = "Issue VHL"
* status = $pubStatus#active
* publisher = "IHE"
* description = "Issue a VHL to a Holder"
* actor[+] = Canonical(VHLSharer)
* statement[+].key = "collect-content"
* statement[=].label = "collect content"
* statement[=].requirement = "Collect any pre-existing content and/or generate any necessary content that will be referenced as part of the VHL."
* statement[+].key = "generate-vhl-payload"
* statement[=].label = "Generate VHL Payload"
* statement[=].requirement = "Generate the payload for the VHL."
* statement[+].key = "sign-VHL"
* statement[=].label = "Sign HL"
* statement[=].requirement = "Sign the VHL payload  to produce a Verifiable Health Link."
