import 'package:flutter/material.dart';

class sliderPage extends StatefulWidget {
  int currentindex;
  sliderPage({required this.currentindex, super.key});

  @override
  State<sliderPage> createState() => _sliderPageState();
}

class _sliderPageState extends State<sliderPage> {
  @override
  Widget build(BuildContext context) {
    List<String> text = [
      'Which IITs do not conduct interviews for MTech admission in Civil Engineering Specializations?',
      'Which IITs do not conduct interviews for MTech admission in Civil Engineering Specializations?',
      'Which IITs do not conduct interviews for MTech admission in Civil Engineering Specializations?'
    ];
    int currentIndex = 2;
    final PageController controller = PageController(viewportFraction: 0.92);
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: 10),
          //  margin: EdgeInsets.only(right: 20),
          //color: Colors.black,
          child: SizedBox(
            height: 105,
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
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color(0xff629CB6),
                              borderRadius: BorderRadius.circular(10.0)),
                          height: 75,
                          width: 5,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        //  color: Colors.blue,
                        height: 75,
                        width: 260,
                        child: Text(
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                          text[index],
                          maxLines: 3,
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
