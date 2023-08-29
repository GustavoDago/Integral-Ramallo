SELECT DISTINCT D.codiart, D.descripart, D1.nomprov
FROM "ARTICULO.DB" D, "PROVEDOR.DB" D1
WHERE
(D.stockact = 0)
 AND (D1.codiprov = D.provedor)
ORDER BY D.codiart, D.descripart, D1.nomprov