import 'package:cloud_funding/provider/home/addEquity.dart';
import 'package:cloud_funding/themes/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class AddEquityScreen extends StatefulWidget {
  const AddEquityScreen({super.key});

  @override
  State<AddEquityScreen> createState() => _AddEquityScreenState();
}

class _AddEquityScreenState extends State<AddEquityScreen> {
  @override
  Widget build(BuildContext context) {
    final addEquityState = Provider.of<AddEquityState>(context);
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Add an Equity'),
        ),
      ),
      body: Column(
        children: [
          Flexible(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
                    child: SizedBox(
                      child: TextField(
                        onChanged: addEquityState.onCompanyNameChanged,
                        style: TextStyle(fontSize: 15),
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          border: OutlineInputBorder(),
                          labelText: 'Company Name',
                          labelStyle: TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                    child: SizedBox(
                      child: TextField(
                        onChanged: addEquityState.onTitleChanged,
                        style: TextStyle(fontSize: 15),
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.text_decrease),
                          border: OutlineInputBorder(),
                          labelText: 'Title',
                          labelStyle: TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                    child: SizedBox(
                      child: TextField(
                        onChanged: addEquityState.onValuationChanged,
                        style: TextStyle(fontSize: 15),
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.home),
                          border: OutlineInputBorder(),
                          labelText: 'Company Valuation',
                          labelStyle: TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                    child: SizedBox(
                      child: TextField(
                        onChanged: addEquityState.onCompanyDescriptionChanged,
                        keyboardType: TextInputType.multiline,
                        minLines: 1,
                        maxLines: 5,
                        style: TextStyle(fontSize: 15),
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.format_list_bulleted_rounded),
                          border: OutlineInputBorder(),
                          labelText: 'Company description',
                          labelStyle: TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                    child: SizedBox(
                      child: TextField(
                        onChanged: addEquityState.onEquityAmountChanged,
                        style: TextStyle(fontSize: 15),
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.money),
                          border: OutlineInputBorder(),
                          labelText: 'Equity Amount',
                          labelStyle: TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                    child: SizedBox(
                      child: TextField(
                        onChanged: addEquityState.onEquityPercentageChanged,
                        style: TextStyle(fontSize: 15),
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.percent),
                          border: OutlineInputBorder(),
                          labelText: 'Equity Percentage',
                          labelStyle: TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                    child: SizedBox(
                      child: TextField(
                        onChanged: addEquityState.onDescriptionChanged,
                        style: TextStyle(fontSize: 15),
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.format_list_bulleted_add),
                          border: OutlineInputBorder(),
                          labelText: 'Description',
                          labelStyle: TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                    child: SizedBox(
                      child: TextField(
                        // readOnly: true,
                        onChanged: addEquityState.onEndDateChanged,
                        //   // Handle the onChanged event for EndDate
                        //   // Example: parse the formatted date string to DateTime
                        //   DateTime? parsedDate =
                        //       DateFormat('yyyy-MM-dd').parse(value);
                        //   if (parsedDate != null) {
                        //     addEquityState.onEndDateChanged(parsedDate);
                        //   }
                        // },
                        // onTap: () async {
                        //   DateTime? pickedDate = await showDatePicker(
                        //       context: context,
                        //       initialDate: DateTime.now(),
                        //       firstDate: DateTime(1950),
                        //       lastDate: DateTime(2100));
                        //   if (pickedDate != null) {
                        //     print(pickedDate);
                        //     addEquityState.onEndDateChanged(pickedDate);
                        //   }
                        //   setState(() {});
                        // },
                        style: TextStyle(fontSize: 15),
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.calendar_month),
                          border: OutlineInputBorder(),
                          labelText: 'EndDate',
                          labelStyle: TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                    child: SizedBox(
                      child: TextField(
                        onChanged: addEquityState.onPanNumberChanged,
                        style: TextStyle(fontSize: 15),
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.numbers),
                          border: OutlineInputBorder(),
                          labelText: 'Pan Number',
                          labelStyle: TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                    child: SizedBox(
                      child: TextField(
                        onChanged: addEquityState.onCompanyEstablishChanged,
                        style: TextStyle(fontSize: 15),
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.construction),
                          border: OutlineInputBorder(),
                          labelText: 'Company Establishment',
                          labelStyle: TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          TextButton(
                            child: Text('Upload Document'),
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text('Choose Image Source'),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                          addEquityState.pickDocumentImage(
                                              ImageSource.gallery);
                                        },
                                        child: Text('Pick from Gallery'),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                          addEquityState.pickDocumentImage(
                                              ImageSource.camera);
                                        },
                                        child: Text('Capture from Camera'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                          ),
                          if (addEquityState.document != null)
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Container(
                                height: 30,
                                width: 250,
                                child: Text(
                                  'File Selected',
                                ),
                              ),
                            ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 60,
            width: 300,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: appPrimaryColor),
              onPressed: () {
                addEquityState.addEquity();
              },
              child: Text(
                'Raise',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
