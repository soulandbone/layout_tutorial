import 'package:flutter/material.dart';
import 'package:layout_tutorial/constants/app_colors.dart';
import 'package:layout_tutorial/constants/lists/app_lists.dart';
import 'package:layout_tutorial/constants/lists/layout_options.dart';
import 'package:layout_tutorial/models/contact.dart';
import 'package:layout_tutorial/widgets/main_app_bar.dart';

class ListViewScreen extends StatelessWidget implements HasLayoutGroup {
  const ListViewScreen({super.key, required this.onLayoutToggle});

  @override
  final VoidCallback onLayoutToggle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.inkBlack,
      appBar: MainAppBar(
        layoutGroup: LayoutGroup.scrollable,
        layoutType: LayoutType.list,
        changeLayoutHandler: onLayoutToggle,
      ),
      body: Center(
        child: ListView.builder(
          itemCount: AppLists.contacts.length,
          itemBuilder: (context, index) => Card(
            color: Colors.black45,
            child: Card(
              color: AppColors.reddishBrown,
              child: ContactTile(contact: AppLists.contacts[index]),
            ),
          ),
        ),
      ),
    );
  }
}

class ContactTile extends ListTile {
  ContactTile({required this.contact, super.key})
    : super(
        leading: CircleAvatar(
          backgroundColor: AppColors.mutedSageGreen,
          child: Text(contact.name[0]),
        ),
        title: Text(contact.name, style: TextStyle(color: AppColors.thistle)),
        subtitle: Text(
          contact.email,
          style: TextStyle(color: AppColors.creamyBeige),
        ),
      );

  final Contact contact;
}
