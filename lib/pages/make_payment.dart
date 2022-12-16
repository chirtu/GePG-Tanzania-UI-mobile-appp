import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/constants.dart';

class make_payment extends StatefulWidget {
  const make_payment({Key? key}) : super(key: key);

  @override
  State<make_payment> createState() => _make_paymentState();
}

class _make_paymentState extends State<make_payment> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(onPressed: (){
                    Navigator.of(context).pop();
                  }, icon: Icon(CupertinoIcons.back,color: kprimarycolor, size: 50,) ,),
                  SizedBox(width: 20,),
                  Text("Make Payment",style: TextStyle(color: kprimarycolor,fontSize: 24,fontWeight: FontWeight.bold),)
                ],
              ),
              SizedBox(height: 30,),
              ListTile(
                title: Text("Enter Control number",style: TextStyle(color: kprimarycolor,fontSize: 14),),
                trailing: InkWell(child: Icon(Icons.navigate_next_outlined,size: 30,color: kprimarycolor,),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>_entercontrolnumber()));
                },),
              ),
              Divider(),
              ListTile(
                title: Text("Scan bill",style: TextStyle(color: kprimarycolor,fontSize: 14),),
                trailing: InkWell(child: Icon(Icons.navigate_next_outlined,size: 30,color: kprimarycolor,),onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>_scanbill()));

                },),
              ),
            ],
          ),
        ),
      ),
    );
  }
  _entercontrolnumber(){
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
                  Text("Control number",style: TextStyle(color: kprimarycolor,fontSize: 24,fontWeight: FontWeight.bold),)
                ],
              ),
              SizedBox(height: 50,),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: kpalegrey,

                  ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),),
                ),

              ),
              SizedBox(height: 20,),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("SUBMIT",style: TextStyle(color: kwhite,fontSize: 16),),
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
  _scanbill(){
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
                  Text("Scan Bill",style: TextStyle(color: kprimarycolor,fontSize: 24,fontWeight: FontWeight.bold),)
                ],
              ),
              SizedBox(height: 50,),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  color: kpalegrey,

                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),),
                ),

              ),
              SizedBox(height: 20,),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("SUBMIT",style: TextStyle(color: kwhite,fontSize: 16),),
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
