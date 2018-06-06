pageextension 123456701 ResourceListExt extends "Resource List"
{
    layout
    {
        modify(Type)
        {
            Visible = ShowType;
        }
        addafter(Type)
        {
            field("CSD_Resource Type"; "CSD_Resource Type")
            {

            }
            field("CSD_Maximum Participants"; "CSD_Maximum Participants")
            {
                Visible = ShowMaxField;
            }
        }
    }

    trigger OnOpenPage();

    begin
        FilterGroup(3);
        ShowType := (GetFilter(Type) = '');
        ShowMaxField := (GetFilter(Type) = format(Type::machine));
        FilterGroup(0);
    end;

    var
        [InDataSet]
        ShowType: Boolean;

        [InDataSet]
        ShowMaxField: Boolean;
}
