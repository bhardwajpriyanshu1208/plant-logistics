using {
    cuid,
    managed,
    Currency,
    Country,
    Language
} from '@sap/cds/common';

namespace PlantLogistics;

entity Drivers : cuid, managed {
    name                  : localized String;
    driverImage           : String;
    gender                : String;
    email                 : String;
    mobileNo              : String;
    bloodGroup            : String;
    dateOfBirth           : DateTime;
    drivingLicenseNo      : String;
    licenseType           : String;
    licenseIssueDate      : DateTime;
    licenseValidityDate   : DateTime;
    insurancePolicyNo     : String;
    insuranceValidityDate : DateTime;
    permanentAddress      : Association to one Address;
    currentAddress        : Association to one Address;
    vendorName            : String;
    dateOfJoining         : DateTime;
    dateOfLeaving         : DateTime;
    isActive              : Boolean;
    isBlocked             : Boolean;
    blockingReason        : String;
    blockedBy             : String;
    blockedOn             : DateTime;
    attachments           : Composition of many Attachment
                                on attachments.parent = $self;
}

entity Address : cuid, managed {
        addressLine1 : localized String;
        addressLine2 : String;
        city         : String;
        state        : String;
        country      : Country;
        pincode      : String;
}

entity Attachment : cuid, managed {
    key parent : Association to Drivers;
        name   : String;
        type   : String;
        size   : Integer;
        data   : Binary;
        url    : String;
}
