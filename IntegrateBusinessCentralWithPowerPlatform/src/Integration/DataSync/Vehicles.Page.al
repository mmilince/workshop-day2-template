page 50110 "RM Vehicles"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    // integration table source here

    layout
    {
        area(content)
        {
            // fields from integration table here

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
                ToolTip = 'Generate the table from the coupled Microsoft Dataverse worker.';

                trigger OnAction()
                var
                    // integration table here as var
                    CRMIntegrationManagement: Codeunit "CRM Integration Management";
                begin
                    // CurrPage.SetSelectionFilter(//integration table);
                    // CRMIntegrationManagement.CreateNewRecordsFromCRM(//integration table);
                end;
            }
        }
    }

    trigger OnInit()
    begin
        Codeunit.Run(Codeunit::"CRM Integration Management");
    end;
}