import 'package:flutter/material.dart';
import 'package:site_galleria/homepage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
      child: Column(
        children: [
          SizedBox(
            height: 0.088 * h,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome!",
                  style: TextStyle(
                      fontSize: 0.09 * w,
                      color: Color(0xff0E678F),
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Signin to access personalized academic resources.",
                  style: TextStyle(
                      fontSize: 0.04 * w,
                      color: Color(0xff849197),
                      fontWeight: FontWeight.normal),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Mobile Number",
                  style: TextStyle(
                      fontSize: w * 0.04,
                      color: Color(0xff465A63),
                      fontWeight: FontWeight.normal),
                ),
                SizedBox(
                  height: 12.0,
                ),
                TextFormField(
                  controller: controller,
                  decoration: InputDecoration(
                      // disabledBorder: InputBorder.none,
                      hintText: "00000 00000",
                      prefix: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text("+91 "),
                          Icon(Icons
                              .arrow_drop_down), // Add your desired dropdown icon
                        ],
                      ),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffD5E5EC)),
                          borderRadius: BorderRadius.circular(10))),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                      (route) => false, // Remove all routes
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xff0E678F),
                        borderRadius: BorderRadius.circular(10.0)),
                    height: h * 0.09,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Get Otp",
                          style: TextStyle(
                              color: Color(0xffEAF2F5),
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 12,
                          color: Color(0xffEAF2F5),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                Center(child: Text("or")),
                SizedBox(
                  height: 14,
                ),
                Center(child: Text("Login in with")),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: w * 0.11,
                        width: w * 0.11,
                        child: Image.asset('asset/images/google.png')),
                    SizedBox(
                      width: 14,
                    ),
                    Container(
                        height: w * 0.11,
                        width: w * 0.11,
                        child: Image.asset('asset/images/facebook.png'))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
