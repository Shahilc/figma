import 'package:flutter/material.dart';
class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  List nameList1=[
    {'name':'All'},
    {'name':'Play Station'},
    {'name':'Nitendo'},
    {'name':'X-box'},
    {'name':'Pc'},
    {'name':'Steam'},
    {'name':'Stadia'},
  ];

  int selectColor=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 10, 15, 34),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shape: Border(bottom: BorderSide(color: Colors.white38, width: 0.4)),
        leading:Padding(
              padding: const EdgeInsets.only(left: 20, top: 5,bottom: 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                    border: Border.all(color: Colors.indigo),
                    image: DecorationImage(
                    image: AssetImage("images/157093-11790308.jpg"),
                      fit: BoxFit.cover
                )
                ),
              )
            ),
        title: Text('John'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 5,right: 10),
            child: Row(
              children: [
                Icon(Icons.search,color: Colors.blue,),
                Stack(
                  children: [
                    Container(
                      // color: Colors.red,
                        child: IconButton(
                          icon: Icon(
                            Icons.notifications_none,color: Colors.blue,
                          ),
                          onPressed: () {
                          },
                        )),
                    Positioned(
                        bottom: 15,
                        right: 11,
                        top: 0,
                        child: Container(
                          padding: EdgeInsets.all(6),
                          decoration: BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle),

                        ))
                  ],
                ),
              ],
            ),
          )
        ],

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15,top: 20,bottom: 10),
              child: Row(
                children: [
                  Text('Popular',style: TextStyle(color: Color.fromARGB(255, 113, 101, 201),fontSize: 20,fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            Container(
              height: 190,
              // color: Colors.grey,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20,),
                    child: Container(
                      width: 230,
                      // color: Colors.indigo,
                      child: Column(
                        children: [
                          Expanded(
                            flex: 6,
                            child: Container(
                              child: Row(
                                mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                                children: [
                                  Icon(Icons.arrow_back_ios_rounded,color: Colors.white,size: 20,),
                                 RotatedBox(quarterTurns: 2,child:  Icon(Icons.arrow_back_ios_rounded,color: Colors.white,size: 20,))
                                ],
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                                image: DecorationImage(
                                  image: AssetImage("images/Battlefield.jpg"),
                                    fit: BoxFit.cover
                                )
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
                                color: Color.fromARGB(255, 43, 45, 70)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(13),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('FarCry 6',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                    Icon(Icons.favorite_border,color: Colors.indigo,)
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      width: 230,
                      // color: Colors.indigo,
                      child: Column(
                        children: [
                          Expanded(
                            flex: 6,
                            child: Container(
                              child: Row(
                                mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                                children: [
                                  Icon(Icons.arrow_back_ios_rounded,color: Colors.white,size: 20,),
                                  RotatedBox(quarterTurns: 2,child:  Icon(Icons.arrow_back_ios_rounded,color: Colors.white,size: 20,))
                                ],
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                                  image: DecorationImage(
                                      image: AssetImage("images/gta.jpg"),
                                      fit: BoxFit.cover
                                  )
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
                                  color: Color.fromARGB(255, 43, 45, 70)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(13),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('FarCry 6',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                    Icon(Icons.favorite_border,color: Colors.indigo,)
                                  ],
                                ),
                              ),
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
              padding: const EdgeInsets.only(top: 20),
              child: Divider(
                color: Colors.grey,
                height: 0.8,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                height: 35,
                 // color: Colors.grey,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: nameList1.length,
                    itemBuilder: (context, index) {
                      return
                        Padding(
                          padding: const EdgeInsets.only(top: 5,bottom: 5,left: 5),
                          child: Container(
                            padding: EdgeInsets.only(left: 15,right: 15,bottom: 3,top: 3),
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.white24),
                            child: Center(child: Text(nameList1[index]['name'],style: TextStyle(color: Colors.white,fontSize: 13),)),
                          ),
                        );
                    },
                  ),
                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                  height: 50,
                   // color: Colors.grey,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child:ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
                    padding: const EdgeInsets.only(top: 5,bottom: 5,left: 5),
                    child: Container(
                      padding: EdgeInsets.only(left: 15,right: 15,bottom: 3,top: 3),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.white24),
                      child: Center(
                          child: Row(
                            children: [
                              Icon(Icons.image,color: Colors.red,size: 20,),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Text('All',style: TextStyle(color: Colors.white,fontSize: 13),),
                              ),
                            ],
                          )),
                    ),
                  ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5,bottom: 5,left: 13),
                          child: Container(
                            padding: EdgeInsets.only(left: 15,right: 15,bottom: 3,top: 3),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue,width: 0.5),
                                borderRadius: BorderRadius.circular(30),color: Colors.white24),
                            child: Center(
                                child: Row(
                                  children: [
                                    Icon(Icons.zoom_out_map_rounded,color: Colors.red,size: 20,),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Text('Action',style: TextStyle(color: Colors.white,fontSize: 13),),
                                    ),
                                  ],
                                )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5,bottom: 5,left: 13),
                          child: Container(
                            padding: EdgeInsets.only(left: 15,right: 15,bottom: 3,top: 3),
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.white24),
                            child: Center(
                                child: Row(
                                  children: [
                                    Icon(Icons.widgets,color: Colors.blue,size: 20,),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Text('Adventure',style: TextStyle(color: Colors.white,fontSize: 13),),
                                    ),
                                  ],
                                )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5,bottom: 5,left: 13),
                          child: Container(
                            padding: EdgeInsets.only(left: 15,right: 15,bottom: 3,top: 3),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.blue,width: 0.5),
                                borderRadius: BorderRadius.circular(30),color: Colors.white24),
                            child: Center(
                                child: Row(
                                  children: [
                                    Icon(Icons.computer,color: Colors.grey,size: 20,),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Text('Puzzle',style: TextStyle(color: Colors.white,fontSize: 13),),
                                    ),
                                  ],
                                )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5,bottom: 5,left: 13),
                          child: Container(
                            padding: EdgeInsets.only(left: 15,right: 15,bottom: 3,top: 3),
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.white24),
                            child: Center(
                                child: Row(
                                  children: [
                                    Icon(Icons.zoom_out_map_rounded,color: Colors.red,size: 20,),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Text('Action',style: TextStyle(color: Colors.white,fontSize: 13),),
                                    ),
                                  ],
                                )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5,bottom: 5,left: 13),
                          child: Container(
                            padding: EdgeInsets.only(left: 15,right: 15,bottom: 3,top: 3),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.blue,width: 0.5),
                                borderRadius: BorderRadius.circular(30),color: Colors.white24),
                            child: Center(
                                child: Row(
                                  children: [
                                    Icon(Icons.widgets,color: Colors.blue,size: 20,),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Text('Adventure',style: TextStyle(color: Colors.white,fontSize: 13),),
                                    ),
                                  ],
                                )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5,bottom: 5,left: 13),
                          child: Container(
                            padding: EdgeInsets.only(left: 15,right: 15,bottom: 3,top: 3),
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.white24),
                            child: Center(
                                child: Row(
                                  children: [
                                    Icon(Icons.computer,color: Colors.grey,size: 20,),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Text('Puzzle',style: TextStyle(color: Colors.white,fontSize: 13),),
                                    ),
                                  ],
                                )),
                          ),
                        ),
                      ],
                    )
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25,top: 20),
              child: Row(
                children: [
                  Text('Today',style: TextStyle(color: Color.fromARGB(255, 113, 101, 201),fontSize: 20,fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10,left: 25,right: 25),
              child: Container(
                height: 300,
                 //color: Colors.grey,
                child: Column(
                  children: [
                    Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                              image: DecorationImage(
                            image: AssetImage(
                              "images/Riders-Republic.jpg"
                            ),
                            fit: BoxFit.fitWidth
                          )),
                    )),
                    Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
                            color: Color.fromARGB(255, 43, 45, 70),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 5,right: 15,left: 15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('FarCry 6',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
                                    Icon(Icons.favorite_border,color: Colors.indigo,size: 28,)
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5,bottom: 5,left: 10),
                                    child: Container(
                                      padding: EdgeInsets.only(left: 7,right: 7,bottom: 8,top: 8),
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Color.fromARGB(255, 31, 33, 56)),
                                      child: Center(
                                          child: Row(
                                            children: [
                                              Icon(Icons.date_range,color: Colors.indigo,size: 15,),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 5),
                                                child: Text('12 Feb 2021',style: TextStyle(color: Colors.white,fontSize: 13),),
                                              ),
                                            ],
                                          )),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5,bottom: 5),
                                    child: Container(
                                      padding: EdgeInsets.only(left: 7,right: 7,bottom: 8,top: 8),
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Color.fromARGB(255, 31, 33, 56)),
                                      child: Center(
                                          child: Row(
                                            children: [
                                              Icon(Icons.computer,color: Colors.red,size: 15,),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 5),
                                                child: Text('Action',style: TextStyle(color: Colors.white,fontSize: 13),),
                                              ),
                                            ],
                                          )),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5,bottom: 5,right: 10),
                                    child: Container(
                                      padding: EdgeInsets.only(left: 7,right: 7,bottom: 8,top: 8),
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Color.fromARGB(255, 31, 33, 56)),
                                      child: Center(
                                          child: Row(
                                            children: [
                                              Icon(Icons.image,color: Colors.blue,size: 15,),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 5),
                                                child: Text('Adventure',style: TextStyle(color: Colors.white,fontSize: 13),),
                                              ),
                                            ],
                                          )),
                                    ),
                                  ),

                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 5,left: 13),
                                    child: Container(
                                      padding: EdgeInsets.only(left: 7,right: 7,bottom: 8,top: 8),
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Color.fromARGB(255, 31, 33, 56)),
                                      child: Center(
                                          child: Row(
                                            children: [
                                              Icon(Icons.call_to_action_rounded,color: Colors.orange,size: 15,),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 5),
                                                child: Text('30% OFF',style: TextStyle(color: Colors.white,fontSize: 13),),
                                              ),
                                            ],
                                          )),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10,left: 15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Text('Download',style: TextStyle(color: Colors.grey,fontSize: 11),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Icon(Icons.android_rounded,color: Colors.green,),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Icon(Icons.app_blocking,color: Colors.white,),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Icon(Icons.play_circle_outline,color: Colors.yellow,),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Icon(Icons.call_to_action_rounded,color: Colors.red,),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Icon(Icons.computer,color: Colors.indigo,),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Icon(Icons.favorite_border,color: Colors.orange,),
                                    ),

                                  ],
                                ),
                              )



                            ],
                          ),
                        )),

                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25,left: 25,right: 25),
              child: Container(
                height: 230,
                //color: Colors.grey,
                child: Column(
                  children: [
                    Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                              image: DecorationImage(
                                  image: AssetImage(
                                      "images/farcry.jpg"
                                  ),
                                  fit: BoxFit.fitWidth
                              )),
                        )),
                    Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
                            color: Color.fromARGB(255, 43, 45, 70),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 5,right: 15,left: 15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('FarCry 6',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
                                    Icon(Icons.favorite_border,color: Colors.indigo,size: 28,)
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5,bottom: 5,left: 10),
                                    child: Container(
                                      padding: EdgeInsets.only(left: 7,right: 7,bottom: 8,top: 8),
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Color.fromARGB(255, 31, 33, 56)),
                                      child: Center(
                                          child: Row(
                                            children: [
                                              Icon(Icons.date_range,color: Colors.indigo,size: 15,),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 5),
                                                child: Text('12 Feb 2021',style: TextStyle(color: Colors.white,fontSize: 13),),
                                              ),
                                            ],
                                          )),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5,bottom: 5),
                                    child: Container(
                                      padding: EdgeInsets.only(left: 7,right: 7,bottom: 8,top: 8),
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Color.fromARGB(255, 31, 33, 56)),
                                      child: Center(
                                          child: Row(
                                            children: [
                                              Icon(Icons.computer,color: Colors.red,size: 15,),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 5),
                                                child: Text('Action',style: TextStyle(color: Colors.white,fontSize: 13),),
                                              ),
                                            ],
                                          )),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5,bottom: 5,right: 10),
                                    child: Container(
                                      padding: EdgeInsets.only(left: 7,right: 7,bottom: 8,top: 8),
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Color.fromARGB(255, 31, 33, 56)),
                                      child: Center(
                                          child: Row(
                                            children: [
                                              Icon(Icons.image,color: Colors.blue,size: 15,),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 5),
                                                child: Text('Adventure',style: TextStyle(color: Colors.white,fontSize: 13),),
                                              ),
                                            ],
                                          )),
                                    ),
                                  ),

                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10,left: 15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Text('Download',style: TextStyle(color: Colors.grey,fontSize: 11),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Icon(Icons.android_rounded,color: Colors.green,),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Icon(Icons.app_blocking,color: Colors.white,),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Icon(Icons.play_circle_outline,color: Colors.yellow,),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Icon(Icons.call_to_action_rounded,color: Colors.red,),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Icon(Icons.computer,color: Colors.indigo,),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Icon(Icons.favorite_border,color: Colors.orange,),
                                    ),

                                  ],
                                ),
                              )



                            ],
                          ),
                        )),

                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25,top: 20),
              child: Row(
                children: [
                  Text('This Week',style: TextStyle(color: Color.fromARGB(255, 113, 101, 201),fontSize: 20,fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10,left: 25,right: 25),
              child: Container(
                height: 300,
                //color: Colors.grey,
                child: Column(
                  children: [
                    Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                              image: DecorationImage(
                                  image: AssetImage(
                                      "images/farcry.jpg"
                                  ),
                                  fit: BoxFit.fitWidth
                              )),
                        )),
                    Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
                            color: Color.fromARGB(255, 43, 45, 70),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 5,right: 15,left: 15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('FarCry 6',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
                                    Icon(Icons.favorite_border,color: Colors.indigo,size: 28,)
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5,bottom: 5,left: 10),
                                    child: Container(
                                      padding: EdgeInsets.only(left: 7,right: 7,bottom: 8,top: 8),
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Color.fromARGB(255, 31, 33, 56)),
                                      child: Center(
                                          child: Row(
                                            children: [
                                              Icon(Icons.date_range,color: Colors.indigo,size: 15,),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 5),
                                                child: Text('12 Feb 2021',style: TextStyle(color: Colors.white,fontSize: 13),),
                                              ),
                                            ],
                                          )),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5,bottom: 5),
                                    child: Container(
                                      padding: EdgeInsets.only(left: 7,right: 7,bottom: 8,top: 8),
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Color.fromARGB(255, 31, 33, 56)),
                                      child: Center(
                                          child: Row(
                                            children: [
                                              Icon(Icons.computer,color: Colors.red,size: 15,),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 5),
                                                child: Text('Action',style: TextStyle(color: Colors.white,fontSize: 13),),
                                              ),
                                            ],
                                          )),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5,bottom: 5,right: 10),
                                    child: Container(
                                      padding: EdgeInsets.only(left: 7,right: 7,bottom: 8,top: 8),
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Color.fromARGB(255, 31, 33, 56)),
                                      child: Center(
                                          child: Row(
                                            children: [
                                              Icon(Icons.image,color: Colors.blue,size: 15,),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 5),
                                                child: Text('Adventure',style: TextStyle(color: Colors.white,fontSize: 13),),
                                              ),
                                            ],
                                          )),
                                    ),
                                  ),

                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 5,left: 13),
                                    child: Container(
                                      padding: EdgeInsets.only(left: 7,right: 7,bottom: 8,top: 8),
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Color.fromARGB(255, 31, 33, 56)),
                                      child: Center(
                                          child: Row(
                                            children: [
                                              Icon(Icons.call_to_action_rounded,color: Colors.orange,size: 15,),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 5),
                                                child: Text('30% OFF',style: TextStyle(color: Colors.white,fontSize: 13),),
                                              ),
                                            ],
                                          )),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10,left: 15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Text('Download',style: TextStyle(color: Colors.grey,fontSize: 11),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Icon(Icons.android_rounded,color: Colors.green,),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Icon(Icons.app_blocking,color: Colors.white,),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Icon(Icons.play_circle_outline,color: Colors.yellow,),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Icon(Icons.call_to_action_rounded,color: Colors.red,),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Icon(Icons.computer,color: Colors.indigo,),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Icon(Icons.favorite_border,color: Colors.orange,),
                                    ),

                                  ],
                                ),
                              )



                            ],
                          ),
                        )),

                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25,left: 25,right: 25),
              child: Container(
                height: 230,
                //color: Colors.grey,
                child: Column(
                  children: [
                    Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                              image: DecorationImage(
                                  image: AssetImage(
                                      "images/farcry.jpg"
                                  ),
                                  fit: BoxFit.fitWidth
                              )),
                        )),
                    Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
                            color: Color.fromARGB(255, 43, 45, 70),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 5,right: 15,left: 15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('FarCry 6',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
                                    Icon(Icons.favorite_border,color: Colors.indigo,size: 28,)
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5,bottom: 5,left: 10),
                                    child: Container(
                                      padding: EdgeInsets.only(left: 7,right: 7,bottom: 8,top: 8),
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Color.fromARGB(255, 31, 33, 56)),
                                      child: Center(
                                          child: Row(
                                            children: [
                                              Icon(Icons.date_range,color: Colors.indigo,size: 15,),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 5),
                                                child: Text('12 Feb 2021',style: TextStyle(color: Colors.white,fontSize: 13),),
                                              ),
                                            ],
                                          )),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5,bottom: 5),
                                    child: Container(
                                      padding: EdgeInsets.only(left: 7,right: 7,bottom: 8,top: 8),
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Color.fromARGB(255, 31, 33, 56)),
                                      child: Center(
                                          child: Row(
                                            children: [
                                              Icon(Icons.computer,color: Colors.red,size: 15,),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 5),
                                                child: Text('Action',style: TextStyle(color: Colors.white,fontSize: 13),),
                                              ),
                                            ],
                                          )),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5,bottom: 5,right: 10),
                                    child: Container(
                                      padding: EdgeInsets.only(left: 7,right: 7,bottom: 8,top: 8),
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Color.fromARGB(255, 31, 33, 56)),
                                      child: Center(
                                          child: Row(
                                            children: [
                                              Icon(Icons.image,color: Colors.blue,size: 15,),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 5),
                                                child: Text('Adventure',style: TextStyle(color: Colors.white,fontSize: 13),),
                                              ),
                                            ],
                                          )),
                                    ),
                                  ),

                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10,left: 15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Text('Download',style: TextStyle(color: Colors.grey,fontSize: 11),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Icon(Icons.android_rounded,color: Colors.green,),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Icon(Icons.app_blocking,color: Colors.white,),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Icon(Icons.play_circle_outline,color: Colors.yellow,),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Icon(Icons.call_to_action_rounded,color: Colors.red,),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Icon(Icons.computer,color: Colors.indigo,),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Icon(Icons.favorite_border,color: Colors.orange,),
                                    ),

                                  ],
                                ),
                              )



                            ],
                          ),
                        )),

                  ],
                ),
              ),
            ),
            SizedBox(height: 20,)

          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(top: BorderSide(color: Colors.white38,width: 0.8)),
          color: Color.fromARGB(255, 10, 15, 34),
        ),
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(
                Icons.apps_outlined,
                size: 27,
                color: selectColor==1?Colors.blue:Colors.grey,
              ),
              onPressed: () {
                setState(() {
                  selectColor=1;
                });
              },
            ),
            IconButton(
                icon: Icon(
                  Icons.account_circle_outlined,
                  size: 27,
                  color: selectColor==2?Colors.blue:Colors.grey,
                ),
                onPressed: () {
                  setState(() {
                    selectColor=2;
                  });
                }),
            IconButton(
                icon: Icon(
                  Icons.favorite_border,
                  size: 27,
                  color: selectColor==3?Colors.blue:Colors.grey,

                ),
                onPressed: () {
                  setState(() {
                    selectColor=3;
                  });
                }),
          ],
        ),
      ),
    );
  }
}
