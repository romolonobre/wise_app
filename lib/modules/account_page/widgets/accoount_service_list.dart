import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wise/application/constants/contants.dart';
import 'package:wise/modules/account_page/widgets/account_controller.dart';

class AccountServiceList extends StatelessWidget {
  final AccountController accountController = Get.put(AccountController());

  final IconData icon;
  final String text;

  AccountServiceList({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 38,
        width: 38,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.blue.withOpacity(0.06),
        ),
        child: Icon(
          icon,
          color: blueMainColor,
          size: 21,
        ),
      ),
      title: Text(
        text,
        style: const TextStyle(
          color: blueMainColor,
          fontWeight: FontWeight.w600,
          fontSize: 13,
        ),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios_rounded,
        color: Colors.blue[300],
        size: 15,
      ),
    );
  }
}

class ListViewAccount extends StatelessWidget {
  const ListViewAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Account Sevices'),
          SizedBox(height: 20),
          Divider(height: 0, thickness: 1),
          AccountServiceList(
            icon: Icons.ac_unit_outlined,
            text: 'Account details',
          ),
          Divider(height: 0, thickness: 1),
          AccountServiceList(
            icon: Icons.devices,
            text: 'Receiving by email or phone',
          ),
          Divider(height: 0, thickness: 1),
          AccountServiceList(
            icon: Icons.date_range,
            text: 'Scheduled transfers',
          ),
          Divider(height: 0, thickness: 1),
          AccountServiceList(
            icon: Icons.timer,
            text: 'Direct Debit',
          ),
          Divider(height: 0, thickness: 1),
          AccountServiceList(
            icon: Icons.file_copy_outlined,
            text: 'Statements',
          ),
          Divider(height: 0, thickness: 1),
          AccountServiceList(
            icon: Icons.monetization_on_outlined,
            text: 'Account limits',
          ),
        ],
      ),
    );
  }
}
