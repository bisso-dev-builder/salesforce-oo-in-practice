/**
 * @author eduardo.bisso - dev-builder
 */
@isTest
public class PaymentCallbackInboundFixtureFactory {

    public static final String DEFAULT_PAYMENT_CALLBACK_PAYLOAD = '{"transactionId":"NMK23UY231237U1ASYTQ2","orderId":"422342323","fee":"3.0","transactionType":"web_accept","productType":"Web","paymentType":"instant","paymentCycle":"1","productCode":"Donation","productId":"GNX32N6JRXYWW","paymentStatus":"Completed","initialPaymentAmount":"1000.0","tax":15.0,"amount":1000.00,"paymentGross":1015.00,"paymentDate":"2023-11-29T11:11:11","createdDate":"2023-11-29T11:11:11","currencyCode":"BRL","payer":{"id":"WY9C96JF9UHFQ","name":"Bisso","email":"customer.email@mail.com","document":"87517715860","shipping":{"street":"Rua Xyz","streetNumber":"31","streetAdditionalInfo":"","city":"São Paulo","state":"SP","country":"BR","zipCode":"312340123"},"billing":{"street":"Rua Xyz","streetNumber":"31","streetAdditionalInfo":"","city":"São Paulo","state":"SP","country":"BR","zipCode":"312340123"}}}';

    public static PaymentCallbackInbound newPaymentCallbackInbound () {
        return fromJson(DEFAULT_PAYMENT_CALLBACK_PAYLOAD);
    }

    public static PaymentCallbackInbound fromJson ( String payload ) {

        return (PaymentCallbackInbound) JSON.deserialize(payload, PaymentCallbackInbound.class);

    } 

    public static PaymentCallbackInbound newPaymentCallbackWithoutBillingAddress () {

        String payload = '{ "transactionId": "NMK23UY231237U1ASYTQ2", "orderId": "422342323", "fee": "3.0", "transactionType": "web_accept", "productType": "Web", "paymentType": "instant", "paymentCycle": "1", "productCode": "Donation", "productId": "GNX32N6JRXYWW", "paymentStatus": "Completed", "initialPaymentAmount": "1000.0", "tax": 15, "amount": 1000, "paymentGross": 1015, "paymentDate": "2023-11-29T11:11:11", "createdDate": "2023-11-29T11:11:11", "currencyCode": "BRL", "payer": { "id": "WY9C96JF9UHFQ", "name": "Bisso", "email": "customer.email@mail.com", "document": "87517715860", "shipping": { "street": "Rua Xyz", "streetNumber": "31", "streetAdditionalInfo": "", "city": "São Paulo", "state": "SP", "country": "BR", "zipCode": "312340123" } } }';

        return fromJson(payload);

    }


}