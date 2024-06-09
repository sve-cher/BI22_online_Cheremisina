/*������� ������ BusinessEntityID � LoginID �� ������� HumanResources.Employee 
��� ����� �������� ���� � ������ 1969-01-29 (BirthDate).*/
Select BusinessEntityID, LoginID
From [AdventureWorks2017].[HumanResources].[Employee]
Where Gender = 'F' and BirthDate > '1969-01-29';


/*������� ���������� PersonType ��� ����� �� Person.Person, 
��� LastName ���������� � ����� � ��� � ����� N � ����������� ��������� ���� MiddleName.*/
Select  distinct PersonType
From [AdventureWorks2017].[Person].[Person]
Where (LastName like 'M%' or LastName like 'N%') and MiddleName is not null;


/*������� ������ �� Sales.SpecialOffer ������� � ����������� DiscountPct, 
������� �������� ����������� � 2013-01-01 �� 2014-01-01 (���� StartDate).*/
Select *
From Sales.SpecialOffer
Where StartDate between '2013-01-01' and '2014-01-02'
Order by DiscountPct desc;

/*����� ProductID � Name �� Production.Product, ��� � ����� ProductNumber ������ ����� �B� 
� ��������� ������������� �� �����, � ProductID ��������������� � ������� ��������.*/
Select ProductID,Name
From Production.Product
Where ProductNumber like '_B%[0-9]'
Order by ProductID desc;

/*������� ProductId, Name �� ������� Production.Product ��� ���� ���� Red, 
���� Silver ��� Black � Size ����� �����-���� ��������*/
Select ProductId, Name
From Production.Product
Where Color in ('Red', 'Silver', 'Black') and Size is not null;


/*������� ���������� JobTitle �� HumanResources.Employee, 
��� SickLeaveHours ������ ��� ����� 15 ��� VacationHours �� ������ 20,
�� ����� ���������� ��������� ��� JobTitle y ������� ���� ����� �Vice President� ��� �Manager�.*/
Select distinct JobTitle
From HumanResources.Employee
Where (SickLeaveHours <= 15 or VacationHours <= 20) and JobTitle not like '%Vice President%' and JobTitle not like '%Manager%'

/*������� ������, ������� �������� ��������� ����������: 
SELECT LastName, FirstName 
FROM Person.Person 
WHERE LastName LIKE 'R%' 
ORDER BY FirstName ASC, LastName DESC

������� �� ������� Person.Person ������� LastName � FirstName, ��� 
LastName ���������� �� R, ������� FirstName ���������� �� �����������,  � ������� LastName - �� ��������.*/

