view: internet_sales_no_pii {
    label: "internet_sales_no_pii"
    sql_table_name: "internet_sales_catalog_Snowflake"."internet_sales_no_pii";;
    dimension: City_Attribute {
        label: "City"
        description: "City name only / town (e.g. Seattle) without state qualifier. Descriptive attribute on the City level; contrast the City level key (city plus state)."
        group_label: "Customer Attributes"
        type: string
        sql: ${TABLE}."City Attribute";;
    }

    dimension: Gender_Hierarchy_Gender {
        label: "Gender"
        description: "Customer gender / sex value (e.g. Male, Female). Customer demographic, not a product attribute."
        group_label: "Customer Attributes"
        type: string
        sql: ${TABLE}."Gender";;
    }

    dimension: Occupation {
        label: "Occupation"
        description: "Customer occupation / profession / job category (e.g. Professional, Skilled Manual, Management)."
        group_label: "Customer Attributes"
        type: string
        sql: ${TABLE}."Occupation";;
    }

    dimension: Postal_Code {
        label: "Postal Code"
        description: "Postal code / zip only (e.g. 98101) without country qualifier. Descriptive attribute on the Zip Code level."
        group_label: "Customer Attributes"
        type: string
        sql: ${TABLE}."Postal Code";;
    }

    dimension: d_firstname {
        label: "First Name"
        description: "Customer first name / given name. Customer attribute; contrast Last Name."
        group_label: "Customer Attributes"
        type: string
        sql: ${TABLE}."d_firstname";;
    }

    dimension: d_lastname {
        label: "Last Name"
        description: "Customer last name / family name / surname. Customer attribute; contrast First Name."
        group_label: "Customer Attributes"
        type: string
        sql: ${TABLE}."d_lastname";;
    }

    dimension: Geography_City_City {
        label: "  City"
        description: "City with its state for customer geography (e.g. Seattle, WA). Leaf of Geography City hierarchy; contrast the City secondary attribute (city name only)."
        group_label: "Customer Attributes.Geography City"
        type: string
        sql: ${TABLE}."City";;
    }

    dimension: Geography_City_Country {
        label: "    Country"
        description: "Customer country / nation (e.g. United States, Australia). Top of the Geography City hierarchy."
        group_label: "Customer Attributes.Geography City"
        type: string
        sql: ${TABLE}."Country";;
        drill_fields: [Geography_City_State]
    }

    dimension: Geography_City_State {
        label: "   State"
        description: "State / province / region where the customer lives (e.g. California, Washington). Between Country and City in the Geography City hierarchy."
        group_label: "Customer Attributes.Geography City"
        type: string
        sql: ${TABLE}."State";;
        drill_fields: [Geography_City_City]
    }

    dimension: Geography_Zip_Country_Zip_Hiearchy {
        label: "   Country"
        description: "Customer country / nation; top of the Geography Zip hierarchy. Same members as Country in the Geography City hierarchy."
        group_label: "Customer Attributes.Geography Zip"
        type: string
        sql: ${TABLE}."Country Zip Hiearchy";;
        drill_fields: [Geography_Zip_Zip_Code]
    }

    dimension: Geography_Zip_Zip_Code {
        label: "  Zip Code"
        description: "Customer zip / postal code qualified by country. Leaf of the Geography Zip hierarchy; contrast the Postal Code secondary attribute (code only)."
        group_label: "Customer Attributes.Geography Zip"
        type: string
        sql: ${TABLE}."Zip Code";;
    }

    dimension: Order_Custom_Day_Of_Month {
        label: "Order Custom Day Of Month"
        description: "Day-of-month label on the Custom PP445 calendar. Role-played as Order or Ship date; contrast Reporting Day Of Month (Retail 445)."
        group_label: "Date Attributes"
        type: string
        sql: ${TABLE}."Order Custom Day Of Month";;
    }

    dimension: Order_Custom_Day_Of_Week {
        label: "Order Custom Day Of Week"
        description: "Day-of-week label on the Custom PP445 calendar. Role-played as Order or Ship date; contrast Reporting Day Of Week (Retail 445)."
        group_label: "Date Attributes"
        type: string
        sql: ${TABLE}."Order Custom Day Of Week";;
    }

    dimension: Order_Custom_Day_Of_Year {
        label: "Order Custom Day Of Year"
        description: "Day-of-year label on the Custom PP445 calendar. Role-played as Order or Ship date; contrast Reporting Day Of Year (Retail 445)."
        group_label: "Date Attributes"
        type: string
        sql: ${TABLE}."Order Custom Day Of Year";;
    }

    dimension: Order_Custom_Month_Name {
        label: "Order Custom Month Name"
        description: "Month name on the Custom PP445 calendar (custom parallel period keys). Role-played as Order or Ship date; contrast Reporting Month Name (Retail 445)."
        group_label: "Date Attributes"
        type: string
        sql: ${TABLE}."Order Custom Month Name";;
    }

    dimension: Order_Custom_Month_Of_Quarter {
        label: "Order Custom Month Of Quarter"
        description: "Month-of-quarter label on the Custom PP445 calendar. Role-played as Order or Ship date; contrast Reporting Month Of Quarter (Retail 445)."
        group_label: "Date Attributes"
        type: string
        sql: ${TABLE}."Order Custom Month Of Quarter";;
    }

    dimension: Order_Custom_Month_Of_Year {
        label: "Order Custom Month Of Year"
        description: "Month-of-year label on the Custom PP445 calendar. Role-played as Order or Ship date; contrast Reporting Month Of Year (Retail 445)."
        group_label: "Date Attributes"
        type: string
        sql: ${TABLE}."Order Custom Month Of Year";;
    }

    dimension: Order_Custom_Quarter_Of_Year {
        label: "Order Custom Quarter Of Year"
        description: "Quarter-of-year label on the Custom PP445 calendar (445 with custom parallel period keys). Role-played as Order or Ship date; contrast Reporting Quarter Of Year (Retail 445)."
        group_label: "Date Attributes"
        type: string
        sql: ${TABLE}."Order Custom Quarter Of Year";;
    }

    dimension: Order_Custom_Week_Of_Month {
        label: "Order Custom Week Of Month"
        description: "Week-of-month label on the Custom PP445 calendar. Role-played as Order or Ship date; contrast Reporting Week Of Month (Retail 445)."
        group_label: "Date Attributes"
        type: string
        sql: ${TABLE}."Order Custom Week Of Month";;
    }

    dimension: Order_Custom_Week_Of_Year {
        label: "Order Custom Week Of Year"
        description: "Week-of-year label on the Custom PP445 calendar. Role-played as Order or Ship date; contrast Reporting Week Of Year (Retail 445)."
        group_label: "Date Attributes"
        type: string
        sql: ${TABLE}."Order Custom Week Of Year";;
    }

    dimension: Order_Day_Attribute {
        label: "Order Day Attribute"
        description: "Full calendar date at day grain on the Date Month Hierarchy. Role-played as Order or Ship date; contrast Day Week (Week hierarchy variant)."
        group_label: "Date Attributes"
        type: date_time
        sql: ${TABLE}."Order Day Attribute";;
    }

    dimension: Order_Day_Of_Month {
        label: "Order Day Of Month"
        description: "Day number within the month (1-31), standard calendar Month hierarchy. Role-played as Order or Ship date."
        group_label: "Date Attributes"
        type: number
        sql: ${TABLE}."Order Day Of Month";;
    }

    dimension: Order_Day_Of_Week_Name {
        label: "Order Day Of Week Name"
        description: "Weekday name (e.g. Monday), standard calendar, Date Month Hierarchy. Role-played as Order or Ship date; contrast Day Of Week Name Week (Week hierarchy variant)."
        group_label: "Date Attributes"
        type: string
        sql: ${TABLE}."Order Day Of Week Name";;
    }

    dimension: Order_Day_Of_Week_Name_Week {
        label: "Order Day Of Week Name Week"
        description: "Weekday name on the Date Week Hierarchy. Role-played as Order or Ship date; contrast Day Of Week Name (Month hierarchy variant)."
        group_label: "Date Attributes"
        type: string
        sql: ${TABLE}."Order Day Of Week Name Week";;
    }

    dimension: Order_Day_Of_Week_Number {
        label: "Order Day Of Week Number"
        description: "Weekday number (1-7), standard calendar, Date Month Hierarchy. Role-played as Order or Ship date; contrast Day Of Week Number Week."
        group_label: "Date Attributes"
        type: number
        sql: ${TABLE}."Order Day Of Week Number";;
    }

    dimension: Order_Day_Of_Week_Number_Week {
        label: "Order Day Of Week Number Week"
        description: "Weekday number (1-7) on the Date Week Hierarchy. Role-played as Order or Ship date; contrast Day Of Week Number (Month hierarchy variant)."
        group_label: "Date Attributes"
        type: number
        sql: ${TABLE}."Order Day Of Week Number Week";;
    }

    dimension: Order_Day_Week {
        label: "Order Day Week"
        description: "Full calendar date at day grain on the Date Week Hierarchy. Role-played as Order or Ship date; contrast Day Attribute (Month hierarchy variant)."
        group_label: "Date Attributes"
        type: date_time
        sql: ${TABLE}."Order Day Week";;
    }

    dimension: Order_Month_of_Year {
        label: "Order Month Of Year"
        description: "Month number within the year (1-12), standard Gregorian calendar. Role-played as Order or Ship date."
        group_label: "Date Attributes"
        type: number
        sql: ${TABLE}."Order Month of Year";;
    }

    dimension: Order_Quarter_Number {
        label: "Order Quarter Number"
        description: "Quarter number within the year (1-4), standard Gregorian calendar. Role-played as Order or Ship date."
        group_label: "Date Attributes"
        type: number
        sql: ${TABLE}."Order Quarter Number";;
    }

    dimension: Order_Reporting_Day_Of_Month {
        label: "Order Reporting Day Of Month"
        description: "Reporting day number within the Retail 4-4-5 month. Role-played as Order or Ship date."
        group_label: "Date Attributes"
        type: string
        sql: ${TABLE}."Order Reporting Day Of Month";;
    }

    dimension: Order_Reporting_Day_Of_Week {
        label: "Order Reporting Day Of Week"
        description: "Reporting day number within the Retail 4-4-5 week (1-7). Role-played as Order or Ship date."
        group_label: "Date Attributes"
        type: string
        sql: ${TABLE}."Order Reporting Day Of Week";;
    }

    dimension: Order_Reporting_Day_Of_Year {
        label: "Order Reporting Day Of Year"
        description: "Reporting day number within the Retail 4-4-5 year. Role-played as Order or Ship date."
        group_label: "Date Attributes"
        type: string
        sql: ${TABLE}."Order Reporting Day Of Year";;
    }

    dimension: Order_Reporting_Half_Year_Attribute {
        label: "Order Reporting Half Year Attribute"
        description: "Retail 4-4-5 reporting half year label (H1, H2). Role-played as Order or Ship date."
        group_label: "Date Attributes"
        type: string
        sql: ${TABLE}."Order Reporting Half Year Attribute";;
    }

    dimension: Order_Reporting_Month_Name {
        label: "Order ReportIng Month Name"
        description: "Retail 4-4-5 reporting month name. Role-played as Order or Ship date; not the Gregorian month name."
        group_label: "Date Attributes"
        type: string
        sql: ${TABLE}."Order Reporting Month Name";;
    }

    dimension: Order_Reporting_Month_Of_Quarter {
        label: "Order Reporting Month Of Quarter"
        description: "Reporting month number within the Retail 4-4-5 quarter (1-3). Role-played as Order or Ship date."
        group_label: "Date Attributes"
        type: string
        sql: ${TABLE}."Order Reporting Month Of Quarter";;
    }

    dimension: Order_Reporting_Month_Of_Year {
        label: "Order Reporting Month Of Year"
        description: "Reporting month number within the Retail 4-4-5 year (1-12). Role-played as Order or Ship date; not the Gregorian Month of Year."
        group_label: "Date Attributes"
        type: string
        sql: ${TABLE}."Order Reporting Month Of Year";;
    }

    dimension: Order_Reporting_Quarter_Of_Half_Year {
        label: "Order Reporting Quarter Of Half Year"
        description: "Reporting quarter number within the Retail 4-4-5 half year (1-2). Role-played as Order or Ship date."
        group_label: "Date Attributes"
        type: string
        sql: ${TABLE}."Order Reporting Quarter Of Half Year";;
    }

    dimension: Order_Reporting_Quarter_Of_Year {
        label: "Order Reporting Quarter Of Year"
        description: "Reporting quarter number within the Retail 4-4-5 year (1-4). Role-played as Order or Ship date; not the Gregorian Quarter Number."
        group_label: "Date Attributes"
        type: string
        sql: ${TABLE}."Order Reporting Quarter Of Year";;
    }

    dimension: Order_Reporting_Week_Of_Month {
        label: "Order Reporting Week Of Month"
        description: "Reporting week number within the Retail 4-4-5 month (1-5). Role-played as Order or Ship date."
        group_label: "Date Attributes"
        type: string
        sql: ${TABLE}."Order Reporting Week Of Month";;
    }

    dimension: Order_Reporting_Week_Of_Year {
        label: "Order Reporting Week Of Year"
        description: "Reporting week number within the Retail 4-4-5 year (1-53). Role-played as Order or Ship date; not the standard Week Of Year."
        group_label: "Date Attributes"
        type: string
        sql: ${TABLE}."Order Reporting Week Of Year";;
    }

    dimension: Order_Week_Of_Year {
        label: "Order Week Of Year"
        description: "Week number within the year (1-53), standard week calendar. Role-played as Order or Ship date; contrast Reporting Week Of Year (Retail 445)."
        group_label: "Date Attributes"
        type: number
        sql: ${TABLE}."Order Week Of Year";;
    }

    dimension: Ship_Custom_Day_Of_Month {
        label: "Ship Custom Day Of Month"
        description: "Day-of-month label on the Custom PP445 calendar. Role-played as Order or Ship date; contrast Reporting Day Of Month (Retail 445)."
        group_label: "Date Attributes"
        type: string
        sql: ${TABLE}."Ship Custom Day Of Month";;
    }

    dimension: Ship_Custom_Day_Of_Week {
        label: "Ship Custom Day Of Week"
        description: "Day-of-week label on the Custom PP445 calendar. Role-played as Order or Ship date; contrast Reporting Day Of Week (Retail 445)."
        group_label: "Date Attributes"
        type: string
        sql: ${TABLE}."Ship Custom Day Of Week";;
    }

    dimension: Ship_Custom_Day_Of_Year {
        label: "Ship Custom Day Of Year"
        description: "Day-of-year label on the Custom PP445 calendar. Role-played as Order or Ship date; contrast Reporting Day Of Year (Retail 445)."
        group_label: "Date Attributes"
        type: string
        sql: ${TABLE}."Ship Custom Day Of Year";;
    }

    dimension: Ship_Custom_Month_Name {
        label: "Ship Custom Month Name"
        description: "Month name on the Custom PP445 calendar (custom parallel period keys). Role-played as Order or Ship date; contrast Reporting Month Name (Retail 445)."
        group_label: "Date Attributes"
        type: string
        sql: ${TABLE}."Ship Custom Month Name";;
    }

    dimension: Ship_Custom_Month_Of_Quarter {
        label: "Ship Custom Month Of Quarter"
        description: "Month-of-quarter label on the Custom PP445 calendar. Role-played as Order or Ship date; contrast Reporting Month Of Quarter (Retail 445)."
        group_label: "Date Attributes"
        type: string
        sql: ${TABLE}."Ship Custom Month Of Quarter";;
    }

    dimension: Ship_Custom_Month_Of_Year {
        label: "Ship Custom Month Of Year"
        description: "Month-of-year label on the Custom PP445 calendar. Role-played as Order or Ship date; contrast Reporting Month Of Year (Retail 445)."
        group_label: "Date Attributes"
        type: string
        sql: ${TABLE}."Ship Custom Month Of Year";;
    }

    dimension: Ship_Custom_Quarter_Of_Year {
        label: "Ship Custom Quarter Of Year"
        description: "Quarter-of-year label on the Custom PP445 calendar (445 with custom parallel period keys). Role-played as Order or Ship date; contrast Reporting Quarter Of Year (Retail 445)."
        group_label: "Date Attributes"
        type: string
        sql: ${TABLE}."Ship Custom Quarter Of Year";;
    }

    dimension: Ship_Custom_Week_Of_Month {
        label: "Ship Custom Week Of Month"
        description: "Week-of-month label on the Custom PP445 calendar. Role-played as Order or Ship date; contrast Reporting Week Of Month (Retail 445)."
        group_label: "Date Attributes"
        type: string
        sql: ${TABLE}."Ship Custom Week Of Month";;
    }

    dimension: Ship_Custom_Week_Of_Year {
        label: "Ship Custom Week Of Year"
        description: "Week-of-year label on the Custom PP445 calendar. Role-played as Order or Ship date; contrast Reporting Week Of Year (Retail 445)."
        group_label: "Date Attributes"
        type: string
        sql: ${TABLE}."Ship Custom Week Of Year";;
    }

    dimension: Ship_Day_Attribute {
        label: "Ship Day Attribute"
        description: "Full calendar date at day grain on the Date Month Hierarchy. Role-played as Order or Ship date; contrast Day Week (Week hierarchy variant)."
        group_label: "Date Attributes"
        type: date_time
        sql: ${TABLE}."Ship Day Attribute";;
    }

    dimension: Ship_Day_Of_Month {
        label: "Ship Day Of Month"
        description: "Day number within the month (1-31), standard calendar Month hierarchy. Role-played as Order or Ship date."
        group_label: "Date Attributes"
        type: number
        sql: ${TABLE}."Ship Day Of Month";;
    }

    dimension: Ship_Day_Of_Week_Name {
        label: "Ship Day Of Week Name"
        description: "Weekday name (e.g. Monday), standard calendar, Date Month Hierarchy. Role-played as Order or Ship date; contrast Day Of Week Name Week (Week hierarchy variant)."
        group_label: "Date Attributes"
        type: string
        sql: ${TABLE}."Ship Day Of Week Name";;
    }

    dimension: Ship_Day_Of_Week_Name_Week {
        label: "Ship Day Of Week Name Week"
        description: "Weekday name on the Date Week Hierarchy. Role-played as Order or Ship date; contrast Day Of Week Name (Month hierarchy variant)."
        group_label: "Date Attributes"
        type: string
        sql: ${TABLE}."Ship Day Of Week Name Week";;
    }

    dimension: Ship_Day_Of_Week_Number {
        label: "Ship Day Of Week Number"
        description: "Weekday number (1-7), standard calendar, Date Month Hierarchy. Role-played as Order or Ship date; contrast Day Of Week Number Week."
        group_label: "Date Attributes"
        type: number
        sql: ${TABLE}."Ship Day Of Week Number";;
    }

    dimension: Ship_Day_Of_Week_Number_Week {
        label: "Ship Day Of Week Number Week"
        description: "Weekday number (1-7) on the Date Week Hierarchy. Role-played as Order or Ship date; contrast Day Of Week Number (Month hierarchy variant)."
        group_label: "Date Attributes"
        type: number
        sql: ${TABLE}."Ship Day Of Week Number Week";;
    }

    dimension: Ship_Day_Week {
        label: "Ship Day Week"
        description: "Full calendar date at day grain on the Date Week Hierarchy. Role-played as Order or Ship date; contrast Day Attribute (Month hierarchy variant)."
        group_label: "Date Attributes"
        type: date_time
        sql: ${TABLE}."Ship Day Week";;
    }

    dimension: Ship_Month_of_Year {
        label: "Ship Month Of Year"
        description: "Month number within the year (1-12), standard Gregorian calendar. Role-played as Order or Ship date."
        group_label: "Date Attributes"
        type: number
        sql: ${TABLE}."Ship Month of Year";;
    }

    dimension: Ship_Quarter_Number {
        label: "Ship Quarter Number"
        description: "Quarter number within the year (1-4), standard Gregorian calendar. Role-played as Order or Ship date."
        group_label: "Date Attributes"
        type: number
        sql: ${TABLE}."Ship Quarter Number";;
    }

    dimension: Ship_Reporting_Day_Of_Month {
        label: "Ship Reporting Day Of Month"
        description: "Reporting day number within the Retail 4-4-5 month. Role-played as Order or Ship date."
        group_label: "Date Attributes"
        type: string
        sql: ${TABLE}."Ship Reporting Day Of Month";;
    }

    dimension: Ship_Reporting_Day_Of_Week {
        label: "Ship Reporting Day Of Week"
        description: "Reporting day number within the Retail 4-4-5 week (1-7). Role-played as Order or Ship date."
        group_label: "Date Attributes"
        type: string
        sql: ${TABLE}."Ship Reporting Day Of Week";;
    }

    dimension: Ship_Reporting_Day_Of_Year {
        label: "Ship Reporting Day Of Year"
        description: "Reporting day number within the Retail 4-4-5 year. Role-played as Order or Ship date."
        group_label: "Date Attributes"
        type: string
        sql: ${TABLE}."Ship Reporting Day Of Year";;
    }

    dimension: Ship_Reporting_Half_Year_Attribute {
        label: "Ship Reporting Half Year Attribute"
        description: "Retail 4-4-5 reporting half year label (H1, H2). Role-played as Order or Ship date."
        group_label: "Date Attributes"
        type: string
        sql: ${TABLE}."Ship Reporting Half Year Attribute";;
    }

    dimension: Ship_Reporting_Month_Name {
        label: "Ship ReportIng Month Name"
        description: "Retail 4-4-5 reporting month name. Role-played as Order or Ship date; not the Gregorian month name."
        group_label: "Date Attributes"
        type: string
        sql: ${TABLE}."Ship Reporting Month Name";;
    }

    dimension: Ship_Reporting_Month_Of_Quarter {
        label: "Ship Reporting Month Of Quarter"
        description: "Reporting month number within the Retail 4-4-5 quarter (1-3). Role-played as Order or Ship date."
        group_label: "Date Attributes"
        type: string
        sql: ${TABLE}."Ship Reporting Month Of Quarter";;
    }

    dimension: Ship_Reporting_Month_Of_Year {
        label: "Ship Reporting Month Of Year"
        description: "Reporting month number within the Retail 4-4-5 year (1-12). Role-played as Order or Ship date; not the Gregorian Month of Year."
        group_label: "Date Attributes"
        type: string
        sql: ${TABLE}."Ship Reporting Month Of Year";;
    }

    dimension: Ship_Reporting_Quarter_Of_Half_Year {
        label: "Ship Reporting Quarter Of Half Year"
        description: "Reporting quarter number within the Retail 4-4-5 half year (1-2). Role-played as Order or Ship date."
        group_label: "Date Attributes"
        type: string
        sql: ${TABLE}."Ship Reporting Quarter Of Half Year";;
    }

    dimension: Ship_Reporting_Quarter_Of_Year {
        label: "Ship Reporting Quarter Of Year"
        description: "Reporting quarter number within the Retail 4-4-5 year (1-4). Role-played as Order or Ship date; not the Gregorian Quarter Number."
        group_label: "Date Attributes"
        type: string
        sql: ${TABLE}."Ship Reporting Quarter Of Year";;
    }

    dimension: Ship_Reporting_Week_Of_Month {
        label: "Ship Reporting Week Of Month"
        description: "Reporting week number within the Retail 4-4-5 month (1-5). Role-played as Order or Ship date."
        group_label: "Date Attributes"
        type: string
        sql: ${TABLE}."Ship Reporting Week Of Month";;
    }

    dimension: Ship_Reporting_Week_Of_Year {
        label: "Ship Reporting Week Of Year"
        description: "Reporting week number within the Retail 4-4-5 year (1-53). Role-played as Order or Ship date; not the standard Week Of Year."
        group_label: "Date Attributes"
        type: string
        sql: ${TABLE}."Ship Reporting Week Of Year";;
    }

    dimension: Ship_Week_Of_Year {
        label: "Ship Week Of Year"
        description: "Week number within the year (1-53), standard week calendar. Role-played as Order or Ship date; contrast Reporting Week Of Year (Retail 445)."
        group_label: "Date Attributes"
        type: number
        sql: ${TABLE}."Ship Week Of Year";;
    }

    dimension: Custom_PP445_Order_Custom_Day {
        label: " Order Custom Day"
        description: "A 445 calendar with custom parallel period keys defined for each level.  The underlying data matches the results of the Retail 445 hierarchy because the data table contains the standard key assignments generated by the default ParallelPeriod logic.  A real custom ParallelPeriod hierarchy would have different parallel period key assignments to satisfy the reporting business's reporting comparison requirements."
        group_label: "Date Attributes.Order Custom PP445"
        type: date
        sql: ${TABLE}."Order Custom Day";;
    }

    dimension: Custom_PP445_Order_Custom_Month {
        label: "   Order Custom Month"
        description: "Same as [Retail 445].[Reporting Month] but has a custom parallel period key."
        group_label: "Date Attributes.Order Custom PP445"
        type: string
        sql: ${TABLE}."Order Custom Month";;
        drill_fields: [Custom_PP445_Order_Custom_Week]
    }

    dimension: Custom_PP445_Order_Custom_Quarter {
        label: "    Order Custom Quarter"
        description: "Same as [Retail 445].[Reporting Quarter] but has a custom parallel period key."
        group_label: "Date Attributes.Order Custom PP445"
        type: string
        sql: ${TABLE}."Order Custom Quarter";;
        drill_fields: [Custom_PP445_Order_Custom_Month]
    }

    dimension: Custom_PP445_Order_Custom_Week {
        label: "  Order Custom Week"
        description: "Same as [Retail 445].[Reporting Week] but has a custom parallel period key."
        group_label: "Date Attributes.Order Custom PP445"
        type: string
        sql: ${TABLE}."Order Custom Week";;
        drill_fields: [Custom_PP445_Order_Custom_Day]
    }

    dimension: Custom_PP445_Order_Custom_Year {
        label: "     Order Custom Year"
        description: "Same as [Retail 445].[Reporting Year] but has a custom parallel period key."
        group_label: "Date Attributes.Order Custom PP445"
        type: string
        sql: ${TABLE}."Order Custom Year";;
        drill_fields: [Custom_PP445_Order_Custom_Quarter]
    }

    dimension: Date_Month_Hierarchy_Order_Day {
        label: " Order Day"
        description: "Day level of standard calendar Month Hierarchy"
        group_label: "Date Attributes.Order Date Month Hierarchy"
        type: string
        sql: ${TABLE}."Order Day";;
    }

    dimension: Date_Month_Hierarchy_Order_Month {
        label: "  Order Month"
        description: "Calendar month of the standard Gregorian calendar (e.g. January 2014). Role-played per date role (Order or Ship). Not the Retail 445 Reporting Month."
        group_label: "Date Attributes.Order Date Month Hierarchy"
        type: string
        sql: ${TABLE}."Order Month";;
        drill_fields: [Date_Month_Hierarchy_Order_Day]
    }

    dimension: Date_Month_Hierarchy_Order_Quarter {
        label: "   Order Quarter"
        description: "Calendar quarter of the standard Gregorian calendar (e.g. Q1 2014). Role-played as Order or Ship date. Not the Retail 445 Reporting Quarter."
        group_label: "Date Attributes.Order Date Month Hierarchy"
        type: string
        sql: ${TABLE}."Order Quarter";;
        drill_fields: [Date_Month_Hierarchy_Order_Month]
    }

    dimension: Date_Month_Hierarchy_Order_Year {
        label: "    Order Year"
        description: "Year level of the Standard Calendar Month Hierarchy."
        group_label: "Date Attributes.Order Date Month Hierarchy"
        type: string
        sql: ${TABLE}."Order Year";;
        drill_fields: [Date_Month_Hierarchy_Order_Quarter]
    }

    dimension: Date_Week_Hierarchy_Order_Day {
        label: " Order Day"
        description: "Day level of standard calendar Month Hierarchy"
        group_label: "Date Attributes.Order Date Week Hierarchy"
        type: string
        sql: ${TABLE}."Order Day";;
    }

    dimension: Date_Week_Hierarchy_Order_Week {
        label: "  Order Week"
        description: "Calendar week in the Gregorian Date Week Hierarchy. Role-played as Order or Ship date. Not the Retail 445 Reporting Week."
        group_label: "Date Attributes.Order Date Week Hierarchy"
        type: string
        sql: ${TABLE}."Order Week";;
        drill_fields: [Date_Week_Hierarchy_Order_Day]
    }

    dimension: Date_Week_Hierarchy_Order_Year_Week_Hierarchy {
        label: "   Order Year"
        description: "Calendar year at the top of the Date Week Hierarchy; same members as Year in the Date Month Hierarchy. Role-played as Order or Ship date."
        group_label: "Date Attributes.Order Date Week Hierarchy"
        type: string
        sql: ${TABLE}."Order Year Week Hierarchy";;
        drill_fields: [Date_Week_Hierarchy_Order_Week]
    }

    dimension: Retail_445_Order_Reporting_Day {
        label: " Order Reporting Day"
        description: "A Retail 4-4-5 calendar"
        group_label: "Date Attributes.Order Retail 445"
        type: date
        sql: ${TABLE}."Order Reporting Day";;
    }

    dimension: Retail_445_Order_Reporting_Half_Year {
        label: "     Order Reporting Half Year"
        description: "Retail 4-4-5 reporting half year (H1, H2). Role-played as Order or Ship date."
        group_label: "Date Attributes.Order Retail 445"
        type: string
        sql: ${TABLE}."Order Reporting Half Year";;
        drill_fields: [Retail_445_Order_Reporting_Quarter]
    }

    dimension: Retail_445_Order_Reporting_Month {
        label: "   Order ReportIng Month"
        description: "Retail 4-4-5 reporting month (4 or 5 week month). Role-played as Order or Ship date. Not the Gregorian Month."
        group_label: "Date Attributes.Order Retail 445"
        type: string
        sql: ${TABLE}."Order Reporting Month";;
        drill_fields: [Retail_445_Order_Reporting_Week]
    }

    dimension: Retail_445_Order_Reporting_Quarter {
        label: "    Order Reporting Quarter"
        description: "Retail 4-4-5 reporting quarter (13 weeks). Role-played as Order or Ship date. Not the Gregorian Quarter."
        group_label: "Date Attributes.Order Retail 445"
        type: string
        sql: ${TABLE}."Order Reporting Quarter";;
        drill_fields: [Retail_445_Order_Reporting_Month]
    }

    dimension: Retail_445_Order_Reporting_Week {
        label: "  Order ReportIng Week"
        description: "Week level of the 4-4-5 calendar"
        group_label: "Date Attributes.Order Retail 445"
        type: string
        sql: ${TABLE}."Order Reporting Week";;
        drill_fields: [Retail_445_Order_Reporting_Day]
    }

    dimension: Retail_445_Order_Reporting_Year {
        label: "      Order Reporting Year"
        description: "Retail 4-4-5 reporting / fiscal year. Role-played as Order or Ship date. Not the standard calendar Year."
        group_label: "Date Attributes.Order Retail 445"
        type: string
        sql: ${TABLE}."Order Reporting Year";;
        drill_fields: [Retail_445_Order_Reporting_Half_Year]
    }

    dimension: Custom_PP445_Ship_Custom_Day {
        label: " Ship Custom Day"
        description: "A 445 calendar with custom parallel period keys defined for each level.  The underlying data matches the results of the Retail 445 hierarchy because the data table contains the standard key assignments generated by the default ParallelPeriod logic.  A real custom ParallelPeriod hierarchy would have different parallel period key assignments to satisfy the reporting business's reporting comparison requirements."
        group_label: "Date Attributes.Ship Custom PP445"
        type: date
        sql: ${TABLE}."Ship Custom Day";;
    }

    dimension: Custom_PP445_Ship_Custom_Month {
        label: "   Ship Custom Month"
        description: "Same as [Retail 445].[Reporting Month] but has a custom parallel period key."
        group_label: "Date Attributes.Ship Custom PP445"
        type: string
        sql: ${TABLE}."Ship Custom Month";;
        drill_fields: [Custom_PP445_Ship_Custom_Week]
    }

    dimension: Custom_PP445_Ship_Custom_Quarter {
        label: "    Ship Custom Quarter"
        description: "Same as [Retail 445].[Reporting Quarter] but has a custom parallel period key."
        group_label: "Date Attributes.Ship Custom PP445"
        type: string
        sql: ${TABLE}."Ship Custom Quarter";;
        drill_fields: [Custom_PP445_Ship_Custom_Month]
    }

    dimension: Custom_PP445_Ship_Custom_Week {
        label: "  Ship Custom Week"
        description: "Same as [Retail 445].[Reporting Week] but has a custom parallel period key."
        group_label: "Date Attributes.Ship Custom PP445"
        type: string
        sql: ${TABLE}."Ship Custom Week";;
        drill_fields: [Custom_PP445_Ship_Custom_Day]
    }

    dimension: Custom_PP445_Ship_Custom_Year {
        label: "     Ship Custom Year"
        description: "Same as [Retail 445].[Reporting Year] but has a custom parallel period key."
        group_label: "Date Attributes.Ship Custom PP445"
        type: string
        sql: ${TABLE}."Ship Custom Year";;
        drill_fields: [Custom_PP445_Ship_Custom_Quarter]
    }

    dimension: Date_Month_Hierarchy_Ship_Day {
        label: " Ship Day"
        description: "Day level of standard calendar Month Hierarchy"
        group_label: "Date Attributes.Ship Date Month Hierarchy"
        type: string
        sql: ${TABLE}."Ship Day";;
    }

    dimension: Date_Month_Hierarchy_Ship_Month {
        label: "  Ship Month"
        description: "Calendar month of the standard Gregorian calendar (e.g. January 2014). Role-played per date role (Order or Ship). Not the Retail 445 Reporting Month."
        group_label: "Date Attributes.Ship Date Month Hierarchy"
        type: string
        sql: ${TABLE}."Ship Month";;
        drill_fields: [Date_Month_Hierarchy_Ship_Day]
    }

    dimension: Date_Month_Hierarchy_Ship_Quarter {
        label: "   Ship Quarter"
        description: "Calendar quarter of the standard Gregorian calendar (e.g. Q1 2014). Role-played as Order or Ship date. Not the Retail 445 Reporting Quarter."
        group_label: "Date Attributes.Ship Date Month Hierarchy"
        type: string
        sql: ${TABLE}."Ship Quarter";;
        drill_fields: [Date_Month_Hierarchy_Ship_Month]
    }

    dimension: Date_Month_Hierarchy_Ship_Year {
        label: "    Ship Year"
        description: "Year level of the Standard Calendar Month Hierarchy."
        group_label: "Date Attributes.Ship Date Month Hierarchy"
        type: string
        sql: ${TABLE}."Ship Year";;
        drill_fields: [Date_Month_Hierarchy_Ship_Quarter]
    }

    dimension: Date_Week_Hierarchy_Ship_Day {
        label: " Ship Day"
        description: "Day level of standard calendar Month Hierarchy"
        group_label: "Date Attributes.Ship Date Week Hierarchy"
        type: string
        sql: ${TABLE}."Ship Day";;
    }

    dimension: Date_Week_Hierarchy_Ship_Week {
        label: "  Ship Week"
        description: "Calendar week in the Gregorian Date Week Hierarchy. Role-played as Order or Ship date. Not the Retail 445 Reporting Week."
        group_label: "Date Attributes.Ship Date Week Hierarchy"
        type: string
        sql: ${TABLE}."Ship Week";;
        drill_fields: [Date_Week_Hierarchy_Ship_Day]
    }

    dimension: Date_Week_Hierarchy_Ship_Year_Week_Hierarchy {
        label: "   Ship Year"
        description: "Calendar year at the top of the Date Week Hierarchy; same members as Year in the Date Month Hierarchy. Role-played as Order or Ship date."
        group_label: "Date Attributes.Ship Date Week Hierarchy"
        type: string
        sql: ${TABLE}."Ship Year Week Hierarchy";;
        drill_fields: [Date_Week_Hierarchy_Ship_Week]
    }

    dimension: Retail_445_Ship_Reporting_Day {
        label: " Ship Reporting Day"
        description: "A Retail 4-4-5 calendar"
        group_label: "Date Attributes.Ship Retail 445"
        type: date
        sql: ${TABLE}."Ship Reporting Day";;
    }

    dimension: Retail_445_Ship_Reporting_Half_Year {
        label: "     Ship Reporting Half Year"
        description: "Retail 4-4-5 reporting half year (H1, H2). Role-played as Order or Ship date."
        group_label: "Date Attributes.Ship Retail 445"
        type: string
        sql: ${TABLE}."Ship Reporting Half Year";;
        drill_fields: [Retail_445_Ship_Reporting_Quarter]
    }

    dimension: Retail_445_Ship_Reporting_Month {
        label: "   Ship ReportIng Month"
        description: "Retail 4-4-5 reporting month (4 or 5 week month). Role-played as Order or Ship date. Not the Gregorian Month."
        group_label: "Date Attributes.Ship Retail 445"
        type: string
        sql: ${TABLE}."Ship Reporting Month";;
        drill_fields: [Retail_445_Ship_Reporting_Week]
    }

    dimension: Retail_445_Ship_Reporting_Quarter {
        label: "    Ship Reporting Quarter"
        description: "Retail 4-4-5 reporting quarter (13 weeks). Role-played as Order or Ship date. Not the Gregorian Quarter."
        group_label: "Date Attributes.Ship Retail 445"
        type: string
        sql: ${TABLE}."Ship Reporting Quarter";;
        drill_fields: [Retail_445_Ship_Reporting_Month]
    }

    dimension: Retail_445_Ship_Reporting_Week {
        label: "  Ship ReportIng Week"
        description: "Week level of the 4-4-5 calendar"
        group_label: "Date Attributes.Ship Retail 445"
        type: string
        sql: ${TABLE}."Ship Reporting Week";;
        drill_fields: [Retail_445_Ship_Reporting_Day]
    }

    dimension: Retail_445_Ship_Reporting_Year {
        label: "      Ship Reporting Year"
        description: "Retail 4-4-5 reporting / fiscal year. Role-played as Order or Ship date. Not the standard calendar Year."
        group_label: "Date Attributes.Ship Retail 445"
        type: string
        sql: ${TABLE}."Ship Reporting Year";;
        drill_fields: [Retail_445_Ship_Reporting_Half_Year]
    }

    dimension: Order_Type {
        label: "Order Type"
        description: "Order line classification / category / type from the order master. Alternate grouping of order lines, independent of order number."
        group_label: "Orders"
        type: string
        sql: ${TABLE}."Order Type";;
    }

    dimension: Order_Dimension_Currency {
        label: "   Currency"
        description: "Transaction currency name of the sales order (e.g. US Dollar). Top of the Order Dimension hierarchy."
        group_label: "Orders.Order Dimension"
        type: string
        sql: ${TABLE}."Currency";;
        drill_fields: [Order_Dimension_Order]
    }

    dimension: Order_Dimension_Order {
        label: "  Order"
        description: "Sales order number / order ID (e.g. SO43697). One order groups one or more line items; contrast Order Line Item (line grain)."
        group_label: "Orders.Order Dimension"
        type: string
        sql: ${TABLE}."Order";;
        drill_fields: [Order_Dimension_Order_Line_Item]
    }

    dimension: Order_Dimension_Order_Line_Item {
        label: " Order Line Item"
        description: "Order Line Item"
        group_label: "Orders.Order Dimension"
        type: number
        sql: ${TABLE}."Order Line Item";;
    }

    dimension: Color {
        label: "Color"
        description: "Product Color"
        group_label: "Product Attributes"
        type: string
        sql: ${TABLE}."Color";;
    }

    dimension: Product_Subcategory_ID {
        label: "Product Subcategory ID"
        description: "ID of the product category"
        group_label: "Product Attributes"
        type: number
        sql: ${TABLE}."Product Subcategory ID";;
    }

    dimension: Size {
        label: "Size"
        description: "Product size (e.g. S, M, L, XL or numeric sizes like 38, 42). Parsed from the fact product_info map column; degenerate attribute, contrast Color, Style, Weight."
        group_label: "Product Attributes"
        type: string
        sql: ${TABLE}."Size";;
    }

    dimension: Style {
        label: "Style"
        description: "Product Style"
        group_label: "Product Attributes"
        type: string
        sql: ${TABLE}."Style";;
    }

    dimension: Weight {
        label: "Weight"
        description: "Product weight value parsed from the fact product_info map column. Degenerate attribute; contrast Size, Style, Color."
        group_label: "Product Attributes"
        type: string
        sql: ${TABLE}."Weight";;
    }

    dimension: Product_Dimension_Product_Category {
        label: "  Product Category"
        description: "Product Sub category"
        group_label: "Product Attributes.Product Hierarchy"
        type: string
        sql: ${TABLE}."Product Category";;
        drill_fields: [Product_Dimension_Product_Name]
    }

    dimension: Product_Dimension_Product_Line {
        label: "   Product Line"
        description: "Product Line"
        group_label: "Product Attributes.Product Hierarchy"
        type: string
        sql: ${TABLE}."Product Line";;
        drill_fields: [Product_Dimension_Product_Category]
    }

    dimension: Product_Dimension_Product_Name {
        label: " Product Name"
        description: "Full Product Name"
        group_label: "Product Attributes.Product Hierarchy"
        type: string
        sql: ${TABLE}."Product Name";;
    }

    dimension: Sales_Reason_Hierarchy_Reason_Type {
        label: "  Reason Type"
        description: "Category / type of purchase reason (e.g. Marketing, Promotion, Other). Parent level of Sales Reason."
        group_label: "Sales Reason.Sales Reason Hierarchy"
        type: string
        sql: ${TABLE}."Reason Type";;
        drill_fields: [Sales_Reason_Hierarchy_Sales_Reason]
    }

    dimension: Sales_Reason_Hierarchy_Sales_Reason {
        label: " Sales Reason"
        description: "Specific reason a customer gave for a purchase (e.g. Price, On Promotion, Review). Leaf level under Reason Type."
        group_label: "Sales Reason.Sales Reason Hierarchy"
        type: string
        sql: ${TABLE}."Sales Reason";;
    }

    dimension: Order_Date_Dimension_Custom_Calculation_Group {
        label: "Order Date Dimension Custom Calculation Group"
        group_label: "Date Attributes"
        type: string
        description: "These are time-related calculations for the Date Dimension that demonstrate the use of a custom expression."
        sql: ${TABLE}."Order Date Dimension Custom Calculation Group";;
    }

    dimension: Order_Date_Dimension_Time_Calculations {
        label: "Order Date Dimension Time Calculations"
        group_label: "Date Attributes"
        type: string
        description: "These are time-related calculations for the Date Dimension that use all the available templates."
        sql: ${TABLE}."Order Date Dimension Time Calculations";;
    }

    dimension: Ship_Date_Dimension_Custom_Calculation_Group {
        label: "Ship Date Dimension Custom Calculation Group"
        group_label: "Date Attributes"
        type: string
        description: "These are time-related calculations for the Date Dimension that demonstrate the use of a custom expression."
        sql: ${TABLE}."Ship Date Dimension Custom Calculation Group";;
    }

    dimension: Ship_Date_Dimension_Time_Calculations {
        label: "Ship Date Dimension Time Calculations"
        group_label: "Date Attributes"
        type: string
        description: "These are time-related calculations for the Date Dimension that use all the available templates."
        sql: ${TABLE}."Ship Date Dimension Time Calculations";;
    }

    measure: Customer_Count {
        label: "Customer Count"
        group_label: "Customer Metrics"
        description: "Distinct customers / unique buyers who placed internet sales orders. Exact distinct count; contrast Estimated Customer Count (approximate, faster)."
        value_format: "#.####"
        type: count_distinct
        sql: ${TABLE}."Customer Count";;
    }

    measure: Estimated_Customer_Count {
        label: "Estimated Customer Count"
        group_label: "Customer Metrics"
        description: "Approximate distinct customers / unique buyers using estimated count distinct for speed on large data. Contrast Customer Count (exact)."
        value_format: "#.####"
        type: count_distinct
        sql: ${TABLE}."Estimated Customer Count";;
    }

    measure: Last_Product_Unit_Price {
        label: "Last Product Unit Price"
        group_label: "Product Metrics"
        description: "Most recent / latest unit selling price per product; price of a single unit at transaction time, taking the last value across the Product dimension rather than summing. Contrast List Price (suggested retail)."
        value_format: "$#,##0.00"
        type: average
        sql: ${TABLE}."Last Product Unit Price";;
    }

    measure: List_Price {
        label: "List Price"
        group_label: "Product Metrics"
        description: "Suggested retail price / MSRP of the product in dollars from the product master. Catalog price, not the actual transaction price (see Last Product Unit Price)."
        type: sum
        sql: ${TABLE}."List Price";;
    }

    measure: Average_Sales_Amount {
        label: "Average Sales Amount"
        group_label: "Sales Metrics"
        description: "Average Sales Amount"
        value_format: "$#,##0.00"
        type: average
        sql: ${TABLE}."Average Sales Amount";;
    }

    measure: Calculated_Tax {
        label: "Calculated Tax"
        group_label: "Sales Metrics"
        description: "Estimated sales tax in dollars, derived as 8.5% (0.085) of sales amount per line item. Computed estimate; contrast Maximum Tax Amount which uses the recorded tax amount (taxamt)."
        value_format: "$#,##0.00"
        type: sum
        sql: ${TABLE}."Calculated Tax";;
    }

    measure: Maximum_Tax_Amount {
        label: "Maximum Tax Amount"
        group_label: "Sales Metrics"
        description: "Highest / largest recorded tax amount (taxamt) in dollars on a single sales line item. Recorded tax, not the derived 8.5% Calculated Tax."
        value_format: "$#,##0.00"
        type: max
        sql: ${TABLE}."Maximum Tax Amount";;
    }

    measure: Order_Quantity {
        label: "Order Quantity"
        group_label: "Sales Metrics"
        description: "Total units / quantity sold; number of product units ordered across internet sales lines. Unit volume, not dollar revenue (see Sales Amount)."
        value_format: "#.####"
        drill_fields: [Customer_Details*,Shipping_Details*]
        type: sum
        sql: ${TABLE}."Order Quantity";;
    }

    measure: Sales_Amount {
        label: "Sales Amount"
        group_label: "Sales Metrics"
        description: "Total sales revenue / turnover in dollars; monetary value of internet sales line items. Base additive sales measure; contrast Average Sales Amount and Sales Amount Standard Deviation."
        value_format: "$#,##0.00"
        drill_fields: [Customer_Details*,Shipping_Details*]
        type: sum
        sql: ${TABLE}."Sales Amount";;
    }

    measure: Sales_Amount_Standard_Deviation {
        label: "Sales Amount Standard Deviation"
        group_label: "Sales Metrics"
        description: "Variability / spread / volatility of line item sales amounts (sample standard deviation). Dispersion measure, not total or average sales."
        value_format: "$#,##0.00"
        type: average
        sql: ${TABLE}."Sales Amount Standard Deviation";;
    }

    measure: Sold_Product_Non_Distinct_Count {
        label: "Sold Product Non Distinct Count"
        group_label: "Sales Metrics"
        description: "Sold Product Non Distinct Count"
        value_format: "#.####"
        type: sum
        sql: ${TABLE}."Sold Product Non Distinct Count";;
    }

    measure: Average_Customer_Count_per_Order {
        label: "Average Customer Count per Order"
        group_label: "Time Relative"
        description: "Customers per unit ordered: ratio of Customer Count (exact distinct customers) divided by Order Quantity. Contrast Average Est Customer Count per Order (estimated distinct count)."
        type: average
        sql: ${TABLE}."Average Customer Count per Order";;
    }

    measure: Average_Est_Customer_Count_per_Order {
        label: "Average Est Customer Count per Order"
        group_label: "Time Relative"
        description: "Estimated customers per unit ordered: ratio of Estimated Customer Count (approximate distinct) divided by Order Quantity. Contrast Average Customer Count per Order (exact)."
        type: average
        sql: ${TABLE}."Average Est Customer Count per Order";;
    }

    measure: Average_Last_Product_Unit_Count_per_Order {
        label: "Average Last Product Unit Count per Order"
        group_label: "Time Relative"
        description: "Ratio of Last Product Unit Price divided by Order Quantity; latest unit price spread per unit ordered. Price-based ratio, not a customer or tax ratio."
        type: average
        sql: ${TABLE}."Average Last Product Unit Count per Order";;
    }

    measure: Average_Max_Tax_Count_per_Order {
        label: "Average Max Tax Count per Order"
        group_label: "Time Relative"
        description: "Tax per unit ordered: ratio of Maximum Tax Amount (recorded tax) divided by Order Quantity. Based on recorded taxamt, not the derived Calculated Tax."
        type: average
        sql: ${TABLE}."Average Max Tax Count per Order";;
    }

    measure: Average_Sales_Amount_SD_Count_per_Order {
        label: "Average Sales Amount SD Count per Order"
        group_label: "Time Relative"
        description: "Sales variability per unit ordered: ratio of Sales Amount Standard Deviation divided by Order Quantity. Dispersion ratio, not Average Sales per Order."
        type: average
        sql: ${TABLE}."Average Sales Amount SD Count per Order";;
    }

    measure: Average_Sales_per_Order {
        label: "Average Sales per Order"
        group_label: "Time Relative"
        description: "Average selling price / revenue per unit ordered: Sales Amount divided by Order Quantity. Dollar yield per unit; contrast Average Sales Amount (plain average of line amounts)."
        type: average
        sql: ${TABLE}."Average Sales per Order";;
    }

    measure: Average_Sold_Product_per_Order {
        label: "Average Sold Product per Order"
        group_label: "Time Relative"
        description: "Product rows per unit ordered: ratio of Sold Product Non Distinct Count divided by Order Quantity. Volume mix ratio, not a customer count ratio."
        type: average
        sql: ${TABLE}."Average Sold Product per Order";;
    }

    measure: Customer_Count_30_Period_Moving_Average {
        label: "Customer Count 30 Period Moving Average"
        group_label: "Time Relative"
        description: "30 period moving / rolling / trailing average of distinct Customer Count over the current period and the prior 29 on the Order Retail 445 calendar. Meant to execute at the Day level of the Order Retail 445 hierarchy; not the Sales Amount moving average."
        value_format: "#.####"
        type: average
        sql: ${TABLE}."Customer Count 30 Period Moving Average";;
    }

    measure: Customer_Count_Next_Period {
        label: "Customer Count Next Period"
        group_label: "Time Relative"
        description: "Next period's distinct Customer Count (lead one period, next / following period) on the Order Retail 445 calendar; NULL when Customer Count is empty. Not prior period, not Sales Amount."
        value_format: "#.####"
        type: count_distinct
        sql: ${TABLE}."Customer Count Next Period";;
    }

    measure: Customer_Count_Prior_Period {
        label: "Customer Count Prior Period "
        group_label: "Time Relative"
        description: "Prior period's distinct Customer Count (previous / last period) on the Order Retail 445 calendar; NULL when Customer Count is empty. Not next period, not prior year, not Sales Amount."
        value_format: "#.####"
        type: count_distinct
        sql: ${TABLE}."Customer Count Prior Period";;
    }

    measure: Customer_Count_Prior_Period_Growth {
        label: "Customer Count Prior Period Growth"
        group_label: "Time Relative"
        description: "Order Retail 445 Growth since previous period."
        value_format: "#.####"
        type: count_distinct
        sql: ${TABLE}."Customer Count Prior Period Growth";;
    }

    measure: Customer_Count_Prior_Period_Growth_Percent {
        label: "Customer Count Prior Period Growth Percent"
        group_label: "Time Relative"
        description: "Order Retail 445 Previous Period Growth Percent"
        value_format: "0.00%"
        type: average
        sql: ${TABLE}."Customer Count Prior Period Growth Percent";;
    }

    measure: Customer_Count_Prior_Year {
        label: "Customer Count Prior Year"
        group_label: "Time Relative"
        description: "Distinct Customer Count for the same period one year prior (prior year, PY, vs last year) on the Order Retail 445 calendar; NULL when Customer Count is empty. Not prior period, not Sales Amount."
        value_format: "#.####"
        type: count_distinct
        sql: ${TABLE}."Customer Count Prior Year";;
    }

    measure: Customer_Count_Year_to_Date {
        label: "Customer Count Year to Date"
        group_label: "Time Relative"
        description: "Year-to-date (YTD) average of distinct Customer Count across the periods elapsed in the Order Retail 445 reporting year; an average across periods to date, not a running sum, since distinct counts are not additive. NULL when Customer Count is empty; not Sales Amount YTD."
        value_format: "#.####"
        type: average
        sql: ${TABLE}."Customer Count Year to Date";;
    }

    measure: Maximum_Order_Date {
        label: "Maximum Order Date"
        group_label: "Time Relative"
        description: "Latest / most recent order date key; when the last order was placed (recency). Contrast Minimum Order Date (earliest / first)."
        type: max
        sql: ${TABLE}."Maximum Order Date";;
    }

    measure: Minimum_Order_Date {
        label: "Minimum Order Date"
        group_label: "Time Relative"
        description: "Earliest / first order date key; when the first order was placed. Contrast Maximum Order Date (latest / most recent)."
        type: min
        sql: ${TABLE}."Minimum Order Date";;
    }

    measure: Sales_Amount_30_Period_Moving_Average {
        label: "Sales Amount 30 Period Moving Average"
        group_label: "Time Relative"
        description: "30 period moving / rolling / trailing average of Sales Amount (revenue) over the current period and the prior 29 on the Order Retail 445 calendar. Meant to execute at the Day level of the Order Retail 445 hierarchy; not the Customer Count moving average."
        value_format: "$#,##0.00"
        type: average
        sql: ${TABLE}."Sales Amount 30 Period Moving Average";;
    }

    measure: Sales_Amount_Next_Period {
        label: "Sales Amount Next Period"
        group_label: "Time Relative"
        description: "Next Period's  Sales Amount on Order Retail 445"
        value_format: "$#,##0.00"
        type: average
        sql: ${TABLE}."Sales Amount Next Period";;
    }

    measure: Sales_Amount_Prior_Period {
        label: "Sales Amount Prior Period "
        group_label: "Time Relative"
        description: "Order Reporting Hierarchy Previous Period Sales"
        value_format: "$#,##0.00"
        type: average
        sql: ${TABLE}."Sales Amount Prior Period";;
    }

    measure: Sales_Amount_Prior_Period_Growth {
        label: "Sales Amount Prior Period Growth"
        group_label: "Time Relative"
        description: "Order Retail 445 Growth since previous period."
        value_format: "$#,##0.00"
        type: average
        sql: ${TABLE}."Sales Amount Prior Period Growth";;
    }

    measure: Sales_Amount_Prior_Period_Growth_Percent {
        label: "Sales Amount Prior Period Growth Percent"
        group_label: "Time Relative"
        description: "Order Retail 445 Previous Period Growth Percent"
        value_format: "0.00%"
        type: average
        sql: ${TABLE}."Sales Amount Prior Period Growth Percent";;
    }

    measure: Sales_Amount_Prior_Year {
        label: "Sales Amount Prior Year"
        group_label: "Time Relative"
        description: "Previous Period Sales with a custom lookback key.  Use with [Order Custom PP445]"
        value_format: "$#,##0.00"
        type: average
        sql: ${TABLE}."Sales Amount Prior Year";;
    }

    measure: Sales_Amount_Year_to_Date {
        label: "Sales Amount Year to Date"
        group_label: "Time Relative"
        description: "Sales Amount Year-to-date Order Retail 445"
        value_format: "$#,##0.00"
        type: average
        sql: ${TABLE}."Sales Amount Year to Date";;
    }

    set: Customer_Details {
        fields: [Order_Quantity,Sales_Amount,Geography_City_State,Geography_City_City,Geography_Zip_Zip_Code]
    }

    set: Shipping_Details {
        fields: [Order_Quantity,Sales_Amount,Size,Style,Color,Product_Dimension_Product_Name]
    }

}
