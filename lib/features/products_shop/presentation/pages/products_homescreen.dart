import 'package:assesment_task/features/products_shop/domain/entities/product_model.dart';
import 'package:assesment_task/features/products_shop/presentation/bloc/products_shop_bloc.dart';
import 'package:assesment_task/features/products_shop/presentation/pages/show_product_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          // margin: EdgeInsets.only(top: 10),
          padding: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey[400],
          ),
          height: 80,
          width: 30,
          child: Container(),
        ),
        title: const Padding(
          padding: EdgeInsets.only(top: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Apr 23, 2023",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Text("Welcome, John Doe"),
            ],
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(Icons.notifications_active_outlined))
        ],
      ),
      body: BlocBuilder<ProductsShopBloc, ProductsShopState>(
        builder: (context, state) {
          if( state is ProductsShopLoading)  {
            return const Center(child: CircularProgressIndicator());
          }else if (state is ProductsShopLoaded){
            print(state.products);

          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 18),
                  child: const Text(
                    "Available Products",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.separated(
                    itemCount: state.products.length,
                    itemBuilder: (BuildContext context, index) {
                      return GestureDetector(
                        child: _card(context, state.products[index]),
                        onTap: () { 
                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => ProductShowScreen(data: state.products[index],)));
                        },
                        );
                    },
                    separatorBuilder: (BuildContext context, int index) =>
                        const Divider(),
                  ),
                )
              ],
            ),
          );
          }else {
            return const Center(child: Text("Something went wrong!"),);
          }
        },
      ),
    );
  }
}

Card _card(context, ProductModel data) {
  return Card(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            width: MediaQuery.of(context).size.width,
            child: Image.network(data.image)),
         Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                data.title,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
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
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                data.category,
                overflow: TextOverflow.clip,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Row(
                children: [
                  Image.asset("assets/images/starIcon.png"),
                  Text(
                    "(${data.rating.toString()})",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],

      // descriptions
    ),
  );
}
