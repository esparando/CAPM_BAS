
namespace SampleCAPM03.db;

using { cuid, managed, temporal } from '@sap/cds/common';
using { SampleCAPM03.common } from './common';

type key_id : String(32);

context master {            
    
    entity Product {
        key Product_Id: String(32);
            Name: String(32);
    }

    entity PO {
        key PO_ID: key_id;
            Cust_Name: String(32);
            Cust_Id: key_id;
            Items: Association to many POItem on Items.PO_ID = PO_ID;

    }

    entity POItem {
        key ITEM_ID: key_id;
        key PO_ID: key_id;
        Product_Id: String(32);
        Item_Category: String(32);        
        ProductsNav: Association to many Product on ProductsNav.Product_Id = Product_Id;
    }

    entity Customer {
        key Cust_Id: String(32);
        Cust_Name: String(40);
    }
    
}