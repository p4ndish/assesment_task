import 'package:assesment_task/features/products_shop/domain/entities/product_model.dart';
import 'package:flutter/material.dart';

class ProductShowScreen extends StatelessWidget {
  final ProductModel data;
  const ProductShowScreen({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: Column( 
        children: [ 
          Container( 
            child: Image.network(data.image),

          ), 

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Row( 
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [ 
                Container( 
                  child: Text( 
                    data.category
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/images/starIcon.png"),
                    Text(
                      "(${data.rating.toString()})",
                      style: const TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ), 

          Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                data.title,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),

              // price
              Text(
                "\$${data.price}",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),

        Container(
          height: 60,
          child: Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, index) { 
                return Container(
                  height: 20,
                  child: Card(
                    child: Text("4"),
                  ),
                );
              }
              ),
          ),
        )

        ],
      ),
    );
  }
}