using PlantLogistics as my from '../db/data-model';

service CatalogService {
    @odata.draft.enabled
    // @fiori.draft.enabled
    // @Common.InsertRestrictions.Insertable
    // @Common.UpdateRestrictions.Updatable
    // @Common.DeleteRestrictions.Deletable
    entity Drivers  as projection on my.Drivers;
}

service MediaService {
    @odata.draft.enabled
    @fiori.draft.enabled
    entity Pictures as projection on my.Pictures;
}

// Association  -- Books and Author  independent but related
// Composition -- Drivers and Attachments -- parent child relation
// Aggregation --  User and is purchase order -- parent child relation but child can exist without parent
