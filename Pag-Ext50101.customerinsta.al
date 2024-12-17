namespace ALProject.ALProject;

using Microsoft.Sales.Customer;

pageextension 50106 customerinsta extends "Customer Card"
{
    layout
    {
        addlast("Address & Contact")
        {
            field(Instagram; Rec.Instagram)
            {
                ApplicationArea = All;
            }
        }
    }
}