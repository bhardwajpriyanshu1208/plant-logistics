using CatalogService as service from '../../srv/cat-service';

annotate service.Drivers with  @fiori.draft.enabled;

annotate service.Drivers with {
    title @title: 'Title';
}

annotate service.Drivers with @(UI: {
    HeaderInfo          : {
        $Type         : 'UI.HeaderInfoType',
        TypeName      : 'Driver',
        TypeNamePlural: 'Drivers',
        Title         : {
            $Type: 'UI.DataField',
            Value: name
        },
    },
    LineItem            : [
        {
            $Type: 'UI.DataField',
            Label: 'Image',
            Value: driverImage,
        },

        {
            $Type: 'UI.DataField',
            Label: 'Name',
            Value: name,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Vendor Name',
            Value: vendorName,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Mobile No.',
            Value: mobileNo,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Licence No.',
            Value: drivingLicenseNo,
        },
        {
            $Type: 'UI.DataField',
            Label: 'License Validity',
            Value: licenseValidityDate,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Status',
            Value: isActive,
        },

    ],
    FieldGroup #FullName: {Data: [{
        $Type: 'UI.DataField',
        Value: `{firstName} {lastName}`
    }, ]}
});


annotate service.Drivers with @(
    UI.FieldGroup #PersonalDetails : {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: 'driverImage',
                Value: driverImage,
            },
            {
                $Type: 'UI.DataField',
                Label: 'First Name',
                Value: firstName,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Last Name',
                Value: lastName,
            },
            {
                $Type: 'UI.DataField',
                Label: 'email',
                Value: email,
            },
            {
                $Type: 'UI.DataField',
                Label: 'mobileNo',
                Value: mobileNo,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Gender',
                Value: gender,
            },
            {
                $Type: 'UI.DataField',
                Label: 'bloodGroup',
                Value: bloodGroup,
            },
            {
                $Type: 'UI.DataField',
                Label: 'dateOfBirth',
                Value: dateOfBirth,
            },
            {
                $Type: 'UI.DataField',
                Label: 'vendorName',
                Value: vendorName,
            },
            {
                $Type: 'UI.DataField',
                Label: 'dateOfJoining',
                Value: dateOfJoining,
            },
            {
                $Type: 'UI.DataField',
                Label: 'dateOfLeaving',
                Value: dateOfLeaving,
            },

            {
                $Type: 'UI.DataField',
                Label: 'insurancePolicyNo',
                Value: insurancePolicyNo,
            },
            {
                $Type: 'UI.DataField',
                Label: 'insuranceValidityDate',
                Value: insuranceValidityDate,
            },

            {
                $Type: 'UI.DataField',
                Label: 'isActive',
                Value: isActive,
            },
            {
                $Type: 'UI.DataField',
                Label: 'isBlocked',
                Value: isBlocked,
            },
            {
                $Type: 'UI.DataField',
                Label: 'blockingReason',
                Value: blockingReason,
            },
            {
                $Type: 'UI.DataField',
                Label: 'blockedBy',
                Value: blockedBy,
            },
            {
                $Type: 'UI.DataField',
                Label: 'blockedOn',
                Value: blockedOn,
            },
        ],
    },
    UI.FieldGroup #LicenseDetails  : {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: 'Driving License No.',
                Value: drivingLicenseNo,
            },

            {
                $Type: 'UI.DataField',
                Label: 'licenseType',
                Value: licenseType,
            },
            {
                $Type: 'UI.DataField',
                Label: 'licenseIssueDate',
                Value: licenseIssueDate,
            },
            {
                $Type: 'UI.DataField',
                Label: 'licenseValidityDate',
                Value: licenseValidityDate,
            },
        ],
    },
    UI.FieldGroup #PermanentAddress: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: 'Address line 1',
                Value: permanentAddress_addressLine1,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Address line 2',
                Value: permanentAddress_addressLine2,
            },
            {
                $Type: 'UI.DataField',
                Label: 'City',
                Value: permanentAddress_city,
            },
            // {
            //     $Type: 'UI.DataField',
            //     Label: 'State',
            //     Value: permanentAddress_state,
            // },
            // {
            //     $Type: 'UI.DataField',
            //     Label: 'Country',
            //     Value: permanentAddress_country,
            // },
            {
                $Type: 'UI.DataField',
                Label: 'Pincode',
                Value: permanentAddress_pincode,
            },
        ]
    },
    UI.FieldGroup #CurrentAddress  : {
        $Type: 'UI.FieldGroupType',
        Label: 'Current Address Details',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: 'Address line 1',
                Value: currentAddress_addressLine1,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Address line 2',
                Value: currentAddress_addressLine2,
            },
            {
                $Type: 'UI.DataField',
                Label: 'City',
                Value: currentAddress_city,
            },
            // {
            //     $Type: 'UI.DataField',
            //     Label: 'State',
            //     Value: currentAddress_state,
            // },
            // {
            //     $Type: 'UI.DataField',
            //     Label: 'Country',
            //     Value: currentAddress_country,
            // },
            {
                $Type: 'UI.DataField',
                Label: 'Pincode',
                Value: currentAddress_pincode,
            },
        ]
    },
    UI.FieldGroup #Attachments     : {
        $Type: 'UI.FieldGroupType',
        Data : [

        ]
    },
    UI.Facets                      : [
        {
            $Type : 'UI.ReferenceFacet',
            ID    : 'GeneratedFacet1',
            Label : 'Personal Details',
            Target: '@UI.FieldGroup#PersonalDetails',
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID    : 'GeneratedFacet2',
            Label : 'License Details',
            Target: '@UI.FieldGroup#LicenseDetails',
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID    : 'GeneratedFacet3',
            Label : 'Permanent Address',
            Target: '@UI.FieldGroup#PermanentAddress',
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID    : 'GeneratedFacet4',
            Label : 'Current Address',
            Target: '@UI.FieldGroup#CurrentAddress',
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID    : 'GeneratedFacet5',
            Label : 'Attachments',
            Target: '@UI.FieldGroup#Attachments',
        },
    ]
);

annotate service.Drivers with @(UI.SelectionFields: [vendorName, ]);

annotate service.Drivers with {
    vendorName @Common.Label: 'Vendor Name'
};

annotate service.Drivers with @(UI.SelectionPresentationVariant #table: {
    $Type              : 'UI.SelectionPresentationVariantType',
    PresentationVariant: {
        $Type         : 'UI.PresentationVariantType',
        Visualizations: ['@UI.LineItem', ],
    },
    SelectionVariant   : {
        $Type        : 'UI.SelectionVariantType',
        SelectOptions: [],
    },
});

annotate service.Drivers with {
    vendorName @(
        Common.ValueList               : {
            $Type         : 'Common.ValueListType',
            CollectionPath: 'Drivers',
            Parameters    : [{
                $Type            : 'Common.ValueListParameterInOut',
                LocalDataProperty: vendorName,
                ValueListProperty: 'vendorName',
            }, ],
            Label         : 'Select',
        },
        Common.ValueListWithFixedValues: true
    )
};

// annotate service.Drivers with @(
//     UI.HeaderFacets                   : [{
//         $Type : 'UI.ReferenceFacet',
//         Label : 'Personal Information',
//         ID    : 'PersonalInformation',
//         Target: '@UI.FieldGroup#PersonalDetails',
//     }, ],
//     UI.FieldGroup #PersonalInformation: {
//         $Type: 'UI.FieldGroupType',
//         Data : [],
//     }
// );
