import 'package:education_app/ui/home_page.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Material(
          child: Container(
            height: size.height,
            width: size.width,
            child: Stack(
              children: [
                Container(
                  width: size.width,
                  height: size.height/1.6,
                  color: Colors.white,
                ),
                Container(
                  width: size.width,
                  height: size.height/1.6,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(70)
                    )
                  ),
                  child: Center(
                    child: Image.asset("assets/book1.png",scale: 0.8,)
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: size.height/2.666,
                    width: size.width,
                    color: Colors.blue,
                  ),
                ),
                 Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: size.height/2.666,
                    width: size.width,
                    padding: EdgeInsets.only(top: 40,bottom: 30),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(70)
                      )
                    ),
                    child: Column(
                      children: [
                        Text("Learning is everything",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1,
                          wordSpacing: 2
                        ),
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40),
                          child: Text("Learning wherever you are",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black.withOpacity(0.6)
                          ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Material(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(15),
                          child: InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (_)=>HomePage()));
                            },
                               child: Container(
                                padding: EdgeInsets.symmetric(vertical: 15,horizontal: 40),
                                child: Text("Get Start", style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1
                                ),),
                               ),
                          ),
                        )
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