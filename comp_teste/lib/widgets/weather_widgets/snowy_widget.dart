import 'package:comp_teste/widgets/weather_widgets/flakes_widget.dart';
import 'package:flutter/material.dart';

class SnowyWidget extends StatefulWidget {
  SnowyWidget({super.key, required this.margin });

  int margin;
  double margintop=0;

  @override
  State<SnowyWidget> createState() => _SnowyWidgetState();
}

class _SnowyWidgetState extends State<SnowyWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedContainer(
          margin: EdgeInsets.only(
              right:
                  widget.margin == 0 ? MediaQuery.of(context).size.width : 0),
          duration: const Duration(seconds: 1),
          width: 200,
          height: 116,
          child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/icons/newcloud.png')))),
        ),
        Align(
          alignment: Alignment.center,
          child: AnimatedContainer(
              duration: const Duration(seconds: 1),
              margin: EdgeInsets.only(
                  right:
                      widget.margin == 0 ? MediaQuery.of(context).size.width : 0),
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth:100 ),
                child: const Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(top: 10,right: 10,bottom: 54.0),
                        child: FlakeWidget(),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 64.0),
                        child: FlakeWidget(),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(top:30,right: 10,bottom: 34),
                        child: FlakeWidget(),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 64.0),
                        child: FlakeWidget(),
                      ),
                    )
                  ],
                ),
              )),
        ),
      ],
    );
  }

  @override
  void setState(VoidCallback fn) {
    if (widget.margintop == 20) {
      widget.margintop = 0;
    } else {
      widget.margintop = 20;
    }
    super.setState(fn);
  }
}
