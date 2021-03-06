import 'package:flutter/material.dart';
import 'package:fluttermyshopapp/providers/orders.dart';
import 'package:fluttermyshopapp/widgets/app_drawer.dart';
import 'package:fluttermyshopapp/widgets/order_item.dart';
import 'package:provider/provider.dart';

class OrdersScreen extends StatelessWidget {
  static const routeName = '/orders';
  @override
  Widget build(BuildContext context) {
    final orderData = Provider.of<Orders>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Orders'),
      ),
      drawer: AppDrawer(),
      body: ListView.builder(
        itemCount: orderData.orders.length,
        itemBuilder: (ctx, i) => OrderItems(
          order: orderData.orders[i],
        ),
      ),
    );
  }
}
