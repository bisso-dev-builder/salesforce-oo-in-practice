/**
 * @author eduardo.bisso - dev-builder
 */
@isTest
public class ProductFixtureFactory {

    public static Product2 createProduct() {
        return  createProduct ( 'Test' );
    }

    public static Product2 createProduct(String productCode) {
        return  createProduct ( newProduct( productCode ) );
    }

    public static Product2 newProduct() {
        return newProduct( 'Test' );
    }

    public static Product2 newProduct(String productCode) {

        return new Product2 ( StockKeepingUnit = 'Test' + productCode
                , Name = productCode
                , ProductCode = productCode
                , Description = productCode       
        ); 
    }

    public static Product2 createProduct(Product2 product) {

        insert product;
        return product;

    }

    public static Product2 fromJson (String payload) {
        return (Product2) JSON.deserialize(payload, Product2.class);
    }
    
    public static List<Product2> fromJsonArray (String payload) {
        return (List<Product2>) JSON.deserialize(payload, List<Product2>.class);
    }

}
