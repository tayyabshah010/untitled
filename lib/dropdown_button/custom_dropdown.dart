import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDropDown extends StatefulWidget {
  final String text;
  final String text2;

  const CustomDropDown({Key? key, required this.text, required this.text2})
      : super(key: key);

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  late GlobalKey actionKey;
  late GlobalKey actionKey2;
  late OverlayEntry FloatingDropDown;
  late OverlayEntry FloatingDropDown2;

  late double height, width, xPosition, yPosition;
  late double height2, width2, xPosition2, yPosition2;
  late bool isDropdownOpened = false;
  late bool isDropdownOpened2 = false;

  @override
  void initState() {
    actionKey = LabeledGlobalKey(widget.text);
    actionKey2 = LabeledGlobalKey(widget.text);
    super.initState();
  }

  void findDropdownData() {
    RenderBox renderBox =
        actionKey.currentContext?.findRenderObject() as RenderBox;

    height = renderBox.size.height;
    width = renderBox.size.width;
    Offset offset = renderBox.localToGlobal(Offset.zero);
    xPosition = offset.dx;
    yPosition = offset.dx;
  }

  void findDropdownData2() {
    RenderBox renderBox2 =
        actionKey2.currentContext?.findRenderObject() as RenderBox;

    height2 = renderBox2.size.height;
    width2 = renderBox2.size.width;
    Offset offset2 = renderBox2.localToGlobal(Offset.zero);
    xPosition2 = offset2.dx;
    yPosition2 = offset2.dx;
  }

  OverlayEntry _CreateFloatingDropDown() {
    return OverlayEntry(builder: (context) {
      return Positioned(
        left: xPosition,
        width: width,
        top: yPosition + height + 20,
        height: 4 * height + 40,
        child: DropDown(
          itemHeight: height,
        ),
      );
    });
  }

  OverlayEntry _CreateFloatingDropDown2() {
    return OverlayEntry(builder: (context) {
      return Positioned(
        left: xPosition2,
        width: width2,
        top: yPosition2 + height2 ,
        height: 4 * height2 + 40,
        child: DropDown2(
          itemHeight2: height2,
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            child: GestureDetector(
              key: actionKey,
              onTap: () {
                setState(() {
                  if (isDropdownOpened) {
                    FloatingDropDown.remove();
                  } else {
                    findDropdownData();
                    FloatingDropDown = _CreateFloatingDropDown();
                    Overlay.of(context)?.insert(FloatingDropDown);
                  }

                  isDropdownOpened = !isDropdownOpened;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.red.shade600,
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(
                  children: [
                    Text(
                      widget.text.toUpperCase(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.arrow_drop_down,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        //===================2nd menu
        Expanded(
          child: Container(
            child: GestureDetector(
              key: actionKey2,
              onTap: () {
                setState(() {
                  if (isDropdownOpened2) {
                    FloatingDropDown2.remove();
                  } else {
                    findDropdownData2();
                    FloatingDropDown2 = _CreateFloatingDropDown2();
                    Overlay.of(context)?.insert(FloatingDropDown2);
                  }

                  isDropdownOpened2 = !isDropdownOpened2;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.red.shade600,
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(
                  children: [
                    Text(
                      widget.text2.toUpperCase(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.arrow_drop_down,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class DropDown extends StatelessWidget {
  final double itemHeight;

  const DropDown({Key? key, required this.itemHeight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment(-0.85, 0),
          child: ClipPath(
            clipper: ArrowClipper(),
            child: Container(
              height: 20,
              width: 30,
              decoration: BoxDecoration(
                color: Colors.red.shade600,
              ),
            ),
          ),
        ),
        Material(
          shape: ArrowShape(),
          elevation: 0,
          child: Container(
            height: 4 * itemHeight,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: const [
                DropDownItems(
                  iconData: Icons.add_circle_outline,
                  text: 'Add new',
                ),
                DropDownItems(
                  iconData: Icons.person_outline,
                  text: 'view profile',
                ),
                DropDownItems(
                  iconData: Icons.settings,
                  text: 'Settings',
                ),
                DropDownItems(
                  iconData: Icons.exit_to_app,
                  text: 'logout',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class DropDown2 extends StatelessWidget {
  final double itemHeight2;

  const DropDown2({Key? key, required this.itemHeight2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment(-0.85, 0),
          child: ClipPath(
            clipper: ArrowClipper2(),
            child: Container(
              height: 20,
              width: 30,
              decoration: BoxDecoration(
                color: Colors.red.shade600,
              ),
            ),
          ),
        ),
        Material(
          shape: ArrowShape2(),
          elevation: 0,
          child: Container(
            height: 4 * itemHeight2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: const [
                DropDownItems2(
                  iconData2: Icons.add_circle_outline,
                  text2: 'Add new',
                ),
                DropDownItems2(
                  iconData2: Icons.person_outline,
                  text2: 'view profile',
                ),
                DropDownItems2(
                  iconData2: Icons.settings,
                  text2: 'Settings',
                ),
                DropDownItems2(
                  iconData2: Icons.exit_to_app,
                  text2: 'logout',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class DropDownItems extends StatelessWidget {
  final String text;
  final IconData iconData;
  final bool? isActive;

  const DropDownItems(
      {Key? key, required this.text, this.isActive, required this.iconData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.red.shade600,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          Text(
            text.toUpperCase(),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Spacer(),
          Icon(
            iconData,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}

class DropDownItems2 extends StatelessWidget {
  final String text2;
  final IconData iconData2;
  final bool? isActive2;

  const DropDownItems2(
      {Key? key, required this.text2, this.isActive2, required this.iconData2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.red.shade600,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          Text(
            text2.toUpperCase(),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Spacer(),
          Icon(
            iconData2,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}

class ArrowClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    Path path = Path();
    path.moveTo(0, size.height);
    path.lineTo(size.width / 2, 0);
    path.lineTo(size.width, size.height);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) => true;
}

class ArrowClipper2 extends CustomClipper<Path> {
  @override
  getClip(Size size2) {
    Path path2 = Path();
    path2.moveTo(0, size2.height);
    path2.lineTo(size2.width / 2, 0);
    path2.lineTo(size2.width, size2.height);

    return path2;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) => true;
}

class ArrowShape extends ShapeBorder {
  @override
  // TODO: implement dimensions
  EdgeInsetsGeometry get dimensions => throw UnimplementedError();

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) {
    // TODO: implement getInnerPath
    throw UnimplementedError();
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    // TODO: implement getOuterPath
    return getClip(rect.size);
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {
    // TODO: implement paint
  }

  @override
  ShapeBorder scale(double t) {
    // TODO: implement scale
    throw UnimplementedError();
  }

  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, size.height);
    path.lineTo(size.width / 2, 0);
    path.lineTo(size.width, size.height);

    return path;
  }
}

class ArrowShape2 extends ShapeBorder {
  @override
  // TODO: implement dimensions
  EdgeInsetsGeometry get dimensions => throw UnimplementedError();

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) {
    // TODO: implement getInnerPath
    throw UnimplementedError();
  }

  @override
  Path getOuterPath(Rect rect2, {TextDirection? textDirection}) {
    // TODO: implement getOuterPath
    return getClip2(rect2.size);
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {
    // TODO: implement paint
  }

  @override
  ShapeBorder scale(double t) {
    // TODO: implement scale
    throw UnimplementedError();
  }

  Path getClip2(Size size2) {
    Path path2 = Path();
    path2.moveTo(0, size2.height);
    path2.lineTo(size2.width / 2, 0);
    path2.lineTo(size2.width, size2.height);

    return path2;
  }
}
//==================================================
//=====================================
//==============
