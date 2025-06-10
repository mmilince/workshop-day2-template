page 50101 "Vehicle Card"
{
    PageType = Card;
    ApplicationArea = All;
    SourceTable = Vehicle;
    Caption = 'Vehicle Card';

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies No.';
                }

                field(Make; Rec.Make)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies Make';
                }
                field(Model; Rec.Model)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies Model';
                }
                field(Loaned; Rec.Loaned)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies Loaned';
                }
            }
            group(Details)
            {
                Caption = 'Details';

                field(Type; Rec.Type)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies Type';
                }
                field("Manufacturing Year"; Rec."Manufacturing Year")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies Manufacturing Year';
                }
                field("Fuel Type"; Rec."Fuel Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies Fuel Type';
                }
                field(Mileage; Rec.Mileage)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies Mileage';
                }
                field("License Plate"; Rec."License Plate")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies License Plate';
                }
            }
        }
    }
}