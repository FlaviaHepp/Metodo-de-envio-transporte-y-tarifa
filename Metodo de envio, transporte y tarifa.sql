USE AdventureWorks2019
GO

--Se quiere conocer el m�todo de env�o, transporte y tarifa de env�o

SELECT ppo.PurchaseOrderID, ppo.ShipMethodID, psm.Name AS Metodo_envio, ppo.RevisionNumber AS Numero_revision, ppo.Freight AS Transporte, psm.Shipbase AS Tarifa, ppo.Status
FROM Purchasing.PurchaseOrderHeader ppo
INNER JOIN Purchasing.ShipMethod psm
ON ppo.ShipMethodID = psm.ShipMethodID