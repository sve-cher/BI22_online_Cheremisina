--4. ������ �� ���� ������ AdventureWorks2017 ��������� ������:

--a) ����� ����� ����������� ��� � ����� ������������ ������ �������� �� Production.Product.
Select min(weight) as min_weight, max(size) as max_size
From Production.Product;

--b) ����� ����� ����������� ��� � ����� ������������ ������ �������� ��� ������ ������������ ProductSubcategoryID 
--�� Production.Product.
Select ProductSubcategoryID, min(weight) as min_weight, max(size) as max_size
From Production.Product
Group by ProductSubcategoryID;

--c) ����� ����� ����������� ��� � ����� ������������ ������ �������� ��� ������ ������������
--ProductSubcategoryID �� Production.Product, ��� �������� ������ ����� ���������� ���� (Color).
Select ProductSubcategoryID as ProductSubcategoryID_for_red, min(weight) as min_weight, max(size) as max_size
From Production.Product
Where Color = 'Red'
Group by ProductSubcategoryID;


--d) ����� ��� ������������ ��������� ProductSubcategoryID �� Production.Product, ��� ����� ����������� ��� ��������
--������ 50.


Select ProductSubcategoryID, min(weight) as min_weight
From Production.Product
Group by ProductSubcategoryID
Having min(weight) > 50

--e) ����� ��� ������������ ��������� ProductSubcategoryID �� Production.Product, ��� ����� ����������� ��� �������� �
--������ Black ������ 50.
Select ProductSubcategoryID, min(weight) as min_weight
From Production.Product
Where Color = 'Black'
Group by ProductSubcategoryID
Having min(weight) > 50;


--f) ������� TaxType �� Sales.SalesTaxRate, ��� ����������� TaxRate ������ 7.
Select TaxType
From Sales.SalesTaxRate
Group by TaxType
Having min(TaxRate) < 7;

