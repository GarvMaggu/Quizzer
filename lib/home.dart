import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quizer/quizpage.dart';
import 'package:quizer/resultpage.dart';

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  List<String> pics = [
    "images/avg.jpg",
    "images/hp.jpg",
    "images/pok.jpg",
    "images/nar.jpg",
  ];
  List<String> description = [
    "Date: 25 May, 2020\nQuiz Time: 3:30 PM to 3:45 PM\n10 Questions",
    "Date: 27 May, 2020\nQuiz Time: 4:30 PM to 4:50 PM\n15 Questions",
    "Date: 29 May, 2020\nQuiz Time: 2:00 PM to 2:15 PM\n11 Questions",
    "Date: 30 May, 2020\nQuiz Time: 1:30 PM to 1:50 PM\n20 Questions",
  ];

  Widget customcard(String qname, String im, String des){
    return Padding(
      
      padding: EdgeInsets.all(20.0),
      
      child: InkWell(
        
        onTap: (){
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => getjson(qname),
          ));
        },
        child: Material(
          color: Colors.indigoAccent,
          elevation: 10.0,
          borderRadius: BorderRadius.circular(20.0),
          child: Container(
            
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10.0,
                  ),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(100.0),
                    child: Container(
                      height: 200.0,
                      width: 200.0,
                      child: ClipOval(
                        child: Image(
                          image: AssetImage(
                            im,
                          ),
                        ),
                      )
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    qname,
                    style: TextStyle(
                      fontSize: 24.0,
                      color: Colors.white,

                    )
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    des,
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                    ),
                    maxLines: 8,
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            )
          )
        )
      )
    );
  }
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown, DeviceOrientation.portraitUp
    ]);
    return Scaffold(
      //backgroundColor: Colors.white,
    
      appBar: AppBar(
        title: Text(
          "Hello, 189301000",
        ),
        centerTitle: true,
      ),
      
      body: 
       
      ListView(
        children: <Widget>[
          
          customcard("Data Structures", pics[0], description[0]),
          customcard("OOPJ using Java", pics[1], description[1]),
          customcard("RDBMS", pics[2], description[2]),
          customcard("Operating Systems", pics[3], description[3]),
        ],
      ),
      
    );
  }
}