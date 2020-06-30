page 50100 "USPS Setup Hgd"
{

    Caption = 'USPS Setup';
    PageType = Card;
    SourceTable = "USPS Setup Hgd";
    UsageCategory = Administration;
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            group(General)
            {
                field(URL; URL)
                {
                    ApplicationArea = All;
                }
                field(UserID; UserID)
                {
                    ApplicationArea = All;
                    ExtendedDatatype = Masked;
                }
            }
        }
    }
    trigger OnOpenPage()
    begin
        if IsEmpty() then
            Insert(true);
    end;
}