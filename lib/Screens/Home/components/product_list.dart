import 'package:flutter/material.dart';

import '../../../main.dart';
import '../../../model/product_model.dart';

class ProductList extends StatelessWidget {
  const ProductList({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
            constraints: BoxConstraints(maxWidth: size.width - 300),
            child: Column(children: [
              GridView.builder(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
                itemBuilder: (context, index) => Products(
                  press: () {  }, product: products[index],
                  ),
                  itemCount: products.length,
              ),
            ]),
          );
  }
}

class Products extends StatelessWidget {
  const Products({
    Key? key, required this.product, required this.press,
  }) : super(key: key);
final Product product;
final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: InkWell(
        onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailPage()));
        },
        child: Material(
          elevation: 5,
          borderRadius: BorderRadius.circular(5),
          child: Container(
            height: 370,
            width: 270,
            child: Column(children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: 
                Image.asset(product.image,fit: BoxFit.cover),),
                SizedBox(height: 10,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(product.name,style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),    
                    Text(product.dist),
                    Text(product.dmy),
                    Text(product.price,style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),                          
                  ],
                ),
            ]),
          ),
        ),
      ),
    );
  }
}