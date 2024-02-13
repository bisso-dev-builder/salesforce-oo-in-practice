PermissionSet permissionSet = [SELECT Id, Name FROM PermissionSet WHERE NAME = 'OOInPractice' ];

PermissionSetAssignment permissionSetAssignment = new PermissionSetAssignment (PermissionSetId = permissionSet.Id
    , AssigneeId = UserInfo.getUserId() );

insert permissionSetAssignment;