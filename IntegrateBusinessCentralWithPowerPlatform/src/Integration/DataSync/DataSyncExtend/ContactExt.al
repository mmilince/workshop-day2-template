tableextension 50100 ContactExt extends "CRM Contact"
{
    Description = 'Person with whom a business unit has a relationship, such as customer, supplier, and colleague.';

    fields
    {
        field(10052; cr436_MembershipID; Text[100])
        {
            ExternalName = 'cr436_membershipid';
            ExternalType = 'String';
            Description = '';
            Caption = 'Membership ID';
        }
    }
}