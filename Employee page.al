page 50102 "Employe Page"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Employe;

    layout
    {
        area(Content)
        {

           group (General)
            {
                field(Emp_ID; Rec.Emp_ID)
                {
                    ApplicationArea = All;

                }
                field(Emp_Name; Rec.Emp_Name)
                {
                    ApplicationArea = All;

                }
                field(Emp_City; Rec.Emp_City)
                {
                    ApplicationArea = All;

                }
                field(Gender; Rec.Gender)
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}