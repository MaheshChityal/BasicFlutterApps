import 'package:flutter/material.dart';
import 'package:meals_app/widgets/filtersList.dart';

enum Filter { glutenFree, lactoseFree, vegitarian, vegan }

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({super.key ,required this.currentFilters});

  final Map<Filter ,bool>currentFilters;

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  var _glutenFreeFilterSet = false;
  var _lactoseFreeFilterSet = false;
  var _vegitarianFilterSet = false;
  var _veganFilterSet = false;

  @override
  void initState() {
    super.initState();
    _glutenFreeFilterSet = widget.currentFilters[Filter.glutenFree]!;
    _lactoseFreeFilterSet = widget.currentFilters[Filter.lactoseFree]!;
    _vegitarianFilterSet = widget.currentFilters[Filter.vegitarian]!;
    _veganFilterSet = widget.currentFilters[Filter.vegan]!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Filters'),
      ),
      // drawer: MainDrawer(onSelectScreen: (identifier) {
      //   Navigator.of(context).pop();
      //   if (identifier == 'meals') {
      //     Navigator.of(context).push(
      //       MaterialPageRoute(
      //         builder: (ctx) =>const TabsScreen(),
      //       ),
      //     );
      //   }
      // }),
      body: WillPopScope(
        onWillPop: () async {
          Navigator.of(context).pop({
            Filter.glutenFree: _glutenFreeFilterSet,
            Filter.lactoseFree: _lactoseFreeFilterSet,
            Filter.vegitarian: _vegitarianFilterSet,
            Filter.vegan: _veganFilterSet,
          });
          return false;
        },
        child: Column(
          children: [
            FiltersList(
              subtitle: 'Only include gluten-free meals',
              title: 'Gluten-Free',
              value: _glutenFreeFilterSet,
            ),
            FiltersList(
              subtitle: 'Only include lactose-free meals',
              title: 'Lactose-Free',
              value: _lactoseFreeFilterSet,
            ),
            FiltersList(
              subtitle: 'Only include vegitarian meals',
              title: 'Vegitarian',
              value: _vegitarianFilterSet,
            ),
            FiltersList(
              subtitle: 'Only include vegan meals',
              title: 'Vegan',
              value: _veganFilterSet,
            ),
          ],
        ),
      ),
    );
  }
}
