import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';
class nav extends StatefulWidget {

  final double bavel;
  final Offset blureOffset;
  final Color color;
  final EdgeInsets padding;
  nav({
    Key? key,
    this.bavel=15.0,
    this.padding=const EdgeInsets.only(bottom: 10,),
}):blureOffset=Offset(bavel/2, bavel/2),
  color=Colors.grey.shade700,
  super(key: key);
  @override
  State<nav> createState() => _navState();
}

class _navState extends State<nav> {
  final bool ispressed=false;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final color=widget.color;
    double height=56;
    const primaryColor=Colors.indigo;
    const secondaryColor=Colors.black54;
    return Listener(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        padding: widget.padding,

        child: BottomAppBar(
          color: Colors.transparent,
            elevation: 0,
          child: Stack(
            children: [
              GlassContainer.frostedGlass(
                height: height,
                width: screenWidth*0.8,
                borderColor: Colors.transparent,
                borderRadius: BorderRadius.circular(5),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    NavBarIcon(
                      text: "Home",
                      icon: Icons.home,
                      selected: true,
                      onPressed: (){},
                      defaultColor: secondaryColor,
                      selectedKolor: primaryColor,
                    ),
                    NavBarIcon(
                      text: "Home",
                      icon: Icons.account_circle,
                      selected: false,
                      onPressed: (){},
                      defaultColor: secondaryColor,
                      selectedKolor: primaryColor,
                    ),
                    NavBarIcon(
                      text: "Home",
                      icon: Icons.wallet_outlined,
                      selected: false,
                      onPressed: (){},
                      defaultColor: secondaryColor,
                      selectedKolor: primaryColor,
                    ),
                    NavBarIcon(
                      text: "Home",
                      icon: Icons.shopping_bag,
                      selected: false,
                      onPressed: (){},
                      defaultColor: secondaryColor,
                      selectedKolor: primaryColor,
                    ),
                    NavBarIcon(
                      text: "Home",
                      icon: Icons.message,
                      selected: false,
                      onPressed: (){},
                      defaultColor: secondaryColor,
                      selectedKolor: primaryColor,
                    ),
                  ],
                ),
              )
            ],
          ),
        ) ,
      ),
    );
  }
}
class NavBarIcon extends StatelessWidget {
  const NavBarIcon(
  {
    Key?key,
    required this.text,
    required this.icon,
    required this.selected,
    required this.onPressed,
    this.selectedKolor=const Color(0xffff8527),
    this.defaultColor=Colors.black54
}
      ):super(key: key);
  final String text;
  final IconData icon;
  final bool selected;
  final Function() onPressed;
  final Color defaultColor;
  final Color selectedKolor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(onPressed: onPressed,
            icon:Icon(
              icon,
              size: 25,
              color: selected?selectedKolor:defaultColor,
            ))
      ],
    );
  }
}


extension ColorUtils on Color{
  Color mix(Color another,double amount){
    return Color.lerp(this, another, amount)!;
  }
}