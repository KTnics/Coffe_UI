import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';
class nav2 extends StatefulWidget {

  final double bavel;
  final Offset blureOffset;
  final Color color;
  final EdgeInsets padding;
  nav2({
    Key? key,
    this.bavel=15.0,
    this.padding=const EdgeInsets.only(bottom: 10,),
  }):blureOffset=Offset(bavel/2, bavel/2),
        color=Colors.grey.shade700,
        super(key: key);
  @override
  State<nav2> createState() => _nav2State();
}

class _nav2State extends State<nav2> {
  late bool ispressed=false;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final color=widget.color;
    double height=60;
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


                   Row(
                     children: [
                       Checkbox(
                         value: ispressed,
                         onChanged: (bool? newValue) {
                           setState(() {
                             ispressed = newValue!;
                           });
                         },
                       ),
                       Text("High Priority",style: TextStyle(color: Colors.white60),),
                       Icon(Icons.error,color: Colors.red,)

                     ],

                   ),
                    ElevatedButton(onPressed: (){}, child: Text("Submit"),
                     style: ElevatedButton.styleFrom(
                      primary: Colors.green, // Background color
                    ),
                    )

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