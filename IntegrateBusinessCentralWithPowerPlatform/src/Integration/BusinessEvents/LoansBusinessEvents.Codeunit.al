codeunit 50103 "Loans Business Events"
{
    [ExternalBusinessEvent('VehicleReturned', 'Vehicle Returned', 'This business event is triggered when a loaned vehicle is returned.', Enum::EventCategory::"Loans", '1.0')]
    internal procedure VehicleReturned(DocumentNo: Code[20];
                                       ContactNo: Code[20];
                                       ContactName: Text[100];
                                       ContactEMail: Text[80];
                                       VehicleNo: Code[20];
                                       VehicleName: Text[250];
                                       Documentid: Guid)
    begin
    end;

    [ExternalBusinessEvent('VehicleLoaned', 'Vehicle Loaned', 'This business event is triggered when a vehicle is loaned.', Enum::EventCategory::"Loans", '1.0')]
    internal procedure VehicleLoaned(DocumentNo: Code[20];
                                     ContactNo: Code[20];
                                     ContactName: Text[100];
                                     ContactEMail: Text[80];
                                     VehicleNo: Code[20];
                                     VehicleName: Text[250];
                                     DocumentId: Guid)
    begin
    end;

    [EventSubscriber(ObjectType::Table, Database::"Vendor Bank Account", 'OnBeforeValidateIBAN', '', false, false)]
    local procedure OnBeforeValidateIBAN(var VendorBankAccount: Record "Vendor Bank Account"; var xVendorBankAccount: Record "Vendor Bank Account"; var IsHandled: Boolean)
    begin
        if xVendorBankAccount.IBAN = '' then
            exit;

        if VendorBankAccount.IBAN = xVendorBankAccount.IBAN then
            exit;

        VendorIBANChanged(VendorBankAccount.IBAN, xVendorBankAccount.IBAN, VendorBankAccount."Vendor No.", UserSecurityId());
    end;

    [ExternalBusinessEvent('VendorIBANChanged', 'Vendor IBAN Changed', 'This business event is triggered when a IBAN from vendor bank account is changed', Enum::EventCategory::"Vendor Events", '1.0')]
    local procedure VendorIBANChanged(NewIBAN: Code[50]; OldIBAN: Code[50]; VendorNo: Code[20]; UserSecurityId: Guid)
    begin
    end;
}