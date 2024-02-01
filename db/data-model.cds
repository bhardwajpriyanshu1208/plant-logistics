using {
    cuid,
    managed,
    Currency,
    Country,
    Language
} from '@sap/cds/common';

using Regions from './common-data';

namespace PlantLogistics;

entity Drivers : cuid, managed {
    firstName             :      localized String;
    lastName              :      localized String;
    name                  :      String = (
        firstName || ' ' || lastName
    );
    driverImage           :      String;
    gender                :      String enum {
        Male;
        Female;
        Other
    };
    email                 :      String;
    mobileNo              :      String;
    bloodGroup            :      String ;
    dateOfBirth           :      Date;
    drivingLicenseNo      :      String;
    licenseType           :      String enum {
        LMV;
        HMV;
        MCWG;
        MCWOG
    };
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
    state        : Region;
    country      : Country;
    pincode      : String;
}

type Attachment {
    name : String;
    type : String;
    size : Integer;
    url  : String;
}

type Region : Association to Regions;
