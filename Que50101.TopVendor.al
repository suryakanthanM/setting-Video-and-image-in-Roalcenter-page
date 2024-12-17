namespace ALProject.ALProject;

using Microsoft.Purchases.Vendor;
using Microsoft.Purchases.Payables;

query 50102 TopVendor
{
    Caption = 'TopVendor';
    QueryType = Normal;
    TopNumberOfRows = 1;
    QueryCategory = 'Vendor List';
    OrderBy = descending(Vendor_No_);
    elements
    {
        dataitem(Vendor; "Vendor Ledger Entry")
        {
            filter(Posting_Date; "Posting Date") { }
            column(Vendor_Name; "Vendor Name")
            {
            }
            column(Vendor_No_; "Vendor No.")
            {
            }
            column(Vendor_Posting_Group; "Vendor Posting Group")
            {
            }
        }
    }

    trigger OnBeforeOpen()
    begin

    end;
}
