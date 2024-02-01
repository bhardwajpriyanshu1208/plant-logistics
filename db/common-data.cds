using sap from '@sap/cds/common';


// new code list for regions
entity Regions : sap.common.CodeList {
  key code : String(5); // ISO 3166-2 alpha5 codes, e.g. DE-BW
  country  : Association to sap.common.Countries;
}

// bi-directionally associate Regions with Countries
extend sap.common.Countries {
  regions : Composition of many Regions on regions.country = $self;
}