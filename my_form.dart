import 'package:flutter/material.dart';
import 'user_data.dart';

void main() {
  runApp(const PersonalForm());
}

class PersonalForm extends StatelessWidget {
  const PersonalForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Personal Form',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Personal Form',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          actions: [
            IconButton(
              onPressed: () {
                // Add the function you want when the icon is pressed
              },
              icon: const Icon(
                Icons.description,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: const CardList(),
      ),
    );
  }
}

class CardList extends StatefulWidget {
  const CardList({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CardListState createState() => _CardListState();
}

class _CardListState extends State<CardList> {
  String fullname = '';
  String email = '';
  String phoneNumber = '';
  String personalID = '';
  String address = '';
  String selectedDate = '';
  bool checkBoxValue = false;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    // ignore: unrelated_type_equality_checks
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked.toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        margin: const EdgeInsets.all(16.0),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10.0),
                        Text('Full Name'),
                      ],
                    )),
                const SizedBox(height: 10.0),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Enter Your Name',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 8.0),
                    ),
                    onChanged: (value) {
                      setState(() {
                        fullname = value;
                      });
                    },
                  ),
                ),

                const Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10.0),
                        Text('Email'),
                      ],
                    )),
                const SizedBox(height: 10.0),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Enter Your Email',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 8.0),
                    ),
                    onChanged: (value) {
                      setState(() {
                        email = value;
                      });
                    },
                  ),
                ),
                const SizedBox(height: 18.0),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Enter Phone Number',
                            border: InputBorder.none,
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 8.0),
                          ),
                          onChanged: (value) {
                            setState(() {
                              phoneNumber = value;
                            });
                          },
                        ),
                      ),
                    ),
                    const SizedBox(width: 8.0),
                    Expanded(
                      flex: 1,
                      child: Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: const Center(
                          child: Text('Verify'),
                        ),
                      ),
                    ),
                  ],
                ),

                const Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10.0),
                        Text('Personal ID Number'),
                      ],
                    )),
                const SizedBox(height: 10.0),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Value',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 8.0),
                    ),
                    onChanged: (value) {
                      setState(() {
                        personalID = value;
                      });
                    },
                  ),
                ),
                const Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10.0),
                        Text('Addres'),
                      ],
                    )),
                const SizedBox(height: 10.0),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Enter your text here',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 8.0),
                    ),
                    onChanged: (value) {
                      setState(() {
                        address = value;
                      });
                    },
                    textAlign: TextAlign.left,
                  ),
                ),
                const SizedBox(height: 10.0),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Select date',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 8.0),
                    ),
                    onTap: () {
                      _selectDate(context);
                    },
                  ),
                ),

                const SizedBox(height: 10.0),
                CheckboxListTile(
                  title: const Text(
                    'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.',
                    style: TextStyle(fontSize: 14),
                  ),
                  value: checkBoxValue,
                  onChanged: (newValue) {
                    setState(() {
                      checkBoxValue = newValue ?? false;
                    });
                  },
                  controlAffinity: ListTileControlAffinity.leading,
                  contentPadding: const EdgeInsets.all(0),
                ),
                // Add the Select Date button
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Second(
                          fullName: fullname,
                          email: email,
                          address: address,
                          checkBoxValue: checkBoxValue,
                        ),
                      ),
                    );
                  },
                  child: Container(
                    height: 48,
                    width: 380,
                    padding: const EdgeInsets.all(8),
                    child: const Text(
                      'Submit',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
