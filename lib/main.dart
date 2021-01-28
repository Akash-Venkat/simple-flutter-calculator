import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    text;
        return Scaffold(
      appBar: AppBar(
        title: Text(("CALCULATOR")),
        backgroundColor: Colors.black,
         ),
      body: Container(
        color: Colors.white70,
        child: Column(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10.0),
                alignment: Alignment.bottomRight,
                child: Text(text,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,

                ),
                ),
              ),
            ),
            Row(

              children: [
                mybutton("9"),
                mybutton("8"),
                mybutton("7"),
                mybutton("+"),
              ],

            ),
            Row(
              children: [
                mybutton("6"),
                mybutton("5"),
                mybutton("4"),
                mybutton("-"),
              ],

            ),
            Row(
              children: [
                mybutton("3"),
                mybutton("2"),
                mybutton("1"),
                mybutton("*"),
              ],

            ),
            Row(
              children: [
                mybutton("C"),
                mybutton("0"),
                mybutton("="),
                mybutton("/"),
              ],

            ),
          ],
        ),
      ),
    );
  }


  Widget mybutton(String val) {
    return Expanded(
      child:
        OutlineButton(
                    highlightedBorderColor: Colors.white,
                    padding: EdgeInsets.all(25.0),
                    onPressed: ()=>btn(val),

                    child: Text(val, style: TextStyle(
                      color: Colors.black,

                    ),),
                  ),

    );
  }
  String result="",text="",op,temp;
  int a=0,b=0;
  void btn(String val)
  {

    if(val=="C")
      {
        setState(() {
          text="";
          a=0;
          b=0;
          result="";
        });
      }else if(val=="+"||val=="-"||val=="*"||val=="/")
        {
          op=val;
          a=int.parse(text);
          result="";
        }
    else {
      if(val=="=")
        {
          b=int.parse(text);
          setState(() {
          if(op=="+")
            {
              int c=a+b;
              text=c.toString();
            }
          else if(op=="-")
            {
              int c=a-b;
              text=c.toString();
            }
          else if(op=="*")
          {
            int c=a*b;
            text=c.toString();
          }
          else if(op=="/")
          {
            double c=a/b;
            text=c.toString();
          }
          });
          a=0;b=0;result="";
        }
      else {
        result = result + val;
        setState(() {
          text = result;
        });
      }
    }
  }
}

