
#
# This LookML file was generated by AtScale on 2024-03-21T18:44:02.930269549Z
# SB WAS HERE
# AtScale engine version: 2023.4.1.12728
# AtScale DesignCenter version: 2023.4.1.21138
# AtScale version: 2023.4.1.6713
# Organization: default
# Project: Sales Insights

connection: "atscale_az"
label: "Sales Insights"


include: "/views/Sales_Insights/Internet_Sales_Cube.view.lkml"


explore: Internet_Sales_Cube {
  label: "Internet Sales Cube"
}