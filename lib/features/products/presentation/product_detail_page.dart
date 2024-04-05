import 'package:flutter/material.dart';
import '../domain/product.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes do Produto'),
        backgroundColor: Color.fromARGB(255, 17, 211, 195),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: PageView(
                children: product.images
                    .map((e) => Image.network(e, fit: BoxFit.cover))
                    .toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.title,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 17, 211, 195), 
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    product.brand,
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.grey[600],
                    ),
                  ),
                  SizedBox(height: 16),
                  ListTile(
                    leading: Icon(Icons.category, color: Color.fromARGB(255, 204, 11, 11)),
                    title: Text(
                      'Categoria',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0), 
                      ),
                    ),
                    subtitle: Text(
                      product.category.replaceAll('_', ' ').toUpperCase(),
                      style: TextStyle(
                        color: Colors.grey[600],
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.description, color: Color.fromARGB(255, 211, 111, 17)), 
                    title: Text(
                      'Descrição',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0), 
                      ),
                    ),
                    subtitle: Text(
                      product.description,
                      style: TextStyle(
                        color: Colors.grey[600],
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.price_change, color: Color.fromARGB(255, 211, 192, 17)), 
                    title: Text(
                      'Preço',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0), 
                      ),
                    ),
                    subtitle: Text(
                      '\$${product.price.toStringAsFixed(2)}',
                      style: TextStyle(
                        color: Colors.grey[600],
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.rate_review, color: Color.fromARGB(255, 33, 211, 17)), 
                    title: Text(
                      'Avaliação',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0), 
                      ),
                    ),
                    subtitle: Text(
                      product.rating.toStringAsFixed(2),
                      style: TextStyle(
                        color: Colors.grey[600],
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.production_quantity_limits, color: Color.fromARGB(255, 17, 69, 211)), 
                    title: Text(
                      'Estoque',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0), 
                      ),
                    ),
                    subtitle: Text(
                      product.stock.toStringAsFixed(0),
                      style: TextStyle(
                        color: Colors.grey[600],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}