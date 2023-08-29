
SELECT DISTINCT  D1.banco, D.numero, D.Imporcheq
FROM "CHEQUES.DB" D, "BANCOS.DB" D1
WHERE
(D.ent_car = 'C')
 AND (D1.codigo = D.banco)
ORDER BY  D1.banco, D.numero, D.imporcheq