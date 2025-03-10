namespace Microsoft.SubscriptionBilling;

using Microsoft.Inventory.Item;

pageextension 8055 "Item List" extends "Item List"
{
    layout
    {
        addbefore(Control1900383207)
        {
            part(ItemServCommitmentsFactbox; "Item Serv. Commitments Factbox")
            {
                ApplicationArea = All;
                Caption = 'Service Commitments';
                SubPageLink = "Item No." = field("No.");
            }
        }
    }
    actions
    {
        addlast(Action126)
        {
            action(ServiceCommitments)
            {
                ApplicationArea = Jobs;
                Image = ServiceLedger;
                Caption = 'Service Commitments';
                ToolTip = 'View or add service commitments for the item.';

                trigger OnAction()
                begin
                    Rec.OpenItemServCommitmentPackagesPage();
                end;
            }
        }
        addlast(Category_Category4)
        {
            actionref(ServiceCommitments_Promoted; ServiceCommitments)
            {
            }
        }
    }
}