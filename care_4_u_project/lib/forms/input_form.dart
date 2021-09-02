import 'package:flutter/material.dart';

class InputForm extends StatefulWidget {
  const InputForm({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;
  @override
  _InputFormState createState() => _InputFormState(title: title);
}

class _InputFormState extends State<InputForm> {
  String? title;
  _InputFormState({this.title});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final _formKey = GlobalKey<FormState>();
    double? inputValue;
    return Form(
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: size.height * 0.02),
            child: Text(
              title!,
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: size.height * 0.025,
          ),
          TextFormField(
            maxLength: 50,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.add),
              hintText: 'Add your $title value here',
              fillColor: Colors.white,
              filled: true,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black54, width: 1.0),
              ),
            ),
            validator: (value) =>
                value!.isEmpty ? 'Please enter a value' + ' for $title' : null,
            onChanged: (value) {
              setState(() {
                inputValue = double.parse(value);
              });
            },
          ),
          ElevatedButton(
            onPressed: () async {
              if (_formKey.currentState!.validate()) {
                print(inputValue);
                Navigator.of(context).pop();
              }
            },
            child: Text(
              'Add $title',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w100,
                color: Colors.black45,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
