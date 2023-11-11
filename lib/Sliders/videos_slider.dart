import 'package:flutter/material.dart';

class VideoSlider extends StatefulWidget {
  int currentindex;
  VideoSlider({required this.currentindex, super.key});

  @override
  State<VideoSlider> createState() => _VideoSliderState();
}

class _VideoSliderState extends State<VideoSlider> {
  @override
  Widget build(BuildContext context) {
    List<String> text = [
      'Top 5 Tips for Excelling in Your Freshman Year: A Students Guide',
      'Top 5 Tips for Excelling in Your Freshman Year: A Students Guide',
      'Top 5 Tips for Excelling in Your Freshman Year: A Students Guide',
    ];
    int currentIndex = 2;
    final PageController controller = PageController(viewportFraction: 0.92);
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: 10),
          //  margin: EdgeInsets.only(right: 20),
          // color: Colors.amber,
          child: SizedBox(
            height: 225,
            width: double.infinity,
            child: PageView.builder(
              padEnds: false,
              itemCount: 3,
              // pageSnapping: false,
              scrollDirection: Axis.horizontal,
              controller: controller,
              onPageChanged: (index) {
                setState(() {
                  widget.currentindex = index;
                  print(currentIndex);
                });
              },
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      //color: Colors.amber,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1, color: Color(0xffE7E9EB))),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        children: [
                          Container(
                              //  color: Colors.blue,
                              height: 166,
                              width: 296,
                              child:
                                  Image.asset("asset/images/Videoslider.png")),
                          Positioned(
                              left: 130,
                              top: 70,
                              child:
                                  Image.asset("asset/images/Pausedvideo.png"))
                        ],
                      ),
                      // SizedBox(
                      //   height: 10,
                      // ),
                      Container(
                        //  color: Colors.blue
                        child: Text(
                          style: TextStyle(
                              color: Color(0xff08232F),
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                          text[index],
                          // maxLines: 3,
                          //overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: text.asMap().entries.map((entry) {
            int index = entry.key;
            return buildIndicator(widget.currentindex == index);
          }).toList(),
        ),
      ],
    );
  }

  Widget buildIndicator(bool isSelected) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1),
      child: Container(
        height: isSelected ? 10 : 5,
        width: isSelected ? 10 : 5,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelected ? Color(0xff465A63) : Color(0xffCED3D5),
        ),
      ),
    );
  }
}
