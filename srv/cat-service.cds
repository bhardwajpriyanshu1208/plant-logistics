using PlantLogistics as my from '../db/data-model';

service CatalogService {
    @Capabilities.Deletable
    @Capabilities.Insertable
    @Capabilities.Updatable
    @odata.draft.enabled
    entity Drivers as projection on my.Drivers;
}

// Association  -- Books and Author  independent but related
// Composition -- Drivers and Attachments -- parent child relation
// Aggregation --  User and is purchase order -- parent child relation but child can exist without parent
