#!/bin/bash

sfdx force:source:deploy --sourcepath force-app/main/default/objects/Account/fields/BacklogItems__c.field-meta.xml force-app/main/default/objects/Opportunity/fields/BacklogItems__c.field-meta.xml force-app/main/default/classes/OpportunityRepository.cls force-app/main/default/classes/AccountBacklogItemsService.cls  --target-org $1



