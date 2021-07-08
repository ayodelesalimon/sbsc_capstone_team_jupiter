import 'package:flutter/material.dart';
import 'package:sbsc_capstone_team_jupiter/model/product/get_product.dart';
import 'package:sbsc_capstone_team_jupiter/services/product.dart';

class TestProduct extends StatefulWidget {
  const TestProduct({Key key}) : super(key: key);

  @override
  _TestProductState createState() => _TestProductState();
}

class _TestProductState extends State<TestProduct> {
  Future getProduct;
  ProductModel productModel;

  @override
  void initState() {
    super.initState();
    getProduct = fetchProducts();
  }

  fetchProducts() async {
    final data = await Product.getCategory();
    setState(() {
      productModel = data;
    });

    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              FutureBuilder(
                  future: getProduct,
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    dynamic children;
                    if (snapshot.hasError) {
                      children = Container(
                          height: 200,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.error_outline,
                                  color: Colors.red,
                                  size: 60,
                                ),
                                Text('Unable to Fetch Recent Activities')
                              ],
                            ),
                          ));
                    } else if (snapshot.connectionState ==
                          ConnectionState.done) {
                        Product data = snapshot.data;
                        return Column(
                          children: [
                           Text(data.toString()),
                          ],
                        );
                      } else {
                        children = Container(
                            height: 200,
                            child: Center(
                              child: CircularProgressIndicator(),
                            ));
                      }
                      return Container(child: children);
                    
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
