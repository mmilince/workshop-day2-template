﻿table 50107 "CDS cr436_Vehicle"
{
    ExternalName = 'cr436_vehicle';
    TableType = CDS;
    Description = '';

    fields
    {
        field(1; cr436_VehicleId; GUID)
        {
            ExternalName = 'cr436_vehicleid';
            ExternalType = 'Uniqueidentifier';
            ExternalAccess = Insert;
            Description = 'Unique identifier for entity instances';
            Caption = 'Vehicle';
        }
        field(2; CreatedOn; Datetime)
        {
            ExternalName = 'createdon';
            ExternalType = 'DateTime';
            ExternalAccess = Read;
            Description = 'Date and time when the record was created.';
            Caption = 'Created On';
        }
        field(3; CreatedBy; GUID)
        {
            ExternalName = 'createdby';
            ExternalType = 'Lookup';
            ExternalAccess = Read;
            Description = 'Unique identifier of the user who created the record.';
            Caption = 'Created By';
            TableRelation = "CRM Systemuser".SystemUserId;
        }
        field(4; ModifiedOn; Datetime)
        {
            ExternalName = 'modifiedon';
            ExternalType = 'DateTime';
            ExternalAccess = Read;
            Description = 'Date and time when the record was modified.';
            Caption = 'Modified On';
        }
        field(5; ModifiedBy; GUID)
        {
            ExternalName = 'modifiedby';
            ExternalType = 'Lookup';
            ExternalAccess = Read;
            Description = 'Unique identifier of the user who modified the record.';
            Caption = 'Modified By';
            TableRelation = "CRM Systemuser".SystemUserId;
        }
        field(6; CreatedOnBehalfBy; GUID)
        {
            ExternalName = 'createdonbehalfby';
            ExternalType = 'Lookup';
            ExternalAccess = Read;
            Description = 'Unique identifier of the delegate user who created the record.';
            Caption = 'Created By (Delegate)';
            TableRelation = "CRM Systemuser".SystemUserId;
        }
        field(7; ModifiedOnBehalfBy; GUID)
        {
            ExternalName = 'modifiedonbehalfby';
            ExternalType = 'Lookup';
            ExternalAccess = Read;
            Description = 'Unique identifier of the delegate user who modified the record.';
            Caption = 'Modified By (Delegate)';
            TableRelation = "CRM Systemuser".SystemUserId;
        }
        field(16; OwnerId; GUID)
        {
            ExternalName = 'ownerid';
            ExternalType = 'Owner';
            Description = 'Owner Id';
            Caption = 'Owner';
        }
        field(21; OwningBusinessUnit; GUID)
        {
            ExternalName = 'owningbusinessunit';
            ExternalType = 'Lookup';
            ExternalAccess = Read;
            Description = 'Unique identifier for the business unit that owns the record';
            Caption = 'Owning Business Unit';
            TableRelation = "CRM Businessunit".BusinessUnitId;
        }
        field(22; OwningUser; GUID)
        {
            ExternalName = 'owninguser';
            ExternalType = 'Lookup';
            ExternalAccess = Read;
            Description = 'Unique identifier for the user that owns the record.';
            Caption = 'Owning User';
            TableRelation = "CRM Systemuser".SystemUserId;
        }
        field(23; OwningTeam; GUID)
        {
            ExternalName = 'owningteam';
            ExternalType = 'Lookup';
            ExternalAccess = Read;
            Description = 'Unique identifier for the team that owns the record.';
            Caption = 'Owning Team';
            TableRelation = "CRM Team".TeamId;
        }
        field(25; statecode; Option)
        {
            ExternalName = 'statecode';
            ExternalType = 'State';
            ExternalAccess = Modify;
            Description = 'Status of the Vehicle';
            Caption = 'Status';
            InitValue = " ";
            OptionMembers = " ",Active,Inactive;
            OptionOrdinalValues = -1, 0, 1;
        }
        field(27; statuscode; Option)
        {
            ExternalName = 'statuscode';
            ExternalType = 'Status';
            Description = 'Reason for the status of the Vehicle';
            Caption = 'Status Reason';
            InitValue = " ";
            OptionMembers = " ",Active,Inactive;
            OptionOrdinalValues = -1, 1, 2;
        }
        field(29; VersionNumber; BigInteger)
        {
            ExternalName = 'versionnumber';
            ExternalType = 'BigInt';
            ExternalAccess = Read;
            Description = 'Version Number';
            Caption = 'Version Number';
        }
        field(30; ImportSequenceNumber; Integer)
        {
            ExternalName = 'importsequencenumber';
            ExternalType = 'Integer';
            ExternalAccess = Insert;
            Description = 'Sequence number of the import that created this record.';
            Caption = 'Import Sequence Number';
        }
        field(31; OverriddenCreatedOn; Date)
        {
            ExternalName = 'overriddencreatedon';
            ExternalType = 'DateTime';
            ExternalAccess = Insert;
            Description = 'Date and time that the record was migrated.';
            Caption = 'Record Created On';
        }
        field(32; TimeZoneRuleVersionNumber; Integer)
        {
            ExternalName = 'timezoneruleversionnumber';
            ExternalType = 'Integer';
            Description = 'For internal use only.';
            Caption = 'Time Zone Rule Version Number';
        }
        field(33; UTCConversionTimeZoneCode; Integer)
        {
            ExternalName = 'utcconversiontimezonecode';
            ExternalType = 'Integer';
            Description = 'Time zone code that was in use when the record was created.';
            Caption = 'UTC Conversion Time Zone Code';
        }
        field(34; cr436_Number; Text[850])
        {
            ExternalName = 'cr436_number';
            ExternalType = 'String';
            Description = '';
            Caption = 'Number';
        }
        field(35; cr436_Type; Option)
        {
            ExternalName = 'cr436_type';
            ExternalType = 'Picklist';
            Description = '';
            Caption = 'Type';
            InitValue = " ";
            OptionMembers = " ",Car,Motorcycle,Van;
            OptionOrdinalValues = -1, 0, 1, 2;
        }
        field(37; cr436_Fuel; Option)
        {
            ExternalName = 'cr436_fuel';
            ExternalType = 'Picklist';
            Description = '';
            Caption = 'Fuel';
            InitValue = " ";
            OptionMembers = " ",Gasoline,Diesel,Electric;
            OptionOrdinalValues = -1, 0, 1, 2;
        }
        field(39; cr436_Loaned; Boolean)
        {
            ExternalName = 'cr436_loaned';
            ExternalType = 'Boolean';
            Description = '';
            Caption = 'Loaned';
        }
        field(41; cr436_Model; Text[100])
        {
            ExternalName = 'cr436_model';
            ExternalType = 'String';
            Description = '';
            Caption = 'Model';
        }
        field(42; cr436_Make; Text[100])
        {
            ExternalName = 'cr436_make';
            ExternalType = 'String';
            Description = '';
            Caption = 'Make';
        }
        field(43; cr436_YearofManufacturing; Integer)
        {
            ExternalName = 'cr436_yearofmanufacturing';
            ExternalType = 'Integer';
            Description = '';
            Caption = 'Year of Manufacturing';
        }
        field(44; cr436_Mileage; Decimal)
        {
            ExternalName = 'cr436_mileage';
            ExternalType = 'Decimal';
            Description = '';
            Caption = 'Mileage';
        }
        field(45; cr436_LicensePlate; Text[100])
        {
            ExternalName = 'cr436_licenseplate';
            ExternalType = 'String';
            Description = '';
            Caption = 'License Plate';
        }
    }
    keys
    {
        key(PK; cr436_VehicleId)
        {
            Clustered = true;
        }
        key(Name; cr436_Number)
        {
        }
    }
    fieldgroups
    {
        fieldgroup(DropDown; cr436_Number)
        {
        }
    }
}