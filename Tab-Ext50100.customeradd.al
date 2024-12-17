namespace ALProject.ALProject;

using Microsoft.Sales.Customer;

tableextension 50106 customeradd extends Customer
{
    fields
    {
        field(50100; Instagram; Text[50])
        {
            Caption = 'Instagram';
            DataClassification = ToBeClassified;
            ToolTip = 'Mension Your Instagram ID!';
        }
    }
}
