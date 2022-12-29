import 'package:flutter/material.dart';
import 'FirstyearScreen.dart';
import 'SecondyearScreen.dart';
import 'Indexvariable.dart';


void main() {
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(


        appBar: AppBar(
          title: const Text('SGPA Calculator - Vishist N. Bhagabati'),
          backgroundColor:Color.fromRGBO(117, 26, 255, 1) ,
        ),


        body: Stack(
          children: [
            FirstyearScreen(),
            SecondyearScreen(),
            // ThirdyearScreen(),
          ],
        ),

        bottomNavigationBar: BottomNavigationBar1(),
      ), 

    );
  }
}






// bottom Nav
class BottomNavigationBar1 extends StatefulWidget {
  const BottomNavigationBar1({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBar1> createState() => _BottomNavigationBar1State();
}

class _BottomNavigationBar1State extends State<BottomNavigationBar1> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return(
      Container(
        // duration: const Duration(milliseconds: 500),
        decoration: BoxDecoration(
          gradient: const LinearGradient(colors: [Color(0xff4338CA),Color(0xff6D28D9)])
        ),
        child: BottomAppBar(
          elevation: 0,
          color: Colors.transparent,
          child:SizedBox(
            height: 56,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.only(left:50.0,right:50.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  IconbottomBar1(
                    text: "1st Year",
                    icon: Icons.looks_one,
                    selected: _selectedIndex==0,
                    onPressed: (){
                      setState(() {
                        _selectedIndex=0;
                        pageIndex=_selectedIndex;
                        print(pageIndex);
                      });
                    }
                  ),

                  IconbottomBar1(
                    text: "2nd Year",
                    icon: Icons.looks_two,
                    selected: _selectedIndex==1,
                    onPressed: (){
                      setState(() {
                        // _selectedIndex=1;
                        pageIndex=_selectedIndex;
                        print(pageIndex);
                      });
                    }
                  ),

                  IconbottomBar1(
                    text: "3rd Year",
                    icon: Icons.looks_3,
                    selected: _selectedIndex==2,
                    onPressed: (){
                      setState(() {
                        // _selectedIndex=2;
                        pageIndex=_selectedIndex;
                        print(pageIndex);
                      });
                    }
                  )

                ],
              ),
              ),
            )  
        )
      )
    ); 
  }
}

class IconbottomBar1 extends StatefulWidget {

  final String text;
  final IconData icon;
  final bool selected;
  final Function() onPressed;

  const IconbottomBar1(
    {
          required this.text,
          required this.icon,
          required this.selected,
          required this.onPressed,
          Key? key})
          :super(key: key);

  @override
  State<IconbottomBar1> createState() => _IconbottomBar1State();
}

class _IconbottomBar1State extends State<IconbottomBar1> {
  
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: widget.onPressed, 
          icon: Icon(widget.icon, size:25, color: widget.selected ? Colors.white : Color.fromRGBO(163, 163, 194,0.5)
          )
        ),
        Text(widget.text, style: TextStyle(
          fontSize: 12,
          height: 0.1,
          color:  widget.selected ? Colors.white : Color.fromRGBO(163, 163, 194,1) 

        ),
        )
      ],
    ); 
  }
}