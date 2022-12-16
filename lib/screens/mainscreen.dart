import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gepgtanzania/constants/constants.dart';
import 'package:gepgtanzania/pages/verfy_payment.dart';

import '../pages/make_payment.dart';

class mainscreen extends StatefulWidget {
  const mainscreen({Key? key}) : super(key: key);
 
  @override
  State<mainscreen> createState() => _mainscreenState();
}

class _mainscreenState extends State<mainscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 90, 0,20),
        child: Column(
          children: [
            Container(
              height: 150,
              child: CircleAvatar(
                backgroundColor: kprimarycolor,
                radius: 60,
                // child: Image.asset("assets/logo.png") ,
              ),
            ),
            Text("Enquire,Assess, and Pay Government Bills",style: TextStyle(color: kprimarycolor, fontSize: 15,fontWeight: FontWeight.normal),),
            SizedBox(height: 20,),
            Container(
              color: kdarkprimary,
              height: 150,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        child: CircleAvatar(
                          radius: 40,
                          backgroundColor: kcirclecolor,
                          // backgroundImage: AssetImage(""),
                          child: Icon(CupertinoIcons.doc_on_doc,size: 35,color: kwhite,),
                        ),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute( builder: (BuildContext context) => verify_payement()));
                        },
                      ),
                      SizedBox(height: 10,),
                      Text("Verify Payment",style: TextStyle(color: kwhite,fontSize: 14),)
                    ],
                  ),
                  VerticalDivider(color: kwhite,thickness: 2,endIndent: 20,indent: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        child: CircleAvatar(
                          radius: 40,
                          backgroundColor: kcirclecolor,
                          // backgroundImage: AssetImage(""),
                          child: Icon(Icons.payment_outlined,size: 35,color: kwhite,),
                        ),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute( builder: (BuildContext context) => make_payment()));
                        },
                      ),
                      SizedBox(height: 10,),
                      Text("Make Payment",style: TextStyle(color: kwhite,fontSize: 14),)
                    ],
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Container(
                color: kpalegrey,
                child: Column(
                  children: [
                    GridView.count(
                      shrinkWrap: true,
                      primary: false,
                      padding: const EdgeInsets.only(top: 8),
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 10,
                      crossAxisCount: 3,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              backgroundColor: kwhite,
                              radius: 40,
                              child: Icon(Icons.abc),
                              // child: Image.asset("assets/logo.png") ,
                            ),
                            Text("LUKU")
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              backgroundColor: kwhite,
                              radius: 40,
                              child: Icon(Icons.abc),
                              // child: Image.asset("assets/logo.png") ,
                            ),
                            Text("LANDS")
                          ],
                        ), Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              backgroundColor: kwhite,
                              radius: 40,
                              child: Icon(Icons.abc),
                              // child: Image.asset("assets/logo.png") ,
                            ),
                            Text("POLICE")
                          ],
                        ), Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              backgroundColor: kwhite,
                              radius: 40,
                              child: Icon(Icons.abc),
                              // child: Image.asset("assets/logo.png") ,
                            ),
                            Text("TRA")
                          ],
                        ), Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              backgroundColor: kwhite,
                              radius: 40,
                              child: Icon(Icons.abc),
                              // child: Image.asset("assets/logo.png") ,
                            ),
                            Text("LGA")
                          ],
                        ), Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              backgroundColor: kwhite,
                              radius: 40,
                              child: Icon(Icons.abc),
                              // child: Image.asset("assets/logo.png") ,
                            ),
                            Text("WATER")
                          ],
                        ), Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              backgroundColor: kwhite,
                              radius: 40,
                              child: Icon(Icons.abc),
                              // child: Image.asset("assets/logo.png") ,
                            ),
                            Text("DAWASA")
                          ],
                        ), Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              backgroundColor: kwhite,
                              radius: 40,
                              child: Icon(Icons.abc),
                              // child: Image.asset("assets/logo.png") ,
                            ),
                            Text("PARKING")
                          ],
                        ), Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              backgroundColor: kwhite,
                              radius: 40,
                              child: Icon(CupertinoIcons.ellipsis,color: klightblue, size: 60,) ,
                            ),
                            Text("MORE")
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
