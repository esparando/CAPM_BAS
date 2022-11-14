using { SampleCAPM02.cdsview} from '../db/CDSViews';

service CDSService @(path: '/CDSentities') {

    entity PO_CDS_Entity as projection on cdsview.CDSViews.POListCDS {
        *
    };

    entity PO_Customer_Entity as projection on cdsview.CDSViews.Product_Customer;

}