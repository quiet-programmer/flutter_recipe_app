import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';

class FilterScreen extends StatefulWidget {
  static const routeName = '/filters';

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool _glutenFree = false;
  bool _vegetarian = false;
  bool _vegan = false;
  bool _lactoseFree = false;

  Widget _buildSwitchListTile(
      String title, String subTitle, bool getValue, Function updateValue) {
    return SwitchListTile(
      title: Text(title),
      value: getValue,
      subtitle: Text(subTitle),
      onChanged: updateValue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Filters"),
      ),
      drawer: MainDrawer(),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20.0),
            child: Text(
              "Adjust your meal selection",
              style: Theme.of(context).textTheme.title,
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                _buildSwitchListTile(
                  "Gluten Free",
                  "Will display only Gluten Free Food",
                  _glutenFree,
                  (value) {
                    setState(() {
                      _glutenFree = value;
                  },);
                  },
                ),
                _buildSwitchListTile(
                  "Vegetarian",
                  "Will display only Vegetarian Food",
                  _vegetarian,
                  (value) {
                    setState(() {
                      _vegetarian = value;
                  },);
                  },
                ),
                _buildSwitchListTile(
                  "Vegan",
                  "Will display only Vegan Food",
                  _vegan,
                  (value) {
                    setState(() {
                      _vegan = value;
                  },);
                  },
                ),
                _buildSwitchListTile(
                  "Lactose Free",
                  "Will display only Lactose Free Food",
                  _lactoseFree,
                  (value) {
                    setState(() {
                      _lactoseFree = value;
                  },);
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
