import 'package:flutter/material.dart';
import 'package:salaryy/custom_textfield.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SalaryScreen(),
    );
  }
}

class SalaryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF3F3F3),
      body: Container(
        margin: EdgeInsets.only(left: 25, right: 25, top: 50),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Icon(
                Icons.error_outline_outlined,
                color: Color(0xff1536BA),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "هذه العملية لا تحتاج إلى إدخال البيانات السرية للبطاقة فقط تحتاج لمعلومات عامة للعمليات التنظيمية",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Divider(
                thickness: 2,
                color: Color(0xffE2E2E2),
              ),
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 15),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                    height: 320,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xffC7E4EA),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        CustomTextField("اسم البنك ", "اكتب هنا"),
                        CustomTextField("اسم البطاقة ", "اكنب هنا"),
                        CustomTextField("الحد الائتماني المتاح", "8500.00"),
                        CustomTextField("نوع البطاقة الإئتمانية", "2840473532"),
                        CustomTextField("رقم البطاقة الإئتمانية", "اكتب هنا"),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 10,
                    top: 28,
                    child: Row(
                      children: [
                        Icon(
                          Icons.close,
                          color: Colors.red,
                        ),
                        Icon(
                          Icons.save,
                          color: Color(0xff4E84B2),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 20,
                    bottom: 40,
                    child: Row(
                      children: [
                        Icon(
                          Icons.file_copy_outlined,
                          color: Color(0xff4E84B2),
                        ),
                        Icon(
                          Icons.close,
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 15),
                height: 268,
                width: 260,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset('assets/images/card.PNG'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.arrow_back,
                        color: Color(0xff4E84B2),
                      ),
                      Text(
                        "التالي",
                        style: TextStyle(color: Color(0xff4E84B2)),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.arrow_forward,
                        color: Color(0xff4E84B2),
                      ),
                      Text(
                        "السابق",
                        style: TextStyle(color: Color(0xff4E84B2)),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
