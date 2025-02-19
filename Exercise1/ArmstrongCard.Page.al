page 50113 ArmstrongCard
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    Caption = 'Armstron Card';

    layout
    {
        area(Content)
        {

        }
    }

    trigger OnOpenPage()
    var
        Counter1, Counter2, PowerNumber, Number, Result : Integer;
        CounterText: Text[5];
        ArmstrongNumbers, Newline : Text;
        ResultList: List of [Integer];
        Ch10, Ch13 : Char;

    begin
        /*Code for finding Armstrong Numbers up to 10000 (Values where the sum of each of its didgets raised to the power of the final = Initial Value)
        First segment is for implementing new lines. Character 10 =\n and character 13 = \r. Then moves onto breaking up the number into a string
        then taking each element of the count value, raising it to the power of the first element, and if the sum matches count value returns adds to a list of results*/
        Ch10 := 10;
        Ch13 := 13;
        Newline := Format(Ch10) + Format(Ch13);

        for Counter1 := 0 to 10000 do begin
            CounterText := Format(Counter1);
            Evaluate(PowerNumber, CopyStr(CounterText, StrLen(CounterText), 1));

            for Counter2 := 1 to StrLen(CounterText) do begin
                Evaluate(Number, CopyStr(CounterText, Counter2, 1));
                Result += Power(Number, PowerNumber);
            end;

            if Result = Counter1 then
                ResultList.Add(Result);

            Clear(Result);
        end;

        foreach Counter1 in ResultList do
            ArmstrongNumbers += Newline + Format(Counter1);

        Message(ArmstrongNumbers);
    end;
}