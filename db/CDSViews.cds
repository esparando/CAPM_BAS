namespace SampleCAPM02.cdsview;

using { SampleCAPM03.db.master } from './datamodel';


context CDSViews {
    
    define view![POListCDS] as
        select from master.PO {
            key PO_ID as ![PurchaseOrder],
            Cust_Name as ![Customer],
            key Items.PO_ID as ![PurchaseOrder_ID],
            Items.Product_Id as ![Product]
        };


    define view ![Product_Customer] as
        select from master.PO as PO join master.Customer as cust
        on $projection.CustomId= cust.Cust_Id
        {
            key PO_ID as ![PurchaseOrder],
            PO.Cust_Id as ![CustomId],
            cust.Cust_Name as ![Customer_Name]
        }

    
}

