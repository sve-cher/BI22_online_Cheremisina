/*--������� ��� ������� �� ������� Sales.SalesTerritory.
Select *
From Sales.SalesTerritory */

/*--������� ������� TerritoryID � Name �� ������� Sales.SalesTerritory.
Select TerritoryID, Name
From Sales.SalesTerritory*/

/*--������� ��� ������, ������� ���������� ��� ����� �� Person.Person �
--LastName = �Norman�.
Select *
From Person.Person
Where LastName = 'Norman'*/


--������� ��� ������ �� Person.Person, ��� EmailPromotion �� �����2.
--�������� ��� ��������� �������.
Select *
From Person.Person
--Where EmailPromotion !=2
Where Not EmailPromotion = 2