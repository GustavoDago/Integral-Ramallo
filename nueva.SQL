/* ALIAS: Agro */
SELECT Cheques.imporcheq
FROM "Cheques.DB" Cheques
   INNER JOIN "Compras.db" Compras
   ON  (Cheques.Destino = Compras.Codigo)  
WHERE  Cheques.T_destino = 'C' 
