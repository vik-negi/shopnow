import 'package:flutter/material.dart';
import 'package:shopnow/utils/routes.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 23, 25, 26),
      body: Padding(
        padding: const EdgeInsets.only(left:20, right: 20, top: 30),
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 32, 36, 39),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("PayLater", 
                          style: TextStyle(
                          fontSize: 25,
                          color: Color.fromARGB(255, 235, 235, 235),
                          fontWeight: FontWeight.w600
                          )
                        ),
                        Text("PayLater", 
                          style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w600
                          )
                        ),
                      ],
                    ),
                    const SizedBox(height: 25,),
                    Row(children: [
                      Container(
                        width: MediaQuery.of(context).size.width - 70,
                        padding: const EdgeInsets.all(15),
                        color: const Color.fromARGB(255, 43, 47, 51),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text("Limits Available", 
                                style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 156, 156, 156),
                                fontWeight: FontWeight.w600
                                )
                              ),
                              SizedBox(height: 10,),
                              Text("RP 13.500.000", 
                                style: TextStyle(
                                fontSize: 25,
                                color: Color.fromARGB(255, 235, 235, 235),
                                fontWeight: FontWeight.w600
                                )
                              ),
                              ],
                            ),
                            ElevatedButton(onPressed:()async=> {
                              await Navigator.of(context).pushNamed(MyRoutes.profileRoute)
                            },
                            style: ElevatedButton.styleFrom(
                              textStyle:const  TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black),
                              primary: const Color.fromARGB(255, 234, 171, 0),
                              minimumSize: const Size(100, 50),
                            ),
                            child: const Text("Withdrawl")
                            ),
                          ],
                        ),
                      )
                    ],),
                    const SizedBox(height: 25,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(255, 43, 47, 51),
                        ),
                        
                        padding: const EdgeInsets.symmetric(vertical:25, horizontal:30),
                        child: Column(
                          children: const [
                              Icon(Icons.scanner, color: Color.fromARGB(255, 235, 235, 235), size: 40),
                              Text("Scan",style: TextStyle(
                                 color: Color.fromARGB(255, 235, 235, 235)
                              )),
                            ]
                          ),
                      ),
                      Container(
                         decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(255, 43, 47, 51),
                        ),
                        padding: const EdgeInsets.symmetric(vertical:25, horizontal:30),
                        child: Column(
                          children: const [
                              Icon(Icons.scanner, color: Color.fromARGB(255, 235, 235, 235), size: 40),
                              Text("Scan",style: TextStyle(
                                 color: Color.fromARGB(255, 235, 235, 235)
                              )),
                            ]
                          ),
                      ),
                      Container(
                         decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(255, 43, 47, 51),
                        ),
                        padding: const EdgeInsets.symmetric(vertical:25, horizontal:30),
                        child: Column(
                          children: const [
                              Icon(Icons.scanner, color: Color.fromARGB(255, 235, 235, 235), size: 40),
                              Text("Scan",style: TextStyle(
                                 color: Color.fromARGB(255, 235, 235, 235)
                              )),
                            ]
                          ),
                      ),
                        ],
                      )
                    ],)
                    ),
                    const SizedBox(height: 45,),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(255, 43, 47, 51),
                        ),
                      padding: const EdgeInsets.symmetric(vertical: 20, horizontal:0),
                      child: const RaiseLimit(),
                    ),
                    const SizedBox(height: 45,),
                    Column(
                      children: [
                        ListTile(
                          minVerticalPadding: 25,
                          tileColor: const Color.fromARGB(255, 43, 47, 51),
                          leading: Container(
                            decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            
                            color: const Color.fromARGB(255, 86, 67, 15),
                        ),
                            padding:const EdgeInsets.all(10),
                            child:const Icon(Icons.attach_money, color: Colors.white, size: 30,)
                          ),
                          title: const Text("Transfer",
                          style: TextStyle(
                                  color: Color.fromARGB(255, 235, 235, 235),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500
                                ),),
                          subtitle: const Text("+91 8542145742  > 11-5-2022",
                          style: TextStyle(
                                  color: Color.fromARGB(255, 197, 197, 197),
                                  fontSize: 11,
                                  fontWeight: FontWeight.w600
                                ),),
                          trailing: Column(
                            children: const [
                              Text("RP 60.000",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 235, 235, 235),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400
                                ),
                              ),
                              Text("Success",
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400
                                ),),
                            ],
                          ),
                        ),
                        const SizedBox(height: 25,),
                        ListTile(
                          minVerticalPadding: 25,
                          tileColor: const Color.fromARGB(255, 43, 47, 51),
                          leading: Container(
                            decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            
                            color: const Color.fromARGB(255, 86, 67, 15),
                        ),
                            padding:const EdgeInsets.all(10),
                            child:const Icon(Icons.attach_money, color: Colors.white, size: 30,)
                          ),
                          title: const Text("Transfer",
                          style: TextStyle(
                                  color: Color.fromARGB(255, 235, 235, 235),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500
                                ),),
                          subtitle: const Text("+91 8542145742  > 11-5-2022",
                          style: TextStyle(
                                  color: Color.fromARGB(255, 197, 197, 197),
                                  fontSize: 11,
                                  fontWeight: FontWeight.w600
                                ),),
                          trailing: Column(
                            children: const [
                              Text("RP 60.000",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 235, 235, 235),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400
                                ),
                              ),
                              Text("Success",
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400
                                ),),
                            ],
                          ),
                        ),
                        const SizedBox(height: 25,),
                        ListTile(
                          minVerticalPadding: 25,
                          tileColor: const Color.fromARGB(255, 43, 47, 51),
                          leading: Container(
                            decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            
                            color: const Color.fromARGB(255, 86, 67, 15),
                        ),
                            padding:const EdgeInsets.all(10),
                            child:const Icon(Icons.attach_money, color: Colors.white, size: 30,)
                          ),
                          title: const Text("Transfer",
                          style: TextStyle(
                                  color: Color.fromARGB(255, 235, 235, 235),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500
                                ),),
                          subtitle: const Text("+91 8542145742  > 11-5-2022",
                          style: TextStyle(
                                  color: Color.fromARGB(255, 197, 197, 197),
                                  fontSize: 11,
                                  fontWeight: FontWeight.w600
                                ),),
                          trailing: Column(
                            children: const [
                              Text("RP 60.000",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 235, 235, 235),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400
                                ),
                              ),
                              Text("Success",
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400
                                ),),
                            ],
                          ),
                        ),
                        const SizedBox(height: 25,),
                        ListTile(
                          minVerticalPadding: 25,
                          tileColor: const Color.fromARGB(255, 43, 47, 51),
                          leading: Container(
                            decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            
                            color: const Color.fromARGB(255, 86, 67, 15),
                        ),
                            padding:const EdgeInsets.all(10),
                            child:const Icon(Icons.attach_money, color: Colors.white, size: 30,)
                          ),
                          title: const Text("Transfer",
                          style: TextStyle(
                                  color: Color.fromARGB(255, 235, 235, 235),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500
                                ),),
                          subtitle: const Text("+91 8542145742  > 11-5-2022",
                          style: TextStyle(
                                  color: Color.fromARGB(255, 197, 197, 197),
                                  fontSize: 11,
                                  fontWeight: FontWeight.w600
                                ),),
                          trailing: Column(
                            children: const [
                              Text("RP 60.000",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 235, 235, 235),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400
                                ),
                              ),
                              Text("Success",
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400
                                ),),
                            ],
                          ),
                        ),
                        const SizedBox(height: 25,),
                        ListTile(
                          minVerticalPadding: 25,
                          tileColor: const Color.fromARGB(255, 43, 47, 51),
                          leading: Container(
                            decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            
                            color: const Color.fromARGB(255, 86, 67, 15),
                        ),
                            padding:const EdgeInsets.all(10),
                            child:const Icon(Icons.attach_money, color: Colors.white, size: 30,)
                          ),
                          title: const Text("Transfer",
                          style: TextStyle(
                                  color: Color.fromARGB(255, 235, 235, 235),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500
                                ),),
                          subtitle: const Text("+91 8542145742  > 11-5-2022",
                          style: TextStyle(
                                  color: Color.fromARGB(255, 197, 197, 197),
                                  fontSize: 11,
                                  fontWeight: FontWeight.w600
                                ),),
                          trailing: Column(
                            children: const [
                              Text("RP 60.000",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 235, 235, 235),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400
                                ),
                              ),
                              Text("Success",
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400
                                ),),
                            ],
                          ),
                        ),
                        const SizedBox(height: 25,),
                        ListTile(
                          minVerticalPadding: 25,
                          tileColor: const Color.fromARGB(255, 43, 47, 51),
                          leading: Container(
                            decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            
                            color: const Color.fromARGB(255, 86, 67, 15),
                        ),
                            padding:const EdgeInsets.all(10),
                            child:const Icon(Icons.attach_money, color: Colors.white, size: 30,)
                          ),
                          title: const Text("Transfer",
                          style: TextStyle(
                                  color: Color.fromARGB(255, 235, 235, 235),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500
                                ),),
                          subtitle: const Text("+91 8542145742  > 11-5-2022",
                          style: TextStyle(
                                  color: Color.fromARGB(255, 197, 197, 197),
                                  fontSize: 11,
                                  fontWeight: FontWeight.w600
                                ),),
                          trailing: Column(
                            children: const [
                              Text("RP 60.000",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 235, 235, 235),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400
                                ),
                              ),
                              Text("Success",
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400
                                ),),
                            ],
                          ),
                        ),
                        const SizedBox(height: 25,),
                        
                      ],
                    ),
                  ],
                ),
            ),
        );
  }
}

class RaiseLimit extends StatelessWidget {
  const RaiseLimit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Icon(Icons.upgrade_rounded,
              color: Colors.white,
              size: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left:8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Upgrade your Account!",
                    style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w600
                )
                  ),
                  SizedBox(height: 5,),
                  Text("Get Unlimited Premium Account For More Discount.",
                    style: TextStyle(
                  fontSize: 11,
                  color: Colors.white,
                  fontWeight: FontWeight.w300
                )
                  ),
                ],
              ),
            )
          ],
        ),
        const SizedBox(height: 15,),
        ElevatedButton(onPressed: () async => { 
          await Navigator.of(context).pushNamed(MyRoutes.exploreRoute)
          },
          style: ElevatedButton.styleFrom(
            textStyle:const  TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            primary: const Color.fromARGB(255, 234, 171, 0),
            // padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 80),
            minimumSize: const Size(300, 50),

          ), 
          child: const Text("Upgrade Now")),
      ],
    );;
  }
}