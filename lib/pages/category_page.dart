import 'package:ecommerce_app/providers/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CategoryPage extends StatelessWidget {

  static const String routeName = '/category';

  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    Provider.of<ProductProvider>(context, listen: false).getAllCategories();

    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      //static const String routeName = '/product';
      appBar: AppBar(
        title: const Text('Category Page'),
      ),

      body: Stack(
        children: [

          Consumer<ProductProvider>(
            builder: (context, provider, _) => provider.categoryList.isEmpty
                ? const Center(
              child: Text('No item found', style: TextStyle(fontSize: 18),),
            )
                : ListView.builder(
              itemCount: provider.categoryList.length,
              itemBuilder: (context, index) {
                final category = provider.categoryList[index];
                return Card(
                  color: Colors.white,
                  child: ListTile(
                    title:
                    Text('${category.catName}(${category.productCount})'),
                    trailing: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [

                        IconButton(onPressed: (){}, icon: Icon(Icons.edit),),
                        SizedBox(width: 5,),
                        IconButton(onPressed: (){}, icon: Icon(Icons.delete),),


                      ],
                    ),

                  ),
                );
              },
            ),
          ),

          DraggableScrollableSheet(
            initialChildSize: 0.1,
            minChildSize: 0.1,
            maxChildSize: 0.5,
            builder: (BuildContext context, ScrollController scrollController) {
              return Card(
                color: Colors.blue[100],
                child: ListView(
                  padding: const EdgeInsets.all(10),
                  controller: scrollController,
                  children: [

                    const ListTile(
                      title: Text('Add CATEGORY'),
                    ),

                    TextField(
                      controller: nameController,
                      decoration: const InputDecoration(
                        hintText: 'Enter New Category',
                        filled: true,
                      ),
                    ),

                    const SizedBox(height: 20,),

                    ElevatedButton(onPressed: () async {
                      await Provider.of<ProductProvider>(context, listen: false).addCategory(nameController.text);
                      nameController.clear();
                    }, child: Text('Add')),

                  ],
                ),
              );
            },

          ),

        ],
      ),

    //   body: Consumer<ProductProvider>(
    //     builder: (context, provider, _) => provider.categoryList.isEmpty
    //         ? const Center(
    //             child: Text('No item found', style: TextStyle(fontSize: 18),),
    //           )
    //         : ListView.builder(
    //             itemCount: provider.categoryList.length,
    //             itemBuilder: (context, index) {
    //               final category = provider.categoryList[index];
    //               return ListTile(
    //                 title:
    //                     Text('${category.catName}(${category.productCount})'),
    //               );
    //             },
    //           ),
    //   ),
    //
    //   bottomSheet: DraggableScrollableSheet(
    //     initialChildSize: 0.1,
    //     minChildSize: 0.1,
    //     maxChildSize: 0.5,
    //     builder: (BuildContext context, ScrollController scrollController) {
    //       return Card(
    //         color: Colors.blue[100],
    //         child: ListView(
    //           padding: const EdgeInsets.all(10),
    //           controller: scrollController,
    //           children: [
    //
    //             const ListTile(
    //               title: Text('Add CATEGORY'),
    //             ),
    //
    //             TextField(
    //               controller: nameController,
    //               decoration: const InputDecoration(
    //                 hintText: 'Enter New Category',
    //                 filled: true,
    //               ),
    //             ),
    //
    //             const SizedBox(height: 20,),
    //
    //             ElevatedButton(onPressed: () async {
    //               await Provider.of<ProductProvider>(context, listen: false).addCategory(nameController.text);
    //               nameController.clear();
    //             }, child: Text('Add')),
    //
    //           ],
    //         ),
    //       );
    //     },
    //
    // ),

    );
  }
}
