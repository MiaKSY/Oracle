SELECT * FROM customer;


SELECT productImageSrc, productName, productBrand 
FROM product;

SELECT purchaseDate
FROM purchase;

SELECT BoardContent
FROM board;

SELECT PRO.productImageSrc, PRO.productName, PRO.productBrand, PUR.purchaseDate, BO.BoardContent
FROM product PRO, purchase PUR, board BO
WHERE PRO.productName = PUR.productName
AND PRO.productName = BO.productName;