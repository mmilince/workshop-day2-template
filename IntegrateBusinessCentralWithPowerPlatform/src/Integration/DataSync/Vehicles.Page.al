page 50110 "RM Vehicles"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "CDS cr436_Vehicle";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(cr436_Make; Rec.cr436_Make)
                {
                    ToolTip = 'Specifies the value of the Make field.';
                }
                field(cr436_Model; Rec.cr436_Model)
                {
                    ToolTip = 'Specifies the value of the Model field.';
                }
                field(cr436_Type; Rec.cr436_Type)
                {
                    ToolTip = 'Specifies the value of the Type field.';
                }
                field(cr436_ManufacturingYear; Rec.cr436_YearofManufacturing)
                {
                    ToolTip = 'Specifies the value of the ManufacturingYear field.';
                }
                field(cr436_FuelType; Rec.cr436_Fuel)
                {
                    ToolTip = 'Specifies the value of the FuelType field.';
                }
                field(cr436_Mileage; Rec.cr436_Mileage)
                {
                    ToolTip = 'Specifies the value of the Mileage field.';
                }
                field(cr436_LicensePlate; Rec.cr436_LicensePlate)
                {
                    ToolTip = 'Specifies the value of the LicensePlate field.';
                }
                field(cr436_Loaned; Rec.cr436_Loaned)
                {
                    ToolTip = 'Specifies the value of the Loaned field.';
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action(CreateFromDataverse)
            {
                ApplicationArea = All;
                Caption = 'Create in Business Central';
                Promoted = true;
                PromotedCategory = Process;
                ToolTip = 'Generate the table from the coupled Microsoft Dataverse vehicle.';

                trigger OnAction()
                var
                    Vehicle: Record "CDS cr436_Vehicle";
                    CRMIntegrationManagement: Codeunit "CRM Integration Management";
                begin
                    CurrPage.SetSelectionFilter(Vehicle);
                    CRMIntegrationManagement.CreateNewRecordsFromCRM(Vehicle);
                end;
            }
        }
    }

    trigger OnInit()
    begin
        Codeunit.Run(Codeunit::"CRM Integration Management");
    end;

    procedure SetCurrentlyCoupledDataverseVehicle(Vehicle: Record "CDS cr436_Vehicle")
    begin
        CurrentlyCoupledVehicle := Vehicle;
    end;

    var
        CurrentlyCoupledVehicle: Record "CDS cr436_Vehicle";
}