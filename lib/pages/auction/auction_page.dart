import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moharrek/widget/auction_widget.dart';

class AuctionPage extends StatefulWidget {
  const AuctionPage({super.key});

  @override
  State<AuctionPage> createState() => _AuctionPageState();
}

class _AuctionPageState extends State<AuctionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            // title: Text('المزاد'),
            ),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 30),
          children: [
            CustomAuctionCarCard(
                model: "كامري",
                make: "تويوتا",
                year: 2023,
                image: "images/car_card/blue_car.jpg",
                higherBid: 3250000,
                endDate: "07 شوال"),
            SizedBox(
              height: 20,
            ),
            CustomAuctionCarCard(
                model: "كامري",
                make: "تويوتا",
                year: 2023,
                image: "images/car_2.jpg",
                higherBid: 3250000,
                endDate: "07 شوال"),
            SizedBox(
              height: 20,
            ),
            CustomAuctionCarCard(
                model: "كامري",
                make: "تويوتا",
                year: 2023,
                image: "images/car_card/blue_car.jpg",
                higherBid: 3250000,
                endDate: "07 شوال"),
            SizedBox(
              height: 20,
            ),
          ],
        ));
  }
}
