import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets1/home.dart';

class Buyweapons extends StatefulWidget {
  const Buyweapons({Key? key}) : super(key: key);

  static const String routeName = "/buyweapons";

  @override
  _BuyweaponsState createState() => _BuyweaponsState();
}

class _BuyweaponsState extends State<Buyweapons> {
  @override
  void initState() {
    super.initState();
  }

  final _loginKey = GlobalKey<FormState>();
  final ctrlName = TextEditingController();
  final ctrlEmail = TextEditingController();
  final ctrlPrice = TextEditingController();
  final ctrlType = TextEditingController();

  @override
  void dispose() {
    ctrlName.dispose();
    ctrlEmail.dispose();
    ctrlPrice.dispose();
    ctrlType.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buy Form"),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.black, Colors.yellow])),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Form(
            key: _loginKey,
            child: Column(
              children: [
                SizedBox(height: 16),
                TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      labelText: "Full Name", prefixIcon: Icon(Icons.person)),
                  controller: ctrlName,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    return value.toString().isEmpty
                        ? 'Please fill in the blank!'
                        : null;
                  },
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 16),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: "Email", prefixIcon: Icon(Icons.email)),
                  controller: ctrlEmail,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    return !EmailValidator.validate(value.toString())
                        ? 'Email tidak valid!'
                        : null;
                  },
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 16),
                TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      labelText: "Price",
                      prefixIcon: Icon(Icons.money_off_outlined)),
                  controller: ctrlPrice,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    return value.toString().isEmpty
                        ? 'Please fill in the blank!'
                        : null;
                  },
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 16),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      labelText: "Type", prefixIcon: Icon(Icons.type_specimen)),
                  controller: ctrlType,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    return value.toString().isEmpty
                        ? 'Please fill in the blank!'
                        : null;
                  },
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                    onPressed: () {
                      if (ctrlType.text.toString() == "" ||
                          ctrlEmail.text.toString() == "" ||
                          ctrlName.text.toString() == "" ||
                          ctrlPrice.text.toString() == "") {
                        showDialog(
                            context: context,
                            builder: ((((context) {
                              return AlertDialog(
                                title: Text("There is an Error!"),
                                content: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text("Please fill in the blanks!"),
                                    ]),
                              );
                            }))));
                      } else {
                        showDialog(
                            context: context,
                            builder: ((((context) {
                              return AlertDialog(
                                title: Text("Successful !"),
                                content: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text("Full name: " +
                                          ctrlName.text.toString()),
                                      Text("Email: " +
                                          ctrlEmail.text.toString()),
                                      Text("Price : " +
                                          ctrlPrice.text.toString() +
                                          " Credits"),
                                      Text("Type: " + ctrlType.text.toString()),
                                      SizedBox(height: 16),
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.pushReplacementNamed(
                                              context, HomePage.routeName);
                                        },
                                        child: Text("OK"),
                                      )
                                    ]),
                              );
                            }))));
                      }
                    },
                    child: Text("OK"))
              ],
            )),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.green, Colors.black])),
      ),
    );
  }
}
