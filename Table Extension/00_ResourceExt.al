tableextension 123456700 "CSD_Resource" extends Resource
{
    fields
    {
        modify("Profit %") 
        { 

            trigger OnAfterValidate() 
            begin
                Rec.TestField("Unit Cost"); 
            end; 
        }
        field(123456701;"CSD_Resource Type";Option)
        {
            OptionMembers = "Internal","External";
            Caption = 'Resource Type';
            OptionCaption = 'Internal,External';
    }
    field(123456702;"CSD_Maximum Participants";Integer) 
        { 
            Caption = 'Maximum Participants'; 
        }
    field(123456703;"CSD_Quantity Per Day";Integer) 
        { 
            Caption = 'Quantity Per Day'; 
        }
    }
    
}