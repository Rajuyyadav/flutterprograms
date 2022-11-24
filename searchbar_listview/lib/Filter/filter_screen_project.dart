import 'package:flutter/material.dart';
import 'package:searchbar_listview/plandurationclass.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool istrueapply = false;
  PlanDurationClass? planDurationClass;
  List<String> planDurationyears = ["1 years", "2 Years", "3 years"];
  List<String> Filters_Sortby = [
    "Price: Low to high",
    "Price: High to Low",
    "Popular: Most Purchased"
  ];
  String isselected = "";
// enum lst={
//   ads,vhgnfvg
//   };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: TextButton(
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                backgroundColor: Colors.transparent,

                // shape: const RoundedRectangleBorder(
                //     borderRadius:
                //         BorderRadius.vertical(top: Radius.circular(20))),

                context: context,
                builder: (context) {
                  return Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20)),
                      ),
                      height: MediaQuery.of(context).size.height * 0.72,
                      child: bottomsheet());
                });
          },
          child: const Text("data"),
        ),
      ),
    );
  }

  Widget bottomsheet() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
                height: 6,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                )),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Filters",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Plan Duration",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
          ),
          const SizedBox(
            height: 15,
          ),

          const Plandurationclickable(), //                        rowcontainer new method for row1
          //

          const SizedBox(
            height: 20,
          ),
          const Text(
            "Plan Type",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
          ),
          const SizedBox(
            height: 15,
          ),

          PlanTypeClickable(), //                                                  2nd row

          const SizedBox(
            height: 15,
          ),
          const Text(
            "Sort By",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
          ),
          const SizedBox(
            height: 15,
          ),
          SortbyClickable(), //                                                               3rd row container

          const SizedBox(
            height: 15,
          ),
          Center(
            child: InkWell(
              onTap: () {
                setState(() {
                  istrueapply = !istrueapply;
                });
              },

                child: Container(
                  decoration: BoxDecoration(
                      color: istrueapply ? Colors.blue :  Color(0xff8800EC),
                      borderRadius: const BorderRadius.all(Radius.circular(5))),


                  width: MediaQuery.of(context).size.width *
                      1.0, //or   double.infinity,
                  child: const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Center(
                        child: Text(
                          "APPLY",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                      )),

              ),
            ),
          ),
        ],
      ),
    );
  }
}
// Covers damage of other vehicle

class Plandurationclickable extends StatefulWidget {
  const Plandurationclickable({Key? key}) : super(key: key);

  @override
  State<Plandurationclickable> createState() => _PlandurationclickableState();
}

class _PlandurationclickableState extends State<Plandurationclickable> {
  List<String> planDurationyears = ["1 years", "2 Years", "3 years"];
  String isselected = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: planDurationyears
            .map((e) => Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        isselected = e;
                      });
                    },
                    child: Container(
                      height: 40,
                      width: 80,
                      decoration: BoxDecoration(
                          color: isselected == e ? Colors.teal : Colors.white,
                          border: Border.all(color: Colors.black, width: 1),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5))),
                      child: Center(child: Text(e,style: TextStyle(color: isselected == e ? Colors.white : Colors.black,),)),
                    ),
                  ),
                ))
            .toList(),
      ),
    );
  }
}


class PlanTypeClickable extends StatefulWidget {
  const PlanTypeClickable({Key? key}) : super(key: key);

  @override
  State<PlanTypeClickable> createState() => _PlanTypeClickableState();
}

class _PlanTypeClickableState extends State<PlanTypeClickable> {
  // List title=["Comprehensive","Third Party"];
  // List subtitle=["Covers damage for own & other vehicle","Covers damage of other vehicle"];

  bool isplantypeselected1 = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: () {
              setState(() {
                isplantypeselected1 = !isplantypeselected1;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                  color: isplantypeselected1
                  ?const Color(0xFFF3F0F5): Colors.blue.shade50,
                  border: Border.all(
                    width: 1,
                    color: isplantypeselected1
                        ? const Color(0xFFF3F0F5)
                          :Colors.blue,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Comprehensive",
                        style: TextStyle(
                            // color: Colors.red,
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            height: 2),
                      ),
                      Text(
                        "Covers damage for own & other vehicle",
                        style: TextStyle(
                            color: Colors.grey.shade600,
                            // color: Color(0xff444347),
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            height: 1.6),
                      )
                    ]),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: InkWell(
            onTap: () {
              setState(() {
                isplantypeselected1 = !isplantypeselected1;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                  color: isplantypeselected1
                      ? Colors.blue.shade50
                      : const Color(0xFFF3F0F5),
                  border: Border.all(
                    width: 1,
                    color: isplantypeselected1
                        ? Colors.blue
                        : const Color(0xFFF3F0F5),
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Third Party",
                          style: TextStyle(
                              // color: Colors.red,
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              height:
                                  2) //            lineheight :20 then20/10=2

                          ),
                      Text(
                        "Covers damage of other vehicle",
                        style: TextStyle(
                            color: Colors.grey.shade600,
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            height: 1.6),
                      )
                    ]),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}


class SortbyClickable extends StatefulWidget {
  const SortbyClickable({Key? key}) : super(key: key);

  @override
  State<SortbyClickable> createState() => _SortbyClickableState();
}

class _SortbyClickableState extends State<SortbyClickable> {
  List<String> Filters_Sortby = [
    "Price: Low to high",
    "Price: High to Low",
    "Popular: Most Purchased"
  ];
  String issortbyselected = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        runSpacing: 10,
        spacing: 10,
        direction: Axis.horizontal,
        children: Filters_Sortby.map(
          (e) => InkWell(
            onTap: () {
              setState(() {
                issortbyselected = e;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                  color: issortbyselected == e ? Colors.teal : Colors.white,
                  border: Border.all(
                    width: 1,
                    color: issortbyselected == e ? Colors.teal: Colors.black,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(5))),

              // color: const Color(0xff006A6A),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 10, bottom: 10, left: 20, right: 20),
                child: Text(
                  e,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    // height: 2
                  ),
                ),
              ),
            ),
          ),
        ).toList(),
      ),
    );
  }
}
