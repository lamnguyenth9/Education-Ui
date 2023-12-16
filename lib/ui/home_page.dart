import 'package:education_app/data/data.dart';
import 'package:education_app/ui/course_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List imgList=[
    "flutter",
    "laravel",
    "python",
    "reactnative",
  ];
    final size=MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          
          Container(
            padding: EdgeInsets.only(top: 15,left: 15,right: 15,bottom: 10),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)
              )
            ),
            child: Column(
             
             crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.dashboard,size: 30,color: Colors.white,),
                    Icon(Icons.notifications,size: 30,color: Colors.white,)
                  ],
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: EdgeInsets.only(left: 3,bottom: 15),
                  child: Text("Hi Guys",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1,
                    fontSize: 30
                  ),
                  ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5,bottom: 20),
                    width: size.width ,
                    height: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)

                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        border: InputBorder.none,
                        hintText: "Search .....",
                        hintStyle: TextStyle(
                           color: Colors.black.withOpacity(0.5)
                        )
                      ),
                    ),
                  )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top:20,right: 20,left: 20),
            child: Column(
              children: [
                GridView.builder(
                  itemCount: catNames.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1.5
                    ), 
                    itemBuilder: (BuildContext context, int index) { 
                      return Column(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: catColors[index],
                              shape: BoxShape.circle
                            ),
                            child: Center(
                              child: catIcons[index],
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text(
                            catNames[index],
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.7),
                              fontWeight: FontWeight.w500
                            ),
                          )
                        ],
                      );
                     },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Course",style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                      ),),
                      Text("See all",style:TextStyle(
                        fontSize: 18,
                        color: Colors.blue,
                        fontWeight: FontWeight.w500
                      ))
                    ],
                  ),
                  SizedBox(height: 10,),
                  GridView.builder(
                    shrinkWrap: true,
                    itemCount: imgList.length,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10
                      ), 
                    itemBuilder: ( context,  index) { 
                      return InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context)=> CoursePage(imgList[index])
                            ));
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromARGB(255, 231, 230, 230)
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Image.asset("assets/${imgList[index]}.png",scale: 0.5,width: 100,height: 100,),
                              ),
                              Text("55 Video", style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black.withOpacity(0.5)
                              ),)
                            ],
                          ),
                        ),
                      );
                     },)
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        iconSize: 32,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),label: "Home"
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),label: "Course"
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),label: "WishList"
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),label: "Acount"
            ),
        ]
        ),
    );
  }
}