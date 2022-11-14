namespace SampleCAPM02.srv;

using { SampleCAPM03.db.master } from '../db/datamodel';


service CatalogService@(path:'/CatalogSrv') {

    entity POSet as projection on master.PO;
    entity POItemSet as projection on master.POItem;
    entity ProductSet as projection on master.Product;
    entity CustomerSet as projection on master.Customer;        

}


