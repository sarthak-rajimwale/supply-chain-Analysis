SELECT TOP (1000) [Product_type]
      ,[SKU]
      ,[Price]
      ,[Availability]
      ,[Number_of_products_sold]
      ,[Revenue_generated]
      ,[Customer_demographics]
      ,[Stock_levels]
      ,[Lead_times]
      ,[Order_quantities]
      ,[Shipping_times]
      ,[Shipping_carriers]
      ,[Shipping_costs]
      ,[Supplier_name]
      ,[Location]
      ,[Lead_time]
      ,[Production_volumes]
      ,[Manufacturing_lead_time]
      ,[Manufacturing_costs]
      ,[Inspection_results]
      ,[Defect_rates]
      ,[Transportation_modes]
      ,[Routes]
      ,[Costs]
  FROM [queries].[dbo].[supply_chain_data]
 
select * from supply_chain_data;

select sum(Number_of_products_sold) as Total_Products_Sold
from supply_chain_data;

select Product_type,sum(Number_of_products_sold) as Total_Products_Sold
from supply_chain_data
group by Product_type; 

select sum(Revenue_generated)
from supply_chain_data;

select Product_type,sum(Revenue_generated)
from supply_chain_data
group by Product_type;

SELECT  sum(Availability) as Total_Available
FROM supply_chain_data;

select sum(Stock_levels) as Total_Stock
from supply_chain_data;

select Product_type,sum(Availability) as Total_Available,sum(Stock_levels) as Total_Stock
from supply_chain_data
group by Product_type;

select Product_type,avg(lead_time) as AvgLeadTime
from supply_chain_data
group by Product_type;

select Customer_demographics,count(*) as Total_Purchases
from supply_chain_data
group by Customer_demographics;

select Customer_demographics,avg(Shipping_times) as Avg_Shipping_Times,avg(Shipping_costs) as Avg_Shipping_Cost
from supply_chain_data
group by Customer_demographics;

select Supplier_name,avg(Lead_times) as AvgLeadTimes , avg(Defect_rates) as AvgDefectRates
from supply_chain_data
group by Supplier_name;

select Supplier_name,avg(Manufacturing_costs) as ManufacturingCosts,avg(Shipping_costs) as Avg_Shipping_Costs
from supply_chain_data
group by Supplier_name;

select Transportation_modes,avg(Shipping_times) as AvgShippingTimes, avg(Shipping_costs) as Avg_Shipping_Cost
from supply_chain_data
group by Transportation_modes;

select Shipping_carriers,avg(Shipping_times) as AvgShippingTimes,avg(Shipping_costs) as AvgShippingCost
from supply_chain_data
group by Shipping_carriers;

SELECT SUM(Manufacturing_costs) AS TotalManufacturingCost, SUM(Shipping_costs) AS TotalTransportationCost
FROM supply_chain_data;

select Supplier_name, AVG(Manufacturing_costs) as AvgManufacturingCost, AVG(Shipping_costs) as AvgTransportationCost
from supply_chain_data
group by Supplier_name;

select Transportation_modes,Routes, avg(Shipping_times) as AvgShippingTime, avg(Shipping_costs) as AvgShippingCost
from supply_chain_data
group by Transportation_modes, Routes;

SELECT Shipping_carriers, AVG(Shipping_times) AS AvgShippingTime, AVG(Shipping_costs) AS AvgShippingCost
FROM supply_chain_data
GROUP BY Shipping_carriers;

SELECT SUM(Manufacturing_costs) AS TotalManufacturingCost, SUM(Shipping_costs) AS TotalTransportationCost
FROM supply_chain_data;

SELECT Product_type, AVG(Manufacturing_costs) AS AvgManufacturingCost, AVG(Shipping_costs) AS AvgTransportationCost
FROM supply_chain_data
GROUP BY Product_type;

SELECT Product_type, AVG(Defect_rates) AS AvgDefectRate
FROM supply_chain_data
GROUP BY Product_type;

SELECT Product_type, SUM(Revenue_generated) AS TotalRevenue
FROM supply_chain_data
GROUP BY Product_type;

SELECT Product_type, 
       SUM(Number_of_products_sold) AS TotalSold, 
       AVG(Stock_levels) AS AverageStock,
       SUM(Number_of_products_sold) / AVG(Stock_levels) AS InventoryTurnoverRatio
FROM supply_chain_data
GROUP BY Product_type;

SELECT Product_type,
       Supplier_name,
       AVG(Lead_times) AS AvgLeadTime
FROM supply_chain_data
GROUP BY Product_type, Supplier_name;

SELECT Customer_demographics,
       AVG(Manufacturing_costs + Shipping_costs) AS AvgCostPerOrder
FROM supply_chain_data
GROUP BY Customer_demographics;

SELECT Supplier_name,
       (AVG(Lead_times) + AVG(Defect_rates)) / 2 AS SupplierScore
FROM supply_chain_data
GROUP BY Supplier_name;

SELECT Supplier_name,
       AVG(Defect_rates) AS AvgDefectRate
FROM supply_chain_data
GROUP BY Supplier_name;

SELECT Product_type,
       Customer_demographics,
       SUM(Revenue_generated) AS TotalRevenue,
       SUM(Revenue_generated) / (SELECT SUM(Revenue_generated) FROM supply_chain_data) AS RevenueContribution
FROM supply_chain_data
GROUP BY Product_type, Customer_demographics;

SELECT Product_type,
       AVG(Manufacturing_costs / Production_Volumes) AS AvgManufacturingCostPerUnit
FROM supply_chain_data
GROUP BY Product_type;


