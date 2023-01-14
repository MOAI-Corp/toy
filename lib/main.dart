import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

AudioPlayer? player;
void main() {
  player = AudioPlayer();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({
    super.key,
  });

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int sum = 0;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('서현이네 빵집    Seohyun\'s Bakery'),
          backgroundColor: Colors.brown[400],
        ),
        body: Builder(builder: (context) {
          return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('images/image_main.jpg'),
                Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 400,
                      height: 210,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 15,
                            offset: const Offset(10, 10),
                            color: Colors.black.withOpacity(0.3),
                          )
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        sum += 2000;
                                      });
                                      player!.setSourceAsset('plainbread.mp3');
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                          backgroundColor: Colors.blue,
                                          shape: RoundedRectangleBorder(),
                                          width: 200,
                                          behavior: SnackBarBehavior.floating,
                                          duration: Duration(milliseconds: 500),
                                          content: Text(
                                            '식빵 \n Plain Bread \n 2000won',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 25),
                                          ),
                                        ),
                                      );
                                    },
                                    child: Image.asset(
                                      'images/1.png',
                                      width: 120,
                                      height: 100,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        sum += 1000;
                                      });
                                      player!.setSourceAsset('croissant.mp3');
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                          backgroundColor: Colors.blue,
                                          shape: RoundedRectangleBorder(),
                                          behavior: SnackBarBehavior.floating,
                                          duration: Duration(milliseconds: 500),
                                          width: 200,
                                          content: Text(
                                            '크로아상 \n Croissant \n 1000won',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 25),
                                          ),
                                        ),
                                      );
                                    },
                                    child: Image.asset(
                                      'images/2.png',
                                      width: 120,
                                      height: 100,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        sum += 1000;
                                      });
                                      player!.setSourceAsset('cream.mp3');
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                          backgroundColor: Colors.blue,
                                          shape: RoundedRectangleBorder(),
                                          behavior: SnackBarBehavior.floating,
                                          duration: Duration(milliseconds: 500),
                                          width: 200,
                                          content: Text(
                                            '크림빵 \n Cream Bread \n 1000won',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 25),
                                          ),
                                        ),
                                      );
                                    },
                                    child: Image.asset(
                                      'images/3.png',
                                      width: 120,
                                      height: 100,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        sum += 1000;
                                      });
                                      player!.setSourceAsset('donut.mp3');
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                          backgroundColor: Colors.blue,
                                          shape: RoundedRectangleBorder(),
                                          behavior: SnackBarBehavior.floating,
                                          duration: Duration(milliseconds: 500),
                                          width: 200,
                                          content: Text(
                                            '도넛 \n Donut \n 1000won',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 25),
                                          ),
                                        ),
                                      );
                                    },
                                    child: Image.asset(
                                      'images/4.png',
                                      width: 120,
                                      height: 100,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        sum += 2000;
                                      });
                                      player!.setSourceAsset('pastry.mp3');
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                          backgroundColor: Colors.blue,
                                          shape: RoundedRectangleBorder(),
                                          behavior: SnackBarBehavior.floating,
                                          duration: Duration(milliseconds: 500),
                                          width: 200,
                                          content: Text(
                                            '패스츄리 \n Pastry \n 2000won',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 25),
                                          ),
                                        ),
                                      );
                                    },
                                    child: Image.asset(
                                      'images/5.png',
                                      width: 120,
                                      height: 100,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        sum += 2000;
                                      });
                                      player!.setSourceAsset('soboro.mp3');
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                          backgroundColor: Colors.blue,
                                          shape: RoundedRectangleBorder(),
                                          behavior: SnackBarBehavior.floating,
                                          duration: Duration(milliseconds: 500),
                                          width: 200,
                                          content: Text(
                                            '소보로빵 \n Soboro Bread \n 2000won',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 25),
                                          ),
                                        ),
                                      );
                                    },
                                    child: Image.asset(
                                      'images/6.png',
                                      width: 120,
                                      height: 100,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        color: Colors.yellow[100],
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 15,
                            offset: const Offset(10, 10),
                            color: Colors.black.withOpacity(0.3),
                          )
                        ],
                      ),
                      width: 400,
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            '    얼마일까요?\n    How much is it?',
                            textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 15),
                          ),
                          Container(
                            alignment: Alignment.center,
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 15,
                                  offset: const Offset(10, 10),
                                  color: Colors.black.withOpacity(0.3),
                                )
                              ],
                            ),
                            child: TextButton(
                              child: const Text(
                                '계산하기 \n Pay',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              onPressed: () {
                                setState(() {});
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    backgroundColor: Colors.green,
                                    shape: const StadiumBorder(),
                                    behavior: SnackBarBehavior.floating,
                                    duration: const Duration(milliseconds: 500),
                                    width: 200,
                                    content: Text(
                                      '$sum',
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 25),
                                    ),
                                  ),
                                );
                                setState(() {
                                  sum = 0;
                                });
                              },
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ]);
        }),
      ),
    );
  }
}
