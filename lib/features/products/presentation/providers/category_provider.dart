import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/product_repository_impl.dart';

part 'category_provider.g.dart';

@riverpod
FutureOr<List<String>> categories(CategoriesRef ref) async {
  final categories =
      await ref.watch(productRepositoryProvider).findAllCategories();
  return categories;
}