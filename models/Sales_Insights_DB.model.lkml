
#
# This LookML file was generated by AtScale on 2023-02-24T15:03:27.689563Z
#
# AtScale engine version: 2022.4.0.11920
# AtScale DesignCenter version: 2022.4.0.20433
# AtScale version: 2022.4.0.5571
# Organization: default
# Project: Sales Insights DB

connection: "atscale_az"
label: "Sales Insights DB"


include: "/views/Sales_Insights_DB/Internet_Sales_Cube_AZ.view.lkml"


explore: Internet_Sales_Cube_AZ {
  label: "Internet Sales Cube AZ"
}
