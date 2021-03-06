--Sean Table Customer Profile
CREATE TABLE [Customer_Profile] (
	CustomerProfile_ID int IDENTITY(1,1) NOT NULL,
	Total_Orders int,
	Amount_Spent money,
	Average_Amount money,
	Last_Visit date,
	Total_Available_Points int,
	Lifetime_Points int,
	Redeemed_Points int,
	Lifetime_Redemptions int,
	Last_Redemption int,
	Available_Rewards int
);
Go

--Sean Table Food Truck Sales
CREATE TABLE [Food_Truck_Sales] (
	FoodTruck_Date date NOT NULL,
	Brewery_ID int NOT NULL,
	FoodTruck_Sales smallmoney NOT NULL,
	Is_Deleted bit NOT NULL DEFAULT 0
);
Go

--Sean Table Redemption History
CREATE TABLE [Redemption_History] (
	Redemption_ID int IDENTITY(1,1) NOT NULL,
	CustomerProfile_ID int NOT NULL,
	Reward_ID int NOT NULL,
	Points_Value int NOT NULL
);
Go

--Sean Table Rewards
CREATE TABLE [Rewards] (
	Reward_ID int IDENTITY (1,1) NOT NULL,
	Reward_Description varchar(256) NOT NULL,
	Redemption_Cost int NOT NULL,
	Is_Deleted bit NOT NULL DEFAULT 0
);