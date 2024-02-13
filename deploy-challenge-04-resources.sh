#!/bin/bash

sfdx force:source:deploy --sourcepath force-app/main/default/objects/Account/fields/DocumentNumber__c.field-meta.xml force-app/main/default/objects/Lead/fields/DocumentNumber__c.field-meta.xml force-app/main/default/classes/PaymentCallbackInbound.cls force-app/main/default/classes/PaymentCallbackResponse.cls force-app/main/default/classes/PaymentCallbackInboundService.cls  --target-org $1



