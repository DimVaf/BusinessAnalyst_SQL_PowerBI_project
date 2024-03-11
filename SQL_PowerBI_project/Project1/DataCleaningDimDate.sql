-- Data Cleaning --


-- Data Cleaning for DimDate table (dimension table for date data) --

SELECT 	[DateKey]
      ,[FullDateAlternateKey]
      --[DayNumberOfWeek]
      ,[EnglishDayNameOfWeek]
      --[SpanishDayNameOfWeek] 
      --[FrenchDayNameOfWeek]
      --[DayNumberOfMonth]
      --[DayNumberOfYear]
      ,[WeekNumberOfYear]
      ,[EnglishMonthName]
      --[SpanishMonthName]
      --[FrenchMonthName]
      ,[MonthNumberOfYear]
      ,[CalendarQuarter]
      ,[CalendarYear]
      --[CalendarSemester]
      --[FiscalQuarter]
      --[FiscalYear]
      --[FiscalSemester]
  FROM [AdventureWorksDW2019].[dbo].[DimDate]



    -- Keeping the appropriate columns --


  SELECT 
  [DateKey],
  [FullDateAlternateKey] as Date,       /* Setting easy to read aliases */
  [EnglishDayNameOfWeek] as Day, 
  [WeekNumberOfYear] as WeekNo, 
  [EnglishMonthName] as Month,
  left(englishmonthname,3) as MonthShort,
  [MonthNumberOfYear] as MonthNo, 
  [CalendarQuarter] as Quarter, 
  [CalendarYear] as Year
FROM 
  [AdventureWorksDW2019].[dbo].[DimDate]
  where calendaryear >= 2019                /* filtering dating using where clause for the dates that manager has told us to do */