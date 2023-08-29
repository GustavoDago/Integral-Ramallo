SELECT DISTINCT D.codiart, D.descripart, D.stockact, D1.Compra, D1.Venta
FROM "ARTICULO.DB" D, "CONSARTI.DB" D1
WHERE
(D1.codiart = D.codiart)
ORDER BY D.codiart, D.descripart, D.stockact, D1.Compra, D1.Venta