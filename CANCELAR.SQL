SELECT DISTINCT D.banco,D1.numero, D1.fecheque, D1.imporcheq
FROM "BANCOS.DB" D, "CHQ.DB" D1
WHERE
(D1.banco = D.codigo)
 AND (D1.ent_car = 'C')
ORDER BY D.banco, D1.numero, D1.fecheque, D1.imporcheq