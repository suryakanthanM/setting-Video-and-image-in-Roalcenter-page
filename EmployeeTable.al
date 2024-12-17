table 50102 Employe
{
    Caption = 'Employee Data';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Emp_ID; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(2; Emp_Name; Text[20])
        {
            DataClassification = ToBeClassified;
        }
        field(3; Emp_City; Text[20])
        {
            DataClassification = ToBeClassified;
        }
        field(4; Gender; Option)
        {
            OptionMembers = Male,Femal;
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; Emp_ID, Emp_Name)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; Emp_ID, Emp_Name)
        {
        }
        // Add changes to field groups here
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin
        Message('Data Inserted');

    end;

    trigger OnModify()
    begin
        Message('Data Modifyed');
    end;

    trigger OnDelete()
    begin
        Message('Deleted');

    end;

    trigger OnRename()
    begin
        Message('Succesfully');

    end;

}