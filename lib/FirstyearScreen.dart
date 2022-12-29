import 'package:flutter/material.dart';

bool gisvis1=true;

class FirstyearScreen extends StatefulWidget {
  const FirstyearScreen({Key? key}) : super(key: key);

  @override
  State<FirstyearScreen> createState() => _FirstyearScreenState();
}
// Selected Subject Global Var
var ss1st1;
var ss1st2;
var ss1st3;
var ss1st4;
var ss1st5;
var ss1st6;
var ss1st7;

// Selected Grade Global Var
var sg1st1;
var sg1st2;
var sg1st3;
var sg1st4;
var sg1st5;
var sg1st6;
var sg1st7;

//SGPA VAR
var SGPA=' ';
// SGPA Finder
void getSGPA(){
    // local variables to use
    var subarr=[ss1st1,ss1st2,ss1st3,ss1st4,ss1st5,ss1st6,ss1st7];
    var gradearr=[sg1st1,sg1st2,sg1st3,sg1st4,sg1st5,sg1st6,sg1st7];
    var subarrint=[];
    var gradarrint=[];

    double totalscore=0;
    double userscore=0;
    for(int i=0;i<7;i++){
      switch(subarr[i]){
        case 'Maths-I':{
          subarrint.add(3.5);
          break;
        }
        case 'Maths-II':{
          subarrint.add(3.5);
          break;
        }
        case 'Prof Comm':{
          subarrint.add(3.0);
          break;
       }
       case 'Engineering Drawing':{
          subarrint.add(4.0);
          break;
       }
       case 'Computer Programming':{
          subarrint.add(3.0);
          break;
       }
       case 'Applied Physics':{
          subarrint.add(4.5);
          break;
       }
       case 'Electronics':{
          subarrint.add(4.5);
          break;
       }
       case 'OOP':{
          subarrint.add(4.0);
          break;
       }
       case 'Applied Chemistry':{
          subarrint.add(4.5);
          break;
       }
       case 'Mechanics':{
          subarrint.add(2.5);
          break;
       }
       case 'Environment':{
          subarrint.add(3.0);
          break;
       }
       case 'Engineering Design Project':{
          subarrint.add(3.0);
          break;
       }
       case 'Manufacturing Processes':{
          subarrint.add(4.0);
          break;
       }
       case 'Electrical':{
          subarrint.add(4.5);
          break;
       }
       default:{
          subarrint.add(0);
       }   
    }
  } //for loop end

  for(int i=0;i<7;i++){
      switch(gradearr[i]){
        case 'A/A+':{
          gradarrint.add(10.0);
          break;
        }
        case 'A-':{
          gradarrint.add(9.0);
          break;
        }
        case 'B':{
          gradarrint.add(8.0);
          break;
       }
       case 'B-':{
          gradarrint.add(7.0);
          break;
       }
       case 'C':{
          gradarrint.add(6.0);
          break;
       }
       case 'C-':{
          gradarrint.add(5.0);
          break;
       }
       default:{
          gradarrint.add(0);
        }
      }
  }
  print(subarrint);
  print(gradarrint);
  // totalmarkscheck

  for(int i=0;i<7;i++){
    var temp=subarrint[i];
    totalscore+=(temp*10);
  }
  for(int i=0;i<7;i++){
    var temp=gradarrint[i];
    var temp2=subarrint[i];
    userscore+=(temp*temp2);
  }
  print(totalscore);
  print('hi $userscore');
  SGPA=((userscore/totalscore)*10.0).toStringAsFixed(2);
  
}

class _FirstyearScreenState extends State<FirstyearScreen> {

  String localSGPA='';

  List<String> subjects1=[' ','Maths-I','Maths-II','Prof Comm','Engineering Drawing','Computer Programming','Applied Physics','Electronics','OOP','Applied Chemistry','Mechanics','Environment','Engineering Design Project','Manufacturing Processes','Electrical'];
  List<String> subjects2=[' ','Maths-I','Maths-II','Prof Comm','Engineering Drawing','Computer Programming','Applied Physics','Electronics','OOP','Applied Chemistry','Mechanics','Environment','Engineering Design Project','Manufacturing Processes','Electrical'];
  List<String> subjects3=[' ','Maths-I','Maths-II','Prof Comm','Engineering Drawing','Computer Programming','Applied Physics','Electronics','OOP','Applied Chemistry','Mechanics','Environment','Engineering Design Project','Manufacturing Processes','Electrical'];
  List<String> subjects4=[' ','Maths-I','Maths-II','Prof Comm','Engineering Drawing','Computer Programming','Applied Physics','Electronics','OOP','Applied Chemistry','Mechanics','Environment','Engineering Design Project','Manufacturing Processes','Electrical'];
  List<String> subjects5=[' ','Maths-I','Maths-II','Prof Comm','Engineering Drawing','Computer Programming','Applied Physics','Electronics','OOP','Applied Chemistry','Mechanics','Environment','Engineering Design Project','Manufacturing Processes','Electrical'];
  List<String> subjects6=[' ','Maths-I','Maths-II','Prof Comm','Engineering Drawing','Computer Programming','Applied Physics','Electronics','OOP','Applied Chemistry','Mechanics','Environment','Engineering Design Project','Manufacturing Processes','Electrical'];
  List<String> subjects7=[' ','Maths-I','Maths-II','Prof Comm','Engineering Drawing','Computer Programming','Applied Physics','Electronics','OOP','Applied Chemistry','Mechanics','Environment','Engineering Design Project','Manufacturing Processes','Electrical'];
    String? selectedSubject=' ';
    String? selectedSubject1=' ';
    String? selectedSubject2=' ';
    String? selectedSubject3=' ';
    String? selectedSubject4=' ';
    String? selectedSubject5=' ';
    String? selectedSubject6=' ';
    String? selectedSubject7=' ';
    List<String> grades1=[' ','A/A+','A-','B','B-','C','C-'];
    List<String> grades2=[' ','A/A+','A-','B','B-','C','C-'];
    List<String> grades3=[' ','A/A+','A-','B','B-','C','C-'];
    List<String> grades4=[' ','A/A+','A-','B','B-','C','C-'];
    List<String> grades5=[' ','A/A+','A-','B','B-','C','C-'];
    List<String> grades6=[' ','A/A+','A-','B','B-','C','C-'];
    List<String> grades7=[' ','A/A+','A-','B','B-','C','C-'];
    String? selectedGrade1=' ';
    String? selectedGrade2=' ';
    String? selectedGrade3=' ';
    String? selectedGrade4=' ';
    String? selectedGrade5=' ';
    String? selectedGrade6=' ';
    String? selectedGrade7=' ';
    

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: gisvis1,
      child: (
        AnimatedContainer(
          padding: EdgeInsets.only(left:15,right:15),
          color: Color.fromRGBO(117, 26, 255, 0.2),
          duration: const Duration(milliseconds: 500),
          child: Visibility(
            child: Column(
              children: [
    
    // row1
                Row(
                  children: [
                    SizedBox(height: 90,),
                    ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: 250, maxHeight: 60 ),
                      child: DropdownButtonFormField<String>(
                        menuMaxHeight: 150,
                        decoration: InputDecoration(
                         enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2 , color: Colors.blue)
                         )
                        ),
                        isExpanded: false,
                        value: selectedSubject1,
                        items: subjects1.map((subject1) => DropdownMenuItem<String>(
                          value:subject1,
                          child: Text(subject1, style: const TextStyle(fontSize: 14)),
                           )
                        ).toList(), 
                        onChanged: (subject1) => setState(() => {
                          selectedSubject1=subject1,
                          ss1st1=subject1,
                          print(selectedSubject1)
                          })
                        ),
                    ),
          
                      // Grades Dropdown
                      ConstrainedBox(
                        constraints: BoxConstraints(maxWidth: 100, maxHeight: 60),
                        child: DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                         enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2 , color: Colors.blue)
                         )
                        ),
                        isExpanded: false,
                        value: selectedGrade1,
                        items: grades1.map((grade1) => DropdownMenuItem<String>(
                          value:grade1,
                          child: Text(grade1, style: const TextStyle(fontSize: 18)),
                           )
                        ).toList(), 
                        onChanged: (grade1) => setState(() => {
                          selectedGrade1=grade1,
                          sg1st1=grade1,
                          print(selectedGrade1)
                          })
                        ),
                      ),
                  ],
                ),
    
    // row2
                Row(
                  children: [
                    SizedBox(height: 70,),
                    ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: 250, maxHeight: 60 ),
                      child: DropdownButtonFormField<String>(
                        menuMaxHeight: 150,
                        decoration: InputDecoration(
                         enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2 , color: Colors.blue)
                         )
                        ),
                        isExpanded: true,
                        value: selectedSubject2,
                        items: subjects2.map((subject2) => DropdownMenuItem<String>(
                          value:subject2,
                          child: Text(subject2, style: const TextStyle(fontSize: 18)),
                           )
                        ).toList(), 
                        onChanged: (subject2) => setState(() => {
                          selectedSubject2=subject2,
                          ss1st2=subject2,
                          print(selectedSubject2)
                          })
                        ),
                    ),
          
                      // Grades Dropdown
                      ConstrainedBox(
                        constraints: BoxConstraints(maxWidth: 100 , maxHeight: 60),
                        child: DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                         enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2 , color: Colors.blue)
                         )
                        ),
                        isExpanded: true,
                        value: selectedGrade2,
                        items: grades2.map((grade2) => DropdownMenuItem<String>(
                          value:grade2,
                          child: Text(grade2, style: const TextStyle(fontSize: 18)),
                           )
                        ).toList(), 
                        onChanged: (grade2) => setState(() => {
                          selectedGrade2=grade2,
                          sg1st2=grade2,
                          print(selectedGrade2)
                          })
                        ),
                      ),
                  ],
                ),
    // row 3
                Row(
                  children: [
                    SizedBox(height: 70,),
                    ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: 250 , maxHeight: 60),
                      child: DropdownButtonFormField<String>(
                        menuMaxHeight: 150,
                        decoration: InputDecoration(
                         enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2 , color: Colors.blue)
                         )
                        ),
                        isExpanded: true,
                        value: selectedSubject3,
                        items: subjects3.map((subject3) => DropdownMenuItem<String>(
                          value:subject3,
                          child: Text(subject3, style: const TextStyle(fontSize: 18)),
                           )
                        ).toList(), 
                        onChanged: (subject3) => setState(() => {
                          selectedSubject3=subject3,
                          ss1st3=subject3,
                          print(selectedSubject3)
                          })
                        ),
                    ),
          
                      // Grades Dropdown
                      ConstrainedBox(
                        constraints: BoxConstraints(maxWidth: 100 , maxHeight: 60),
                        child: DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                         enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2 , color: Colors.blue)
                         )
                        ),
                        isExpanded: true,
                        value: selectedGrade3,
                        items: grades3.map((grade3) => DropdownMenuItem<String>(
                          value:grade3,
                          child: Text(grade3, style: const TextStyle(fontSize: 18)),
                           )
                        ).toList(), 
                        onChanged: (grade3) => setState(() => {
                          selectedGrade3=grade3,
                          sg1st3=grade3,
                          print(selectedGrade3)
                          })
                        ),
                      ),
                  ],
                ),
    // row 4
                Row(
                  children: [
                    SizedBox(height: 70,),
                    ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: 250 , maxHeight: 60),
                      child: DropdownButtonFormField<String>(
                        menuMaxHeight: 150,
                        decoration: InputDecoration(
                         enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2 , color: Colors.blue)
                         )
                        ),
                        isExpanded: true,
                        value: selectedSubject4,
                        items: subjects4.map((subject4) => DropdownMenuItem<String>(
                          value:subject4,
                          child: Text(subject4, style: const TextStyle(fontSize: 18)),
                           )
                        ).toList(), 
                        onChanged: (subject4) => setState(() => {
                          selectedSubject4=subject4,
                          ss1st4=subject4,
                          print(selectedSubject4)
                          })
                        ),
                    ),
          
                      // Grades Dropdown
                      ConstrainedBox(
                        constraints: BoxConstraints(maxWidth: 100 , maxHeight: 60) ,
                        child: DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                         enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2 , color: Colors.blue)
                         )
                        ),
                        isExpanded: true,
                        value: selectedGrade4,
                        items: grades4.map((grade4) => DropdownMenuItem<String>(
                          value:grade4,
                          child: Text(grade4, style: const TextStyle(fontSize: 18)),
                           )
                        ).toList(), 
                        onChanged: (grade4) => setState(() => {
                          selectedGrade4=grade4,
                          sg1st4=grade4,
                          print(selectedGrade4)
                          })
                        ),
                      ),
                  ],
                ),
    
    // row5
                Row(
                  children: [
                    SizedBox(height: 70,),
                    ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: 250 , maxHeight: 60),
                      child: DropdownButtonFormField<String>(
                        menuMaxHeight: 150,
                        decoration: InputDecoration(
                         enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2 , color: Colors.blue)
                         )
                        ),
                        isExpanded: true,
                        value: selectedSubject5,
                        items: subjects5.map((subject5) => DropdownMenuItem<String>(
                          value:subject5,
                          child: Text(subject5, style: const TextStyle(fontSize: 18)),
                           )
                        ).toList(), 
                        onChanged: (subject5) => setState(() => {
                          selectedSubject5=subject5,
                          ss1st5=subject5,
                          print(selectedSubject5)
                          })
                        ),
                    ),
          
                      // Grades Dropdown
                      ConstrainedBox(
                        constraints: BoxConstraints(maxWidth: 100 , maxHeight: 60),
                        child: DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                         enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2 , color: Colors.blue)
                         )
                        ),
                        isExpanded: true,
                        value: selectedGrade5,
                        items: grades5.map((grade5) => DropdownMenuItem<String>(
                          value:grade5,
                          child: Text(grade5, style: const TextStyle(fontSize: 18)),
                           )
                        ).toList(), 
                        onChanged: (grade5) => setState(() => {
                          selectedGrade5=grade5,
                          sg1st5=grade5,
                          print(selectedGrade5)
                          })
                        ),
                      ),
                  ],
                ),
    
    // row 6
                Row(
                  children: [
                    SizedBox(height: 80,),
                    ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: 250 , maxHeight: 60),
                      child: DropdownButtonFormField<String>(
                        menuMaxHeight: 150,
                        decoration: InputDecoration(
                         enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2 , color: Colors.blue)
                         )
                        ),
                        isExpanded: true,
                        value: selectedSubject6,
                        items: subjects6.map((subject6) => DropdownMenuItem<String>(
                          value:subject6,
                          child: Text(subject6, style: const TextStyle(fontSize: 18)),
                           )
                        ).toList(), 
                        onChanged: (subject6) => setState(() => {
                          selectedSubject6=subject6,
                          ss1st6=subject6,
                          print(selectedSubject6)
                          })
                        ),
                    ),
          
                      // Grades Dropdown
                      ConstrainedBox(
                        constraints: BoxConstraints(maxWidth: 100 , maxHeight: 60),
                        child: DropdownButtonFormField<String>(
                        menuMaxHeight: 150,
                        decoration: InputDecoration(
                         enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2 , color: Colors.blue)
                         )
                        ),
                        isExpanded: true,
                        value: selectedGrade6,
                        items: grades1.map((grade6) => DropdownMenuItem<String>(
                          value:grade6,
                          child: Text(grade6, style: const TextStyle(fontSize: 18)),
                           )
                        ).toList(), 
                        onChanged: (grade6) => setState(() => {
                          selectedGrade6=grade6,
                          sg1st6=grade6,
                          print(selectedGrade6)
                          })
                        ),
                      ),
                  ],
                ),
    
    // row 7
                Row(
                  children: [
                    SizedBox(height: 70,),
                    ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: 250 , maxHeight: 60),
                      child: DropdownButtonFormField<String>(
                        menuMaxHeight: 150,
                        decoration: InputDecoration(
                         enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2 , color: Colors.blue)
                         )
                        ),
                        isExpanded: true,
                        value: selectedSubject7,
                        items: subjects7.map((subject7) => DropdownMenuItem<String>(
                          value:subject7,
                          child: Text(subject7, style: const TextStyle(fontSize: 18)),
                           )
                        ).toList(), 
                        onChanged: (subject7) => setState(() => {
                          selectedSubject7=subject7,
                          ss1st7=subject7,
                          print(selectedSubject7)
                          })
                        ),
                    ),
          
                      // Grades Dropdown
                      ConstrainedBox(
                        constraints: BoxConstraints(maxWidth: 100 , maxHeight: 60),
                        child: DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                         enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2 , color: Colors.blue)
                         )
                        ),
                        isExpanded: true,
                        value: selectedGrade7,
                        items: grades7.map((grade7) => DropdownMenuItem<String>(
                          value:grade7,
                          child: Text(grade7, style: const TextStyle(fontSize: 18)),
                           )
                        ).toList(), 
                        onChanged: (grade7) => setState(() => {
                          selectedGrade7=grade7,
                          sg1st7=grade7,
                          print(selectedGrade7)
                          })
                        ),
                      ),
                  ],
                ),
                Row(
                  children:[
                    
                    // const ElevatedButton(
                    // child: Text('Calculate SGPA'),
                    // onPressed: getSGPA
                    // ),
    
                    ElevatedButton(
                    child: Text('Show SGPA'),
                    onPressed: (){
                      getSGPA();
                      setState(() {
                        localSGPA=SGPA;
                      });
                    }
                    )
                  ]
                ),
                Row(
                  
                  children: [
                    Text('Your estimated SGPA  $localSGPA',
                    style: TextStyle(fontSize: 25),
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ),
    );
  }
}
