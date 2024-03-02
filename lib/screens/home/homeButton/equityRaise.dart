import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_funding/main.dart';
import 'package:cloud_funding/provider/home/getEquity.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EquityRaiseScreen extends StatelessWidget {
  const EquityRaiseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final equityState = Provider.of<EquityState>(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: AppBar(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          navigatorKey.currentState!.pushReplacementNamed('/addEquity');
        },
        child: Icon(Icons.add),
      ),
      body: SingleChildScrollView(
        child: equityState.isLoading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text('Recommended Equity'),
                  SizedBox(
                    height: 20,
                  ),
                  CarouselSlider.builder(
                    options: CarouselOptions(
                      aspectRatio: 16 / 9,
                      viewportFraction: 0.45,
                      enableInfiniteScroll: false,
                    ),
                    itemCount: equityState.fundModel?.data?.length ?? 0,
                    itemBuilder: (context, index, realIndex) {
                      final homeIndex = equityState.fundModel!.data![index];
                      return GestureDetector(
                        onTap: () {
                          navigatorKey.currentState!
                              .pushNamed('/detailPage', arguments: {
                            'title': homeIndex.title,
                            'name': homeIndex.name,
                            'companyDescription': homeIndex.companyDescription,
                            'description': homeIndex.description,
                            'endDate': homeIndex.endDate,
                            'equityAmount': homeIndex.equityAmount,
                            'equityPercent': homeIndex.equityPercentage,
                            'establish': homeIndex.establishment,
                            'panNumber': homeIndex.panNumber,
                            'valuation': homeIndex.valuation,
                            'verified': homeIndex.verified,
                            'document': homeIndex.document,
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                          ),
                          width: 150,
                          height: 150,
                          child: Column(
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                child: Image.network(
                                    'https://media.istockphoto.com/id/178447404/photo/modern-business-buildings.jpg?s=612x612&w=0&k=20&c=MOG9lvRz7WjsVyW3IiQ0srEzpaBPDcc7qxYsBCvAUJs='),
                              ),
                              Text(equityState.fundModel!.data![index].name!),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('My Pending Funds'),
                  SizedBox(
                    height: 20,
                  ),
                  CarouselSlider.builder(
                    options: CarouselOptions(
                      aspectRatio: 16 / 9,
                      viewportFraction: 0.45,
                      enableInfiniteScroll: false,
                    ),
                    itemCount: equityState.myFund?.data?.myEquity?.length ?? 0,
                    itemBuilder: (context, index, realIndex) {
                      final homeIndex =
                          equityState.myFund!.data!.myEquity![index];
                      return GestureDetector(
                        onTap: () {
                          navigatorKey.currentState!
                              .pushNamed('/detailPage', arguments: {
                            'title': homeIndex.title,
                            'name': homeIndex.name,
                            'companyDescription': homeIndex.companyDescription,
                            'description': homeIndex.description,
                            'endDate': homeIndex.endDate,
                            'equityAmount': homeIndex.equityAmount,
                            'equityPercent': homeIndex.equityPercentage,
                            'establish': homeIndex.establishment,
                            'panNumber': homeIndex.panNumber,
                            'valuation': homeIndex.valuation,
                            'verified': homeIndex.verified,
                            'document': homeIndex.document,
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                          ),
                          width: 150,
                          height: 150,
                          child: Column(
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                child: Image.network(
                                    'https://media.istockphoto.com/id/178447404/photo/modern-business-buildings.jpg?s=612x612&w=0&k=20&c=MOG9lvRz7WjsVyW3IiQ0srEzpaBPDcc7qxYsBCvAUJs='),
                              ),
                              Text(homeIndex.name!),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
      ),
    );
  }
}
