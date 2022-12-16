import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gepgtanzania/constants/constants.dart';

class verify_payement extends StatefulWidget {
  const verify_payement({Key? key}) : super(key: key);

  @override
  State<verify_payement> createState() => _verify_payementState();
}

class _verify_payementState extends State<verify_payement> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(onPressed: (){
                    Navigator.of(context).pop();
                  }, icon: Icon(CupertinoIcons.back,color: kprimarycolor, size: 50,) ,),
                  SizedBox(width: 20,),
                  Text("Verify Payment",style: TextStyle(color: kprimarycolor,fontSize: 24,fontWeight: FontWeight.bold),)
                ],
              ),
              SizedBox(height: 30,),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 40,
                  child: Row(
                    children: [
                      Text("--Verify using--",style: TextStyle(color: kgrey),),
                    ],
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: kpalegrey
                  )),
              SizedBox(height: 20,),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("SUBMIT",style: TextStyle(color: kwhite),),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  color: kprimarycolor
                )),

            ],
          ),
        ),
      ),
    );
  }
}
