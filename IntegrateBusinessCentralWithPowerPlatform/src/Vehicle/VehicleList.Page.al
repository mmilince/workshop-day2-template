page 50100 "Vehicle List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Vehicle;
    Caption = 'Vehicles';
    CardPageId = "Vehicle Card";

    layout
    {
        area(Content)
        {
            repeater(Control1)
            {
                Caption = 'Vehicle';
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies No.';
                }
                field(Type; Rec.Type)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies Type';
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
                field(Loaned; Rec.Loaned)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies Loaned';
                }
            }
        }
    }
}