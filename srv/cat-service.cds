using PlantLogistics as my from '../db/data-model';

service CatalogService {
    entity Drivers     as projection on my.Drivers;
    entity Addresses   as projection on my.Address;
    entity Attachments as projection on my.Attachment;
}



// Association  -- Books and Author  independent but related
// Composition -- Drivers and Attachments -- parent child relation
// Aggregation --  User and is purchase order  -- parent child relation but child can exist without parent