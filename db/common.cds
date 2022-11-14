namespace SampleCAPM03.common;

type Gender : String(1) enum {
    male = 'M';
    female = 'F';
    straight = 'S';
    notDisclose = 'NA';    
}; 

aspect Amount {
  CurrencyCode: String(4);
  Salary: String(10);
  OtherIncome: String(10);
}
    



type emailId : String(40)@assert.format : '^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$';






