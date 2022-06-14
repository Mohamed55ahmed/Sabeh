import 'package:flutter/material.dart';
import 'zekr.dart';

//فحة التسبيح
class Tasbeh extends StatefulWidget {
  @override
  _TasbehState createState() => _TasbehState();
}

class _TasbehState extends State<Tasbeh> {
  int count = 0;

  void incrementCount() {
    setState(() {
      count += 1;
    });
  }

  void decrementCount() {
    setState(() {
      count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // اضافة صورة متحركة للخلفيه
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("lib/img/BGG.gif"),
          fit: BoxFit.cover,
        )),

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "$count",
                style: TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.w200,
                    color: Colors.white),
              ),
              Text(
                "عدد التسبيح",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              // زر العد
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      incrementCount();
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black38,
                    ),
                    child: Text(
                      "سبح",
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    )),
              ),
              // زر التصفير
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    decrementCount();
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black38,
                  ),
                  child: Text(
                    "تصفير",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
              //زر الذكر
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context)=>Zekr()));
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black38,
                  ),
                  child: Text(
                    "ذكر",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
