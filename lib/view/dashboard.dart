import 'package:currency_lookup/provider/dashboard_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  TextEditingController inputController = TextEditingController();

  @override
  void initState() {
    super.initState();

    var provider = Provider.of<DashboardProvider>(context, listen: false);
    provider.dashboardData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Currency Lookup"),
        backgroundColor: Colors.indigoAccent,
      ),
      body: SafeArea(
        child: Consumer<DashboardProvider>(
            builder: (context, dashboardProvider, c) {
          return SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: TextFormField(
                          controller: inputController,
                          decoration: InputDecoration(
                            hintText: "Enter Currency Code",
                            isDense: true,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        dashboardProvider.getCurrency(inputController.text);
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 10),
                        alignment: Alignment.center,
                        color: Colors.indigoAccent,
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        child: Text(
                          "Submit",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        "1 - ${dashboardProvider.eur}",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        "=",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    dashboardProvider.askedCurrency != ""
                        ? Container(
                            padding: EdgeInsets.all(20),
                            child: Text(
                              "${dashboardProvider.askedCurrency} - ${dashboardProvider.askedCode}",
                              style: TextStyle(fontSize: 18),
                            ),
                          )
                        : Expanded(
                            child: Container(
                              padding: EdgeInsets.all(20),
                              child: Text(
                                "Type currency code to get latest value",
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: ListView.builder(
                      shrinkWrap: true,
                      physics: ClampingScrollPhysics(),
                      itemCount: dashboardProvider.weightData.length,
                      itemBuilder: (context, index) {
                        return Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.all(5),
                                child: Text(
                                  "${dashboardProvider.weightData[index].code}  -  ${dashboardProvider.weightData[index].value}",
                                  style: TextStyle(
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
