import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/common/appbar_widget.dart';
import 'package:smartbazar/features/auth/widgets/rich_text_widget.dart';
import 'package:smartbazar/features/widgets/custom_drawer_widget.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class NewScreen extends ConsumerStatefulWidget {
  const NewScreen({super.key});

  @override
  ConsumerState<NewScreen> createState() => _NewScreenState();
}

class _NewScreenState extends ConsumerState<NewScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: 30,
        ),
        NewSearchWidget()
      ],
    ));
  }
}

class NewSearchWidget extends StatelessWidget {
  const NewSearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
          decoration: BoxDecoration(
              color: const Color(0xFF46236a),
              border: Border.all(
                color: Colors.white
              ),
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  bottomLeft: Radius.circular(15))),
          child: const Column(
            children: [
              Icon(
                Icons.group,
                size: 11,
                color: Colors.white,
              ),
              Text(
                "Services",
                style: TextStyle(fontSize: 5, color: Colors.white),
              ),
            ],
          ),
        ),
        Container(
          width: 200,
          padding: EdgeInsets.only(top: 10.h),
          decoration: const BoxDecoration(color: Colors.white),
          child: const TextField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                width: 0.2,
                color: Colors.white
              )),
              hintText: "Search Services",
              hintStyle: TextStyle(
                fontSize: 10
              ),
              isCollapsed: true,
              contentPadding:
                  EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              disabledBorder: InputBorder.none,
              isDense: true,
              enabled: true,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15,
          
          ),
            decoration: BoxDecoration(

              border: Border.all(
                color: Colors.white
              ),
                color: const Color(0xFF46236a),
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(15),
                    bottomRight: Radius.circular(15))),
            child: const Padding(
              padding: EdgeInsets.all(2.0),
              child: Icon(
                
                Icons.search,
                color: Colors.white,
              ),
            )),
      ],
    );
  }
}
