namespace Microsoft.PowerBIReports;

using Microsoft.Inventory.Item;

#pragma warning disable AS0125
#pragma warning disable AS0030
query 36953 "Items - PBI API"
#pragma warning restore AS0030
#pragma warning restore AS0125
{
    Access = Internal;
    Caption = 'Power BI Items';
    QueryType = API;
    APIPublisher = 'microsoft';
    APIGroup = 'analytics';
    APIVersion = 'v0.5';
    EntityName = 'item';
    EntitySetName = 'items';
    DataAccessIntent = ReadOnly;
    elements
    {
        dataitem(Item; Item)
        {
            column(itemNo; "No.")
            {
            }
            column(itemDescription; Description)
            {
            }
            column(baseUnitofMeasure; "Base Unit of Measure")
            {
            }
            column(unitCost; "Unit Cost")
            {
            }
            column(inventoryPostingGroup; "Inventory Posting Group")
            {
            }
            dataitem(ItemCategory; "Item Category")
            {
                DataItemLink = Code = Item."Item Category Code";
                column(itemCategoryCode; Code)
                {
                }
                column(itemCategoryDescription; Description)
                {
                }
            }
        }
    }
}