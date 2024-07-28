USE AdventureWorks2019
GO

--Se quiere conocer el método de envío, transporte y tarifa de envío

SELECT ppo.PurchaseOrderID, ppo.ShipMethodID, psm.Name AS Metodo_envio, ppo.RevisionNumber AS Numero_revision, ppo.Freight AS Transporte, psm.Shipbase AS Tarifa, ppo.Status
FROM Purchasing.PurchaseOrderHeader ppo
INNER JOIN Purchasing.ShipMethod psm
ON ppo.ShipMethodID = psm.ShipMethodID