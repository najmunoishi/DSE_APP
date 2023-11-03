import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyOrderScreen extends StatefulWidget {
  MyOrderScreen({Key? key}) : super(key: key);

  @override
  _Page2 createState() => _Page2();
}

class _Page2 extends State<MyOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   leading: IconButton(
      //     icon: Icon(Icons.arrow_back, color: Colors.black),
      //     onPressed: () => Navigator.of(context).pop(),
      //   ),
      //   title: Text(
      //     "My Order's",
      //     style: TextStyle(color: Colors.black),
      //   ),
      // ),
     body: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      
                      Text("Order List", style: TextStyle(color: Colors.black, fontSize:18 ),
                      ),
                      Text("Filter by",
                          style: TextStyle(color: Colors.black, fontSize:14 ),),
                    ],
                  ),
                
                  
                ),
              Expanded(
                child: ListView.builder(
                  itemCount: 15,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left:20, right:20),
                        child: ListTile(
                                   contentPadding: EdgeInsets.zero,
                          title: Row(
                            children: [
                              Text(
                                "Fund:", style: TextStyle( fontSize: 14),),
                                 Text("XYZ Fund", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),)
                            ],
                          ),
                          trailing: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "Total Value:", style: TextStyle( fontSize: 14),),
                                     Text("50,000", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),)
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "Unit:", style: TextStyle( fontSize: 12),),
                                     Text("22", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),)
                                ],
                              )
                            ],
                          ),
                          subtitle: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 3, horizontal: 8),
                                decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                border: Border.all( color: Colors.red),
                              ) ,
                                child: 
                                  Text("sell", style: TextStyle(color: Colors.red, fontSize:12 ),),
                              
                              ),
                              SizedBox(width: 5,),
                              Text("30/05/2023 . "),
                              Text("Active", style: TextStyle(color: Color(0xff04959C), fontSize: 12),),
                            ],
                          ),
                        ),   
                        ),
                     Divider(height: 2,color: Colors.grey,)
                     
                      ],
                    ); 
                     
                  }
                ),
                
              ),
              
            ],
      ),
    );
  }
}