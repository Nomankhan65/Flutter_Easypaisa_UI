import 'package:easypaisaclone/res/components/menu_column.dart';
import 'package:easypaisaclone/res/components/payment_container.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        elevation: 4,
        backgroundColor: Colors.green,
        title: Row(
          children: [
            Stack(clipBehavior: Clip.none, children: [
              Container(
                height: height * 0.08,
                width: width * 0.08,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.blueGrey),
                child: Center(
                  child: Text(
                    'NK',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                right: -5,
                child: Stack(clipBehavior: Clip.none, children: [
                  Container(
                    height: height * 0.04,
                    width: width * 0.04,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black87,
                      border: Border.all(color: Colors.white),
                    ),
                    child: Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: 13,
                    ),
                  ),
                  Positioned(
                      right: -2,
                      top: 4,
                      child: Icon(
                        Icons.circle,
                        color: Colors.red,
                        size: 10,
                      ))
                ]),
              ),
            ]),
            SizedBox(
              width: width * 0.3,
            ),
            Text(
              'easypaisa',
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
        actions: [
          Row(
            children: [
              Icon(
                Icons.search,
                color: Colors.white,
              ),
              SizedBox(
                width: width * 0.015,
              ),
              Icon(
                Icons.notifications_none,
                color: Colors.white,
              )
            ],
          ),
          SizedBox(
            width: width * 0.035,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: height * 0.2,
              color: Colors.green,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'easypaisa',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              'NOMAN KHAN',
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                            Text(
                              '03000300000',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Sign in to easypaisa account',
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                          child: Container(
                            height: height * 0.03,
                            width: width * 0.2,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Center(
                                child: Text(
                              'Sign In',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                            )),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                PaymentContainer(
                    icon: Icon(Icons.send_to_mobile), title: 'Send Money'),
                PaymentContainer(
                    icon: Icon(Icons.mobile_screen_share_rounded),
                    title: 'Bill Payment'),
                PaymentContainer(
                    icon: Icon(Icons.install_mobile), title: 'Mobile Package')
              ],
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Text(
                'More with easypaisa',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                width: double.infinity,
                height: height * 0.4,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MenuColumn(
                              title: 'Easyload',
                              icon: Icon(Icons.install_mobile)),
                          MenuColumn(
                              title: 'Easycash', icon: Icon(Icons.money)),
                          MenuColumn(
                              title: 'Saving',
                              icon: Icon(Icons.savings_outlined)),
                          MenuColumn(
                              title: 'Invite',
                              icon: Icon(Icons.group_add_outlined)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MenuColumn(
                              title: 'Remittance',
                              icon: Icon(Icons.ac_unit_outlined)),
                          MenuColumn(
                              title: 'Mini App',
                              icon: Icon(Icons.app_shortcut_rounded)),
                          MenuColumn(
                              title: 'Savings',
                              icon: Icon(Icons.monetization_on)),
                          MenuColumn(
                              title: 'Buy Now',
                              icon: Icon(Icons.sell_outlined)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MenuColumn(
                              title: 'Insurance',
                              icon: Icon(Icons.backpack_outlined)),
                          MenuColumn(
                              title: 'M-Tag',
                              icon: Icon(Icons.car_repair_outlined)),
                          MenuColumn(title: 'Game', icon: Icon(Icons.games)),
                          MenuColumn(title: 'See ALl', icon: Icon(Icons.menu)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Text(
                'Get your easypaisa Debit Card',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:20,vertical:5),
              child: Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: height * 0.23,
                    width: width * 0.41,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal:15,vertical:15),
                      child: Column(
                        crossAxisAlignment:CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Online Card',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.white,fontSize:16),
                          ),
                          SizedBox(height:15,),
                          Text(
                            'Only for Online Payments \nin Pakitsan',
                            style: TextStyle(
                                color: Colors.orangeAccent,fontSize:12),
                          ),
                          SizedBox(height:height*0.04,),
                          Container(
                            height:height*0.04,
                            width:double.infinity,
                            decoration:BoxDecoration(
                              borderRadius:BorderRadius.circular(20),
                              border:Border.all(
                                color:Colors.greenAccent
                              )
                            ),
                            child:Row(
                              mainAxisAlignment:MainAxisAlignment.center,
                              children: [
                                Text('Manage card',style:TextStyle(color:Colors.white),),
                                SizedBox(width:6,),
                                Icon(Icons.arrow_forward_outlined,color:Colors.white,)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: height * 0.23,
                    width: width * 0.41,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal:15,vertical:15),
                      child: Column(
                        crossAxisAlignment:CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment:MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Plastic Card',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, color: Colors.white,fontSize:16),
                              ),

                              Icon(Icons.sim_card,color:Colors.amber,)
                            ],
                          ),
                          SizedBox(height:15,),
                          Text(
                            'Use at any ATM or Shop \nin Pakitsan',
                            style: TextStyle(
                                color: Colors.orangeAccent,fontSize:12),
                          ),
                          SizedBox(height:height*0.04,),
                          Container(
                            height:height*0.04,
                            width:double.infinity,
                            decoration:BoxDecoration(
                                borderRadius:BorderRadius.circular(20),
                                border:Border.all(
                                    color:Colors.greenAccent
                                )
                            ),
                            child:Row(
                              mainAxisAlignment:MainAxisAlignment.center,
                              children: [
                                Text('Manage card',style:TextStyle(color:Colors.white),),
                                SizedBox(width:6,),
                                Icon(Icons.arrow_forward_outlined,color:Colors.white,)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:20, vertical: 10),
              child: Text(
                'Tap to see whats new',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              scrollDirection:Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:20,vertical:5),
                    child: Container(
                      height:height*0.21,
                      width:width*0.38,
                      decoration:BoxDecoration(
                        color:Colors.white,
                        borderRadius:BorderRadius.circular(20),
                        border:Border.all(
                          width:2,
                          color:Colors.pinkAccent
                        )
                      ),
                      child:Column(
                        mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.mobile_friendly_rounded,color:Colors.green,size:100,),
                          Text('Rs. 300 cashback')
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:1,vertical:5),
                    child: Container(
                      height:height*0.21,
                      width:width*0.38,
                      decoration:BoxDecoration(
                          color:Colors.white,
                          borderRadius:BorderRadius.circular(20),
                          border:Border.all(
                              width:2,
                              color:Colors.pinkAccent
                          )
                      ),
                      child:Column(
                        mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.mobile_friendly_rounded,color:Colors.green,size:100,),
                          Text('Rs. 300 cashback')
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:20,vertical:5),
                    child: Container(
                      height:height*0.21,
                      width:width*0.38,
                      decoration:BoxDecoration(
                          color:Colors.white,
                          borderRadius:BorderRadius.circular(20),
                          border:Border.all(
                              width:2,
                              color:Colors.pinkAccent
                          )
                      ),
                      child:Column(
                        mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.mobile_friendly_rounded,color:Colors.green,size:100,),
                          Text('Rs. 300 cashback')
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:20, vertical: 10),
              child: Text(
                'Schedule Your Transactions',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
