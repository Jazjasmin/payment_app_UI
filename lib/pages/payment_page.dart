import 'package:flutter/material.dart';
import 'package:payment_app/components/colors.dart';
import 'package:payment_app/widgets/buttons.dart';
import 'package:payment_app/widgets/large_button.dart';
import 'package:get/get.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 80, left: 20, right: 20),
        height: h,
        width: w,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("images/patmentbackground.png"))),
        child: Column(
          children: [
            Container(
              width: double.maxFinite,
              height: h * 0.14,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("images/success.png"))),
            ),
            Text(
              "Success",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: AppColor.mainColor),
            ),
            Text(
              "Payment is completed for 2 bills",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: AppColor.idColor),
            ),
            SizedBox(
              height: h * 0.045,
            ),
            Container(
              height: 160,
              width: 350,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      width: 2, color: Colors.grey.withOpacity(0.5))),
              child: MediaQuery.removePadding(
                removeTop: true,
                context: context,
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(
                                    top: 15, left: 20, bottom: 10),
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: Colors.green),
                                child: const Icon(
                                  Icons.done,
                                  size: 30,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "KenGen Power",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: AppColor.mainColor),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "ID:4786958",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: AppColor.idColor),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                children: [
                                  Text(
                                    "",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: AppColor.mainColor),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "\$1245.00",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: AppColor.mainColor),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Divider(
                              thickness: 2,
                              color: Colors.grey.withOpacity(0.5)),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: h * 0.5,
            ),
            Column(
              children: [
                Text(
                  "Total Amount",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: AppColor.idColor),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "\$2840.00",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: AppColor.idColor),
                ),
              ],
            ),
            SizedBox(height: h*0.13,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              AppButtons(
                icon: Icons.share_sharp,
                onTap: (){},
                text: "Sahre",
              ),
              SizedBox(width: h*0.06,),
               AppButtons(
                icon: Icons.print_outlined,
                onTap: (){},
                text: "Print",
              )
            ],),
         SizedBox(height: h*0.02,),
         AppLargeButton(
          text: "Done",
          onTap: () {  
            Get.back();         
          },
          backGroundColor: Colors.white,
          textColor: AppColor.mainColor,
         )
          ],
        ),
      ),
    );
  }
}
