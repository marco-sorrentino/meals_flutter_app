import 'package:flutter_riverpod/flutter_riverpod.dart';

enum Filter { glutenFree, lactofree, vegetarianFree, veganFree }

class FiltersNotifier extends StateNotifier<Map<Filter, bool>> {
  FiltersNotifier()
      : super({
          Filter.glutenFree: false,
          Filter.lactofree: false,
          Filter.vegetarianFree: false,
          Filter.veganFree: false,
        });

  void setFilter(Map<Filter, bool> choosenFilters) {
    state = choosenFilters;
  }

  void setFilters(Filter filter, bool isActive) {
    state = {
      ...state,
      filter: isActive,
    };
  }
}

final filterProvider =
    StateNotifierProvider<FiltersNotifier, Map<Filter, bool>>(
        (ref) => FiltersNotifier());
