Instance:   VerifyDocumentSignature
InstanceOf: Requirements 
Usage: #definition 
* name = "VerifyDocumentSignature"
* title = "VerifyDocumentSignature"
* status = $pubStatus#active
* publisher = "IHE"
* description = "In this option the VHL Receiver, after receipt of a digitally signed document from a VHL Sharer, shall verify the digtial signature using previosuly retrieved PKI material.  This key material may or may not be distributed under the same trust network under which the VHL was distributed.  This key material may or may not be the same key material that was used to verify the VHL.

See cross-profile considerations for a discussion of the relationship of this option to the IHE Document Signature profile.
"
* actor[+] = Canonical(VHLReceiver)


Instance:   RecordConsent
InstanceOf: Requirements 
Usage: #definition 
* name = "RecordConsent"
* title = "Record Consent"
* status = $pubStatus#active
* publisher = "IHE"
* description = "Record the consent given by the Holder for the creation and utilization of the VHL.

In this option the VHL Sharer acts a Consent Recorder from the Privacy Consent on FHIR (PCF) profile.  In this option, the VHL Sharer SHALL initiate a [Access Consent : ITI-108)(https://profiles.ihe.net/ITI/PCF/ITI-108.html)
transaction as part of the Expected Actions after receipt of a Generate VHL request.   The Access Consent transaction is used to record the consent declarations by the VHL Holder for the sharing of the (set of) health document(s) by the VHL Sharer to any authorized VHL Receiver within the trust network for a specified use case.

"
* actor[+] = Canonical(VHLSharer)

Instance: RecordAccessToHealthData
InstanceOf: Requirements 
Usage: #definition 
* name = "RecordAccessToHealthData"
* title = "RecordAccessToHealthData"
* status = $pubStatus#active
* publisher = "IHE"
* description = "Record an event for audit purpose related to the access of health data such as when, which enitity or natural person, ehich data was accessed."
* actor[+] = Canonical(VHLSharer)


Instance:   AuditEventAccess
InstanceOf: Requirements 
Usage: #definition 
* name = "AuditEvent"
* title = "Audit Event - Accessed Health Data"
* status = $pubStatus#active
* publisher = "IHE"
* description = "Record an event for audit purpose related to the issuance of a VHL.

In this option the VHL Sharer records an audit event for critical events in the access of health documents including:
* Request for the generation of a VHL by a VHL Holder; and
* Request for access to a (set of) health document(s) by a VHL Receiver.
"
* derivedFrom = Canonical(RecordAccessToHealthData)
* actor[+] = Canonical(VHLSharer)


Instance:   AuditEventReceived
InstanceOf: Requirements 
Usage: #definition 
* name = "AuditEventReceived"
* title = "Audit Event - Received Health Data"
* status = $pubStatus#active
* publisher = "IHE"
* description = "Record an event for audit purpose related to the issuance of a VHL.

In this option the VHL Receiver records an audit event for critical events in the access of health documents, for example, including:
* provisioning of VHL from a Holder
* retrieval of health data from the a VHL Sharer
"
* derivedFrom = Canonical(RecordAccessToHealthData)
* actor[+] = Canonical(VHLReceiver)



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



Instance: RequestVHLDocuments
InstanceOf: Requirements
Usage: #definition
* name = "RequestVHLDocuments"
* title = "Request VHL Documents"
* status = $pubStatus#active
* publisher = "IHE"
* description = "This transactions is initiated by a VHL Receiver to request a set of health documents from a VHL Sharer.  This transaction should be conducted in such a manner that the VHL Receiver and VHL Sharer can validate one another's participation in the same trust network. The VHL Sharer shall optionally be able to record an audit event for the access of the folder by the VHL Receiver upon the transaction request under the Audit Event option.


For more details see the detailed [transaction description](ITI-YY4.html)
"
* actor[+] = Canonical(VHLReceiver)

Instance: RequestVHLDocument
InstanceOf: Requirements
Usage: #definition
* name = "RequestVHLDocument"
* title = "Request VHL Document"
* status = $pubStatus#active
* publisher = "IHE"
* description = "This  transaction is initiated by a VHL Receiver to request a single health document from a VHL Sharer.  This transaction should be conducted in such a manner that the VHL Receiver and VHL Sharer can validate their respective participation in the same trust network.  The VHL Receiver shall optionally be able to validate that the veracity of the health document received through this transaction under the Verify Document Signature option.  The VHL Sharer shall optionally be able to record an audit event for the access of the folder by the VHL Receiver upon the transaction request under the Audit Event option. For more details see the detailed [transaction description](ITI-YY4.html)"
* actor[+] = Canonical(VHLReceiver)


Instance:   ProvideVHL
InstanceOf: Requirements
Usage: #definition
* name = "ProvideVHL"
* title = "Provide VHL"
* status = $pubStatus#active
* publisher = "IHE"
* description = "This transacation is initiated by a VHL Holder to transmit a VHL to the VHL Receiver.   Depending on the use case and context, the payload comprising the VHL may be rendered/serialized and transmitted through various mechanisms, for example as a QR-code, Verifiable Credentials, bluetooth or near-field communication protocols.  These mechanisms are described in [Volume 3](volume-3.html). For more details see the detailed [transaction description](ITI-YY4.html)" 
* actor[+] = Canonical(VHLHolder)





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




Instance:   CreateTrustedChannel
InstanceOf: Requirements
Usage: #definition
* name = "CreateTrustedChannel"
* title = "Create Trusted Channel"
* status = $pubStatus#active
* publisher = "IHE"
* description = "Accept an mTLS in order to conduct further transactions under a secure channel"
* derivedFrom = Canonical(EstablishTrust)
* actor[+] = Canonical(VHLReceiver)
* actor[+] = Canonical(VHLSharer)


Instance:   AcceptMTLSConnection
InstanceOf: Requirements
Usage: #definition
* name = "AcceptMTLSConnection"
* title = "Accept mTLS"
* status = $pubStatus#active
* publisher = "IHE"
* description = "Accept an mTLS in order to conduct further transactions under a secure channel"
* derivedFrom = Canonical(CreateTrustedChannel)
* actor[+] = Canonical(VHLSharer)


Instance:   InitiateMTLSConnection
InstanceOf: Requirements
Usage: #definition
* name = "InitiateMTLSConnection"
* title = "Initiate mTLS"
* status = $pubStatus#active
* publisher = "IHE"
* description = "Initiate an mTLS in order to conduct further transactions under a secure channel"
* derivedFrom = Canonical(CreateTrustedChannel)
* actor[+] = Canonical(VHLReceiver)




Instance:   ReceiveVHL
InstanceOf: Requirements
Usage: #definition
* name = "ReceiveVHL"
* title = "Receive VHL"
* status = $pubStatus#active
* publisher = "IHE"
* description = "Is able to receive a VHL authorization mechanism from a VHL Holder"
* actor[+] = Canonical(VHLSharer)



Instance:   GenerateVHL
InstanceOf: Requirements
Usage: #definition
* name = "GenerateVHL"
* experimental = true
* title = "Generate VHL"
* status = $pubStatus#active
* publisher = "IHE"
* description = "Generate a VHL to issue to a Holder.

This transactions is used by a VHL Holder to request that a VHL Sharer generate a VHL.  A VHL Sharer may optionally record the consent of the individual to share their information under the Record Consent option. A VHL Sharer may optionally create an audit trail of the creation of the VHL under the Audit Event option. The individual shall trust that VHL Sharer has been authorized by its jurisidiction to authorize and provide access to health documents.   

For more details see the detailed [transaction description](volume-2.html#GenerateVHL)
"
* actor[+] = Canonical(VHLSharer)
* statement[+].key = "collect-content"
* statement[=].label = "collect content"
* statement[=].requirement = "Collect any pre-existing content and/or generate any necessary content that will be referenced as part of the VHL."
* statement[+].key = "generate-vhl-payload"
* statement[=].label = "Generate VHL Payload"
* statement[=].requirement = "Generate the payload for the VHL."
* statement[+].key = "sign-VHL"
* statement[=].label = "Sign VHL"
* statement[=].requirement = "Sign the VHL payload  to produce a Verifiable Health Link."
