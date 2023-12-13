import 'package:flutter/material.dart';

class FiltersList extends StatefulWidget {
  FiltersList(
      {super.key,
      required this.subtitle,
      required this.title,
      required this.value});

  final String title;
  final String subtitle;
  bool value;

  @override
  State<FiltersList> createState() => _FiltersListState();
}

class _FiltersListState extends State<FiltersList> {
  // var _glutenFreeFilter = false;

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      value: widget.value,
      onChanged: (isChecked) {
        setState(() {
          widget.value = isChecked;
        });
      },
      title: Text(
        widget.title,
        style: Theme.of(context)
            .textTheme
            .titleLarge!
            .copyWith(color: Theme.of(context).colorScheme.onBackground),
      ),
      subtitle: Text(
        widget.subtitle,
        style: Theme.of(context)
            .textTheme
            .labelMedium!
            .copyWith(color: Theme.of(context).colorScheme.onBackground),
      ),
      activeColor: Theme.of(context).colorScheme.tertiary,
      contentPadding: const EdgeInsets.only(left: 34, right: 22),
    );
  }
}
