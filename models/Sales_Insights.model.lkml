
#
# This LookML file was generated by AtScale on 2022-11-09T17:34:49.199715Z
#
# AtScale engine version: 2022.3.1.11773
# AtScale DesignCenter version: 2022.3.1.19909
# AtScale version: 2022.3.1.5201
# Organization: default
# Project: Sales Insights

connection: "atscale_az"
label: "Sales Insights"


include: "/views/Sales_Insights/Internet_Sales_Cube.view.lkml"

include: "/views/Sales_Insights/Internet_Sales_Cube_v2.view.lkml"


explore: Internet_Sales_Cube {
  label: "Internet Sales Cube"
}

explore: Internet_Sales_Cube_v2 {
  label: "Internet Sales Cube v2"
}
