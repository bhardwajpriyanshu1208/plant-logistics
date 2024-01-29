using {
    cuid,
    managed,
    Currency,
    Country,
    Language
} from '@sap/cds/common';

namespace PlantLogistics;

entity Drivers : cuid, managed {
    firstName             :      localized String;
    lastName              :      localized String;
    name                  :      String = (
        firstName || ' ' || lastName
    );
    driverImage           :      String  @Core.IsURL  @Core.MediaType: 'image/png';
    gender                :      String enum {
        Male;
        Female;
        Other
    };
    email                 :      String;
    mobileNo              :      String;
    bloodGroup            :      String;
    dateOfBirth           :      Date;
    drivingLicenseNo      :      String;
    licenseType           :      String;
    licenseIssueDate      :      Date;
    licenseValidityDate   :      Date;
    insurancePolicyNo     :      String;
    insuranceValidityDate :      Date;
    permanentAddress      :      Address;
    currentAddress        :      Address;
    vendorName            :      String;
    dateOfJoining         :      Date;
    dateOfLeaving         :      Date;
    isActive              :      Boolean;
    isBlocked             :      Boolean;
    blockingReason        :      String;
    blockedBy             :      String;
    blockedOn             :      DateTime;
    attachments           : many Attachment;
}

type Address {
    addressLine1 : localized String;
    addressLine2 : localized String;
    city         : localized String;
    state        : String;
    country      : Country;
    pincode      : String;
}

type Attachment {
    name : String;
    type : String;
    size : Integer;
    data : Binary;
    url  : String;
}
