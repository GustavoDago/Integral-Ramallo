SELECT DISTINCT D.codiart, D.descripart, D.stockact, D.Stockmin, D1.nomprov
FROM "ARTICULO.DB" D, "PROVEDOR.DB" D1
WHERE
(D.stockact < D.Stockmin )
 AND (D1.codiprov = D.provedor)
ORDER BY D.codiart, D.descripart, D.stockact, D1.nomprov