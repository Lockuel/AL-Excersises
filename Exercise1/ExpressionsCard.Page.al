page 50111 ExpressionsCard
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    Caption = 'Expressions Card';

    layout
    {
        area(Content)
        {
            group(Input)
            {
                Caption = 'Input';
                field(Value1; Value1)
                {
                    ApplicationArea = All;
                    ToolTip = 'Enter your first value';
                    Caption = 'Value1';
                }
                field(Value2; Value2)
                {
                    ApplicationArea = All;
                    ToolTip = 'Enter your second value';
                    Caption = 'Value2';
                }
            }
            group(Output)
            {
                Caption = 'Output';
                field(Result; Result)
                {
                    ApplicationArea = All;
                    ToolTip = 'Result of operation';
                    Caption = 'Result';
                    Editable = false;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Execute)
            {
                Caption = 'Execute';
                Image = ExecuteBatch;
                ApplicationArea = All;
                ToolTip = 'Click to calculate the result';
                trigger OnAction()
                begin
                    Result := Value1 > Value2;
                end;
            }
        }
    }

    var
        Value1, Value2 : Integer;
        Result: Boolean;
}