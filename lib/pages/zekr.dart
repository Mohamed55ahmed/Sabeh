
import 'package:flutter/material.dart';

class Zekr extends StatelessWidget {
  const Zekr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData=MediaQuery.of(context);
    double screenWidth=mediaQueryData.size.width;
    double screenHeight=mediaQueryData.size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("lib/img/DKR.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: Container(
                height:screenHeight/3,
                width: screenWidth/1.5,
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(12.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        offset: Offset(5.0, 5.0),
                        blurRadius: 5.0,
                      )
                    ],
                    shape: BoxShape.rectangle),
                child: SingleChildScrollView(
                  child: Align(
                    heightFactor: 1.0,
                    child: Text("تقوم عبادة ذكر الله -تعالى- على التِّكرار بالقلب واللسان؛ فقد ثبت في القرآن الكريم والسنة النبوية أدعيةٌ وأذكارٌ فيها تعظيمٌ لله وثناءٌ عليه، لذا فقد كانت هذه الأعمال هي أحبُّ الأعمال إلى الله -عزَّ وجلّ-؛ لما فيها من تسخير العبد نفسه لتعظيم الله -تعالى-. ودليل ذلك قوله -صلى الله عليه وسلم-: (ألا أُخْبِرُكم بخيرِ أعمالِكم لكم وأزكاها عندَ مَليكِكم وأرفعِها لدرَجاتِكم وخيرٍ لكم مِن إعطاءِ الوَرِقِ والذَّهَبِ وخيرٍ لكم مِن أن تَلْقَوا عدوَّكم فيضرِبون رِقابَكم وتضرِبون رِقابَهم ذِكْرُ اللهِ عزَّ وجلَّ)."
                      ,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 20,fontFamily: 'Almarai'),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
