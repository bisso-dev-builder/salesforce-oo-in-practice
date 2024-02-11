PurchaseOrder poOne 
                = new PurchaseOrder ();


PurchaseOrder poTwo 
                = new PurchaseOrder (
                     '009089983'
                    , new Account () );

PurchaseOrder poOther 
                = new PurchaseOrder (
                     '009089983'
                    , new Account ()
                    , new PurchaseOrder.Address () );                    


PurchaseOrder poOther2
                = new PurchaseOrder (
                     '009089983'
                    , new Account ()
                    , new PurchaseOrder.Address ()
                    , new PurchaseOrder.Address () ); 
 

PurchaseOrder poOther3
                = new PurchaseOrder (
                     '009089983'
                    , new Account ()
                    , Date.today ()
                    , 'kweiuw2ui2ws'
                    , 'kjasdswsdjkdsfjks'
                    , 'iewidsfsdiowew'
                    , '1232131' );   



List<PurchaseOrder.Item> items = new List<PurchaseOrder.Item>();

PurchaseOrder.Item item = new PurchaseOrder.Item();

item.id = '224234';
item.productCode = '33443535';
item.description = '33443535';
item.priceBookEntryId = '012373cjsxjfd';
item.quantity = 14.5;
item.price = 343.23;

items.add (item);

PurchaseOrder poOther4
                = new PurchaseOrder ();
                
PurchaseOrder.Item item = new PurchaseOrder.Item();

item.id = '224234';
item.productCode = '33443535';
item.description = '33443535';
item.priceBookEntryId = '012373cjsxjfd';
item.quantity = 14.5;
item.price = 343.23;

poOther4.addItem (item);               

PurchaseOrder poOther5
                = new PurchaseOrder ();
                
poOther5.addItem ( new PurchaseOrder.Item()
                                .withId ('224234')
                                .withProductCode ('33443535')
                                .withDescription ('33443535')
                                .withPriceBookEntryId ('012373cjsxjfd')
                                .withQuantity(14.5) 
                                .withPrice(343.23) );                