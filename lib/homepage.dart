import 'package:flutter/material.dart';
import 'package:site_galleria/Sliders/slider_page.dart';
import 'package:site_galleria/Sliders/videos_slider.dart';
import 'package:site_galleria/description_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    int currentindex = 0;
    List images = [
      'asset/images/askQuestion.png',
      'asset/images/Colleges.png',
      'asset/images/Exams.png',
      'asset/images/Predictors.png',
      'asset/images/CompareCollege.png',
      'asset/images/collegeRanking.png'
    ];
    List title = [
      'Ask a Question',
      'Colleges',
      'Exams',
      'Predictors',
      'Compare college',
      'College ranking'
    ];
    // LinearGradient myLinearGradient = LinearGradient(
    //   colors: [Color(0xff0E678F), Color(0xff629CB6)],
    //   begin: Alignment.topLeft,
    //   end: Alignment.bottomRight,
    //   stops: [0.0, 1.0],
    // );
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(160.0),
          child: AppBar(
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                colors: [Color(0xff0E678F), Color(0xff629CB6)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              )),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 40, left: 24, right: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              size: 33,
                              Icons.menu,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "My Kollege",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            )
                          ],
                        ),
                        Icon(
                          size: 33,
                          Icons.notifications_none_outlined,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Container(
                    width: 312.0, // Set the desired width
                    height: 54.0, // Set the desired height
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white, // Set the background color to white
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors
                                .grey, // Set the color of the leading icon
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: Colors.black), // Set the border color
                          ),
                          hintText: 'Search for Colleges',
                          hintStyle: TextStyle(fontWeight: FontWeight.normal)),
                    ),
                  ),
                ],
              ),
            ),
            //leading: Icon(Icons.menu),
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 25,
              ),
              Text(
                "Hi Salmaan!",
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                  color: Color(
                    0xff08232F,
                  ),
                ),
              ),
              Text(
                "Quick Links",
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                  color: Color(
                    0xff465A63,
                  ),
                ),
              ),
              Container(
                height: 210,
                margin: EdgeInsets.only(right: 20),
                //color: Colors.amber,
                child: GridView.count(
                  crossAxisCount: 3, // Number of columns in the grid
                  children: List.generate(6, (index) {
                    return Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            border:
                                Border.all(width: 1, color: Color(0xffEDF2D7))),
                        margin: EdgeInsets.all(5.0),
                        //color: Colors.amber,
                        height: 79,
                        width: 97,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              images[index],
                              color: Color(0xffA4BE39),
                            ),
                            Text(
                              title[index],
                              style: TextStyle(
                                  fontSize: 10.0,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff465A63)),
                            ),
                          ],
                        ));
                  }),
                ),
              ),
              // Container(
              //   color: Colors.blue,
              // )
              SizedBox(
                height: 10,
              ),
              Container(
                height: 40,
                // color: Colors.amber,
                margin: EdgeInsets.only(right: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        "QnA",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff465A63)),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "View all",
                              style: TextStyle(color: Color(0xff0E678F)),
                            ),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 16,
                              color: Color(0xff0E678F),
                            )
                          ],
                        ),
                        Container(
                          height: 2,
                          width: 68,
                          color: Color(0xff0E678F),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              sliderPage(currentindex: currentindex),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 24,
                width: 204,
                child: Text(
                  "Top Universities / Colleges",
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff465A63),
                      fontWeight: FontWeight.w500),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border:
                              Border.all(width: 1, color: Color(0xffE7E9EB80))),
                      //color: Colors.yellow,
                      height: 271,
                      width: 214,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => DescriptionPage()));
                            },
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10)),
                                  child:
                                      Image.asset("asset/images/IITmadras.png"),
                                ),
                                Positioned(
                                  top: 52,
                                  left: 8,
                                  child: Image.asset(
                                      "asset/images/IITmadrasname.png"),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, right: 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 198,
                                  height: 16,
                                  child: const Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    //mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.location_on_outlined,
                                        color: Color(0xff849197),
                                        size: 12,
                                      ),
                                      Text(
                                        " Adyar Autonamous",
                                        style:
                                            TextStyle(color: Color(0xff849197)),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "#10",
                                        style:
                                            TextStyle(color: Color(0xff00C20C)),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 15.0,
                                ),
                                Text(
                                  "Total Fees Range",
                                  style: TextStyle(
                                      color: Color(0xff849197),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  "₹2.10 Lakhs",
                                  style: TextStyle(
                                      color: Color(0xff334155),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "View all courses and fees",
                                      style:
                                          TextStyle(color: Color(0xff465A63)),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      size: 20,
                                      color: Color(0xff465A63),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                                  width: 198,
                                  height: 54,
                                  decoration:
                                      BoxDecoration(color: Color(0xffEAF2F5)),
                                  child: Center(
                                    child: Row(
                                      children: [
                                        Text(
                                          "Download brochure",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14,
                                              color: Color(0xff0E678F)),
                                        ),
                                        SizedBox(
                                          width: 5.0,
                                        ),
                                        Icon(
                                          Icons.file_download_outlined,
                                          color: Color(0xff0E678F),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border:
                              Border.all(width: 1, color: Color(0xffE7E9EB80))),
                      height: 271,
                      width: 214,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10)),
                                child: Image.asset("asset/images/Anna.png"),
                              ),
                              Positioned(
                                top: 52,
                                left: 8,
                                child: Image.asset("asset/images/Annaname.png"),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, right: 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 198,
                                  height: 16,
                                  child: const Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    //mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.location_on_outlined,
                                        color: Color(0xff849197),
                                        size: 12,
                                      ),
                                      Text(
                                        " Adyar Autonamous",
                                        style:
                                            TextStyle(color: Color(0xff849197)),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "#10",
                                        style:
                                            TextStyle(color: Color(0xff00C20C)),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 15.0,
                                ),
                                Text(
                                  "Total Fees Range",
                                  style: TextStyle(
                                      color: Color(0xff849197),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  "₹2.10 Lakhs",
                                  style: TextStyle(
                                      color: Color(0xff334155),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "View all courses and fees",
                                      style:
                                          TextStyle(color: Color(0xff465A63)),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      size: 20,
                                      color: Color(0xff465A63),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                                  width: 198,
                                  height: 54,
                                  decoration:
                                      BoxDecoration(color: Color(0xffEAF2F5)),
                                  child: Center(
                                    child: Row(
                                      children: [
                                        Text(
                                          "Download brochure",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14,
                                              color: Color(0xff0E678F)),
                                        ),
                                        SizedBox(
                                          width: 5.0,
                                        ),
                                        Icon(
                                          Icons.file_download_outlined,
                                          color: Color(0xff0E678F),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              ///--------------------
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border:
                              Border.all(width: 1, color: Color(0xffE7E9EB80))),
                      height: 271,
                      width: 214,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10)),
                                child: Image.asset("asset/images/Anna.png"),
                              ),
                              Positioned(
                                top: 52,
                                left: 8,
                                child: Image.asset("asset/images/Annaname.png"),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, right: 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 198,
                                  height: 16,
                                  child: const Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    //mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.location_on_outlined,
                                        color: Color(0xff849197),
                                        size: 12,
                                      ),
                                      Text(
                                        " Adyar Autonamous",
                                        style:
                                            TextStyle(color: Color(0xff849197)),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "#10",
                                        style:
                                            TextStyle(color: Color(0xff00C20C)),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 15.0,
                                ),
                                Text(
                                  "Total Fees Range",
                                  style: TextStyle(
                                      color: Color(0xff849197),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  "₹2.10 Lakhs",
                                  style: TextStyle(
                                      color: Color(0xff334155),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "View all courses and fees",
                                      style:
                                          TextStyle(color: Color(0xff465A63)),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      size: 20,
                                      color: Color(0xff465A63),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                                  width: 198,
                                  height: 54,
                                  decoration:
                                      BoxDecoration(color: Color(0xffEAF2F5)),
                                  child: Center(
                                    child: Row(
                                      children: [
                                        Text(
                                          "Download brochure",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14,
                                              color: Color(0xff0E678F)),
                                        ),
                                        SizedBox(
                                          width: 5.0,
                                        ),
                                        Icon(
                                          Icons.file_download_outlined,
                                          color: Color(0xff0E678F),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border:
                              Border.all(width: 1, color: Color(0xffE7E9EB80))),
                      //color: Colors.yellow,
                      height: 271,
                      width: 214,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10)),
                                child:
                                    Image.asset("asset/images/IITmadras.png"),
                              ),
                              Positioned(
                                top: 52,
                                left: 8,
                                child: Image.asset(
                                    "asset/images/IITmadrasname.png"),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, right: 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 198,
                                  height: 16,
                                  child: const Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    //mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.location_on_outlined,
                                        color: Color(0xff849197),
                                        size: 12,
                                      ),
                                      Text(
                                        " Adyar Autonamous",
                                        style:
                                            TextStyle(color: Color(0xff849197)),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "#10",
                                        style:
                                            TextStyle(color: Color(0xff00C20C)),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 15.0,
                                ),
                                Text(
                                  "Total Fees Range",
                                  style: TextStyle(
                                      color: Color(0xff849197),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  "₹2.10 Lakhs",
                                  style: TextStyle(
                                      color: Color(0xff334155),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "View all courses and fees",
                                      style:
                                          TextStyle(color: Color(0xff465A63)),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      size: 20,
                                      color: Color(0xff465A63),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                                  width: 198,
                                  height: 54,
                                  decoration:
                                      BoxDecoration(color: Color(0xffEAF2F5)),
                                  child: Center(
                                    child: Row(
                                      children: [
                                        Text(
                                          "Download brochure",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14,
                                              color: Color(0xff0E678F)),
                                        ),
                                        SizedBox(
                                          width: 5.0,
                                        ),
                                        Icon(
                                          Icons.file_download_outlined,
                                          color: Color(0xff0E678F),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 40,
                // color: Colors.amber,
                margin: EdgeInsets.only(right: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        "Videos",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff465A63)),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "View all",
                              style: TextStyle(color: Color(0xff0E678F)),
                            ),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 16,
                              color: Color(0xff0E678F),
                            )
                          ],
                        ),
                        Container(
                          height: 2,
                          width: 68,
                          color: Color(0xff0E678F),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              VideoSlider(currentindex: 0),
              SizedBox(
                height: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}
