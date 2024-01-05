using CatalogService as service from '../../srv/cat-service';

annotate service.Drivers with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'name',
            Value : name,
        },
        {
            $Type : 'UI.DataField',
            Label : 'driverImage',
            Value : driverImage,
        },
        {
            $Type : 'UI.DataField',
            Label : 'gender',
            Value : gender,
        },
        {
            $Type : 'UI.DataField',
            Label : 'email',
            Value : email,
        },
        {
            $Type : 'UI.DataField',
            Label : 'mobileNo',
            Value : mobileNo,
        },
    ]
);
annotate service.Drivers with {
    permanentAddress @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Addresses',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : permanentAddress_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'addressLine1',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'addressLine2',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'city',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'state',
            },
        ],
    }
};
annotate service.Drivers with {
    currentAddress @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Addresses',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : currentAddress_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'addressLine1',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'addressLine2',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'city',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'state',
            },
        ],
    }
};
annotate service.Drivers with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'name',
                Value : name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'driverImage',
                Value : driverImage,
            },
            {
                $Type : 'UI.DataField',
                Label : 'gender',
                Value : gender,
            },
            {
                $Type : 'UI.DataField',
                Label : 'email',
                Value : email,
            },
            {
                $Type : 'UI.DataField',
                Label : 'mobileNo',
                Value : mobileNo,
            },
            {
                $Type : 'UI.DataField',
                Label : 'bloodGroup',
                Value : bloodGroup,
            },
            {
                $Type : 'UI.DataField',
                Label : 'dateOfBirth',
                Value : dateOfBirth,
            },
            {
                $Type : 'UI.DataField',
                Label : 'drivingLicenseNo',
                Value : drivingLicenseNo,
            },
            {
                $Type : 'UI.DataField',
                Label : 'licenseType',
                Value : licenseType,
            },
            {
                $Type : 'UI.DataField',
                Label : 'licenseIssueDate',
                Value : licenseIssueDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'licenseValidityDate',
                Value : licenseValidityDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'insurancePolicyNo',
                Value : insurancePolicyNo,
            },
            {
                $Type : 'UI.DataField',
                Label : 'insuranceValidityDate',
                Value : insuranceValidityDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'vendorName',
                Value : vendorName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'dateOfJoining',
                Value : dateOfJoining,
            },
            {
                $Type : 'UI.DataField',
                Label : 'dateOfLeaving',
                Value : dateOfLeaving,
            },
            {
                $Type : 'UI.DataField',
                Label : 'isActive',
                Value : isActive,
            },
            {
                $Type : 'UI.DataField',
                Label : 'isBlocked',
                Value : isBlocked,
            },
            {
                $Type : 'UI.DataField',
                Label : 'blockingReason',
                Value : blockingReason,
            },
            {
                $Type : 'UI.DataField',
                Label : 'blockedBy',
                Value : blockedBy,
            },
            {
                $Type : 'UI.DataField',
                Label : 'blockedOn',
                Value : blockedOn,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
