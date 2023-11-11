import 'package:flutter/material.dart';

class DescriptionPage extends StatefulWidget {
  const DescriptionPage({super.key});

  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xff0E678F)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 130,
                  child: Image.asset("asset/images/IITmadrasbig.png"),
                ),
                Container(
                  //color: Colors.amber,
                  margin: EdgeInsets.only(left: 24, top: 100),
                  height: 217,
                  width: 312,
                  child: Column(
                    children: [
                      Container(
                        //  color: Colors.red,
                        height: 68,
                        width: 312,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset("asset/images/IITmadrasframe.png"),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 110),
                                  height: 20,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade900,
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Row(
                                    children: [
                                      Text(
                                        "12",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      Icon(
                                        Icons.camera_alt_outlined,
                                        color: Colors.white,
                                        size: 10,
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      //color: Color(0xffFFB800),
                                    ),
                                    Text(
                                      "4.3 /5",
                                      style:
                                          TextStyle(color: Color(0xff849197)),
                                    ),
                                    Text(
                                      "(812 Reviews)",
                                      style:
                                          TextStyle(color: Color(0xff0E678F)),
                                    )
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 48,
                        width: 312,
                        //color: Colors.orange,
                        child: Text(
                          "IIT Madras - Indian Institute Of Technology Madras: Admission 2023, Rankings, Courses, Fees",
                          style: TextStyle(
                            color: Color(0xff08232F),
                            fontWeight: FontWeight.w500,
                            overflow: TextOverflow.ellipsis,
                          ),
                          maxLines: 2,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 115),
                        // color: Colors.pink,
                        width: 198,
                        height: 20,
                        child: const Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: Color(0xff849197),
                              size: 12,
                            ),
                            Text(
                              " Adyar Autonamous",
                              style: TextStyle(color: Color(0xff849197)),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "#10",
                              style: TextStyle(color: Color(0xff00C20C)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 151,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Color(0xffE7E9EB),
                            ),
                            child: Center(
                              child: Text(
                                "Will you get in?",
                                style: TextStyle(color: Color(0xff465A63)),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 151,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Color(0xffA4BE39),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Brochure",
                                  style: TextStyle(color: Colors.white),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  Icons.download,
                                  size: 12,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            Divider(
              // Horizontal Divider
              height: 20, // Height of the divider
              thickness: 1, // Thickness of the divider line
              color: Color(0xffE7E9EB), // Color of the divider line
            ),
            Container(
              // color: Colors.pink,
              //padding: EdgeInsets.only(left: 20),
              height: 374,
              width: 312,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Highlights",
                    style: TextStyle(color: Color(0xff08232F)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xffEAF2F5),
                        borderRadius: BorderRadius.circular(10.0),
                        border:
                            Border.all(color: Color(0xffE7E9EB), width: 1.0)),
                    height: 324,
                    width: 312,
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 8),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      width: 1, color: Color(0xffE7E9EB)))),
                          height: 40,
                          width: 288,
                          child: Row(
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 132,
                                height: 40,
                                child: Text(
                                  "Established",
                                  style: TextStyle(color: Color(0xff849197)),
                                ),
                              ),
                              Container(
                                  width: 156,
                                  height: 40,
                                  //color: Colors.red,
                                  child: Text(
                                    "1958",
                                  )),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 8),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      width: 1, color: Color(0xffE7E9EB)))),
                          height: 40,
                          width: 288,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 132,
                                height: 40,
                                child: Text(
                                  "Ownership",
                                  style: TextStyle(color: Color(0xff849197)),
                                ),
                              ),
                              Container(
                                  width: 156,
                                  height: 40,
                                  //  color: Colors.red,
                                  child: Text("Public / Government")),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 8),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      width: 1, color: Color(0xffE7E9EB)))),
                          height: 40,
                          width: 288,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 132,
                                height: 40,
                                child: Text(
                                  "Institute Type",
                                  style: TextStyle(color: Color(0xff849197)),
                                ),
                              ),
                              Container(
                                  width: 156,
                                  height: 40,
                                  //  color: Colors.red,
                                  child: Text("Institute of Eminence")),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 8),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      width: 1, color: Color(0xffE7E9EB)))),
                          height: 40,
                          width: 288,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 132,
                                height: 40,
                                child: Text(
                                  "Campus Size",
                                  style: TextStyle(color: Color(0xff849197)),
                                ),
                              ),
                              Container(
                                  width: 156,
                                  height: 40,
                                  // color: Colors.red,
                                  child: Text("550.0 acres")),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 8),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      width: 1, color: Color(0xffE7E9EB)))),
                          height: 40,
                          width: 288,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 132,
                                height: 40,
                                child: Text(
                                  "Student Count",
                                  style: TextStyle(color: Color(0xff849197)),
                                ),
                              ),
                              Container(
                                  width: 156,
                                  height: 40,
                                  // color: Colors.red,
                                  child: Text("12004")),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 8),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      width: 1, color: Color(0xffE7E9EB)))),
                          height: 40,
                          width: 288,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            // crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                width: 132,
                                height: 40,
                                child: Text(
                                  "Faculty Count",
                                  style: TextStyle(color: Color(0xff849197)),
                                ),
                              ),
                              Container(
                                  width: 156,
                                  height: 40,
                                  //color: Colors.red,
                                  child: Text("673")),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 8),
                          height: 40,
                          width: 288,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 132,
                                height: 40,
                                child: Text(
                                  "Gender",
                                  style: TextStyle(color: Color(0xff849197)),
                                ),
                              ),
                              Container(
                                  width: 156,
                                  height: 40,
                                  //color: Colors.red,
                                  child: Text("Co-ed")),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 300,
              width: 312,
              // color: Colors.green,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Courses Offered",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "View All",
                        style: TextStyle(
                            color: Color(0xff0E678F),
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    height: 136,
                    width: 312,
                    decoration: BoxDecoration(
                        //  color: Colors.lightGreenAccent,
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(color: Color(0xffEAF2F5), width: 1)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Engineering and Architecture",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff465A63)),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 36,
                              width: 94,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100.0),
                                  border: Border.all(
                                      color: Color(0xff849197), width: 1)),
                              child: Center(
                                  child: Text(
                                "M.E / M.Tech",
                                style: TextStyle(color: Color(0xff849197)),
                              )),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Container(
                              height: 36,
                              width: 94,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100.0),
                                  border: Border.all(
                                      color: Color(0xff849197), width: 1)),
                              child: Center(
                                  child: Text(
                                "B.E / B.Tech",
                                style: TextStyle(color: Color(0xff849197)),
                              )),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Container(
                              height: 36,
                              width: 42,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100.0),
                                  border: Border.all(
                                      color: Color(0xff849197), width: 1)),
                              child: Center(
                                  child: Text(
                                "M.S",
                                style: TextStyle(color: Color(0xff849197)),
                              )),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          height: 36,
                          width: 86,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100.0),
                              border: Border.all(
                                  color: Color(0xff849197), width: 1)),
                          child: Center(
                              child: Text(
                            "+2 Degrees",
                            style: TextStyle(color: Color(0xff849197)),
                          )),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    height: 92,
                    width: 312,
                    decoration: BoxDecoration(
                        // color: Colors.pink,
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(color: Color(0xffEAF2F5), width: 1)),
                    //color: Colors.lightGreenAccent,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Management and business Administration",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff465A63)),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 36,
                              width: 58,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100.0),
                                  border: Border.all(
                                      color: Color(0xff849197), width: 1)),
                              child: Center(
                                  child: Text(
                                "M.Phil.",
                                style: TextStyle(color: Color(0xff849197)),
                              )),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Container(
                              height: 36,
                              width: 42,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100.0),
                                  border: Border.all(
                                      color: Color(0xff849197), width: 1)),
                              child: Center(
                                  child: Text(
                                "M.S",
                                style: TextStyle(color: Color(0xff849197)),
                              )),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Container(
                              height: 36,
                              width: 47,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100.0),
                                  border: Border.all(
                                      color: Color(0xff849197), width: 1)),
                              child: Center(
                                  child: Text(
                                "MBA",
                                style: TextStyle(color: Color(0xff849197)),
                              )),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 312,
              height: 470,
              //color: Colors.lightGreenAccent,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Popular Courses",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Color(0xffEAF2F5))),
                    height: 138,
                    padding: EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "B.Tech Mechanical Engineering",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Color(0xff465A63)),
                            ),
                            Icon(
                              Icons.star_border,
                              color: Color(0xffFFB800),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Duration:",
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xff849197)),
                                  ),
                                  TextSpan(
                                    text: "4 years",
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xff465A63)),
                                  ),
                                ],
                              ),
                            ),
                            CircleAvatar(
                              maxRadius: 4,
                              //minRadius: 6,
                              backgroundColor: Color(0xffD9D9D9),
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Fees:",
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xff849197)),
                                  ),
                                  TextSpan(
                                    text: "8.31 Lakhs",
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xff465A63)),
                                  ),
                                ],
                              ),
                            ),
                            CircleAvatar(
                              maxRadius: 4,
                              //minRadius: 6,
                              backgroundColor: Color(0xffD9D9D9),
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Seats:",
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xff849197)),
                                  ),
                                  TextSpan(
                                    text: "169",
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xff465A63)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Color(0xffA4BE39)),
                                    borderRadius: BorderRadius.circular(10)),
                                height: 46,
                                width: 137,
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Brochure",
                                        style:
                                            TextStyle(color: Color(0xffA4BE39)),
                                      ),
                                      Icon(
                                        Icons.download,
                                        color: Color(0xffA4BE39),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Color(0xffEAF2F5),
                                    borderRadius: BorderRadius.circular(10)),
                                height: 46,
                                width: 137,
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Compare",
                                        style:
                                            TextStyle(color: Color(0xff629CB6)),
                                      ),
                                      Icon(
                                        Icons.square_outlined,
                                        color: Color(0xff629CB6),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Color(0xffEAF2F5))),
                    height: 138,
                    padding: EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "B.Tech Mechanical Engineering",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Color(0xff465A63)),
                            ),
                            Icon(
                              Icons.star_border,
                              color: Color(0xffFFB800),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Duration:",
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xff849197)),
                                  ),
                                  TextSpan(
                                    text: "4 years",
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xff465A63)),
                                  ),
                                ],
                              ),
                            ),
                            CircleAvatar(
                              maxRadius: 4,
                              //minRadius: 6,
                              backgroundColor: Color(0xffD9D9D9),
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Fees:",
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xff849197)),
                                  ),
                                  TextSpan(
                                    text: "8.31 Lakhs",
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xff465A63)),
                                  ),
                                ],
                              ),
                            ),
                            CircleAvatar(
                              maxRadius: 4,
                              //minRadius: 6,
                              backgroundColor: Color(0xffD9D9D9),
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Seats:",
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xff849197)),
                                  ),
                                  TextSpan(
                                    text: "169",
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xff465A63)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Color(0xffA4BE39)),
                                    borderRadius: BorderRadius.circular(10)),
                                height: 46,
                                width: 137,
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Brochure",
                                        style:
                                            TextStyle(color: Color(0xffA4BE39)),
                                      ),
                                      Icon(
                                        Icons.download,
                                        color: Color(0xffA4BE39),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Color(0xffEAF2F5),
                                    borderRadius: BorderRadius.circular(10)),
                                height: 46,
                                width: 137,
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Compare",
                                        style:
                                            TextStyle(color: Color(0xff629CB6)),
                                      ),
                                      Icon(
                                        Icons.square_outlined,
                                        color: Color(0xff629CB6),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Color(0xffEAF2F5))),
                    height: 138,
                    padding: EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "B.Tech Mechanical Engineering",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Color(0xff465A63)),
                            ),
                            Icon(
                              Icons.star_border,
                              color: Color(0xffFFB800),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Duration:",
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xff849197)),
                                  ),
                                  TextSpan(
                                    text: "4 years",
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xff465A63)),
                                  ),
                                ],
                              ),
                            ),
                            CircleAvatar(
                              maxRadius: 4,
                              //minRadius: 6,
                              backgroundColor: Color(0xffD9D9D9),
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Fees:",
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xff849197)),
                                  ),
                                  TextSpan(
                                    text: "8.31 Lakhs",
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xff465A63)),
                                  ),
                                ],
                              ),
                            ),
                            CircleAvatar(
                              maxRadius: 4,
                              //minRadius: 6,
                              backgroundColor: Color(0xffD9D9D9),
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Seats:",
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xff849197)),
                                  ),
                                  TextSpan(
                                    text: "169",
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xff465A63)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Color(0xffA4BE39)),
                                    borderRadius: BorderRadius.circular(10)),
                                height: 46,
                                width: 137,
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Brochure",
                                        style:
                                            TextStyle(color: Color(0xffA4BE39)),
                                      ),
                                      Icon(
                                        Icons.download,
                                        color: Color(0xffA4BE39),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Color(0xffEAF2F5),
                                    borderRadius: BorderRadius.circular(10)),
                                height: 46,
                                width: 137,
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Compare",
                                        style:
                                            TextStyle(color: Color(0xff629CB6)),
                                      ),
                                      Icon(
                                        Icons.square_outlined,
                                        color: Color(0xff629CB6),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                padding: EdgeInsets.only(left: 24),
                height: 144,
                //color: Colors.orange,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Facilities",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                              maxRadius: 30,
                              backgroundColor: Color(0xffD9D9D9),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Boys Hostel",
                              style: TextStyle(
                                  color: Color(0xff849197),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 24,
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              maxRadius: 30,
                              backgroundColor: Color(0xffD9D9D9),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Girls Hostel",
                              style: TextStyle(
                                  color: Color(0xff849197),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 24,
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              maxRadius: 30,
                              backgroundColor: Color(0xffD9D9D9),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Medical / Hospital",
                              style: TextStyle(
                                  color: Color(0xff849197),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 24,
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              maxRadius: 30,
                              backgroundColor: Color(0xffD9D9D9),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Gym",
                              style: TextStyle(
                                  color: Color(0xff849197),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.only(left: 24),
              height: 120,
              width: MediaQuery.of(context).size.width,
              //color: Colors.amber,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Exams Accepted",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 8.0),
                          height: 80,
                          width: 268,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xffCED3D5)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              CircleAvatar(
                                maxRadius: 30,
                                backgroundColor: Color(0xffD9D9D9),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "GATE Entrance 2024",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Text(
                                    "No exam Date",
                                    style: TextStyle(
                                        color: Color(0xff849197),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 8.0),
                          height: 80,
                          width: 268,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xffCED3D5)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              CircleAvatar(
                                maxRadius: 30,
                                backgroundColor: Color(0xffD9D9D9),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "GATE Entrance 2024",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Text(
                                    "No exam Date",
                                    style: TextStyle(
                                        color: Color(0xff849197),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
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
              height: 221,
              width: 312,
              //color: Colors.blue,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Address and contact Details",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Stack(
                    children: [
                      ClipRRect(
                        child: Image.asset("asset/images/Map.png"),
                      ),
                      Positioned(
                          top: 60,
                          left: 90,
                          child: Image.asset("asset/images/ViewMap.png"))
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
