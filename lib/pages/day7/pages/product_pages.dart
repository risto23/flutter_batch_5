import 'package:drift/drift.dart';
import 'package:flutter/material.dart';
import 'package:flutter_batch_5/pages/day6/bloc/theme_cubit.dart';
import 'package:flutter_batch_5/pages/day6/bloc/theme_state.dart';
import 'package:flutter_batch_5/pages/day7/database/app_db.dart';
import 'package:flutter_batch_5/pages/day7/database/data/product_db.dart';
import 'package:flutter_batch_5/utils/singleton.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductPages extends StatefulWidget {
  const ProductPages({super.key});

  @override
  State<ProductPages> createState() => _ProductPagesState();
}

class _ProductPagesState extends State<ProductPages> {

  final productDb = ProductDb(getIt.get<AppDatabase>());
  final products = <Product>[];

  @override
  void initState() {
    super.initState();
    getAllProduct();
  }


  Future<void> getAllProduct() async {
    final data = await productDb.getAll();
    setState(() {
      products.clear();
      products.addAll(data);
    });
  }

  Future<void> addProduct() async {
    final product = ProductsCompanion(
      name:  Value('Product ${products.length + 1}'),
      price:  Value(1000),
    );
    await productDb.addProduct(product);
    await getAllProduct();
  }

  Future<void> deleteProduct(int id) async {
    await productDb.deleteProduct(id);
    await getAllProduct();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Pages'),
        actions: [
          IconButton(
            onPressed: () async {
              await addProduct();
            },
            icon: const Icon(Icons.add),
          ),
          BlocBuilder<ThemeCubit, ThemeState>(
            builder: (context, state) {
              if (state.themeMode == ThemeMode.dark) {
                return IconButton(
                  onPressed: () {
                    context.read<ThemeCubit>().setThemeMode(ThemeMode.light);
                  },
                  icon: Icon(Icons.light_mode),
                );
              } else {
                return IconButton(
                  onPressed: () {
                    context.read<ThemeCubit>().setThemeMode(ThemeMode.dark);
                  },
                  icon: Icon(Icons.dark_mode),
                );
              }
            },
          ),
        ],
      ),
      body: ListView.separated(
        itemCount: products.length,
        separatorBuilder: (_, __) => const Divider(),
        itemBuilder: (_ , index) {
          return ListTile(
            title: Text(products[index].name ?? ''),
            subtitle: Text("${products[index].price ?? 0}"),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () => deleteProduct(products[index].id),
                  icon: const Icon(Icons.delete),
                ),
              ],
            ),
            );
        },
      ),
    );
  }
}