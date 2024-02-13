#!/bin/bash

sfdx force:source:deploy --sourcepath force-app/main/default/objects/Promotion__c force-app/main/default/objects/PromotionalProduct__c force-app/main/default/permissionsets/OOInPractice.permissionset-meta.xml force-app/main/default/classes/PromotionalProduct.cls force-app/main/default/classes/Promotion.cls force-app/main/default/classes/PromotionalProductRepository.cls  force-app/main/default/classes/PromotionService.cls force-app/main/default/classes/ProductFixtureFactory.cls  force-app/main/default/classes/PromotionFixtureFactory.cls force-app/main/default/classes/PromotionalProductFixtureFactory.cls  --target-org $1

sfdx force:apex:execute --file ./scripts/apex/challenge-01/create-promotions.apex --target-org $1

