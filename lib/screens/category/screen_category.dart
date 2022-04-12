import 'package:flutter/material.dart';
import 'package:pmm/screens/category/Expense_category_list.dart';
import 'package:pmm/screens/category/income_category_list.dart';

class ScreenCategoty extends StatefulWidget {
  const ScreenCategoty({Key? key}) : super(key: key);

  @override
  State<ScreenCategoty> createState() => _ScreenCategotyState();
}

class _ScreenCategotyState extends State<ScreenCategoty> with SingleTickerProviderStateMixin{
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: _tabController,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
          tabs: const [
            Tab(text: 'INCOME'),
            Tab(text: 'EXPENSE'),
          ],
        ),

        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: const [
              IncomeCategoryList(),
              ExpenseCategoryList(),
            ],
          ),
        ),
        
      ],
    );
  }
}
