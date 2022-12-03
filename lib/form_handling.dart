import 'package:flutter/material.dart';

class FormHandling extends StatefulWidget {
  const FormHandling({Key? key}) : super(key: key);

  @override
  State<FormHandling> createState() => _FormHandlingState();
}

class _FormHandlingState extends State<FormHandling> {

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  var userSelectedSection = '';
  var formKey = GlobalKey<FormState>();
  var sections = ['3R1', '3R2', '3R3', '3R4'];
  Map data = {
    'name': '',
    'email': '',
    'section': ''
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Handling'),
      ),
      body: Form(
        key: formKey,
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            TextFormField(
              controller: nameController,
              keyboardType: TextInputType.name,
              decoration: const InputDecoration(
                hintText: 'Name',
                labelText: 'Name'
              ),
              validator: (inputValue) {
                return inputValue == '' ? 'Walay sulod' : null;
              },
            ),
            const SizedBox(height: 20),
            TextFormField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                  hintText: 'Email',
                  labelText: 'Email'
              ),
              validator: (inputValue) {
                return inputValue == '' ? 'Walay sulod' : null;
              },
            ),
            const SizedBox(height: 20),
            DropdownButtonFormField(
                items: [
                  ...sections.map((item) => DropdownMenuItem(
                        child: Text(item),
                        value: item,
                  ))
                ],
                onChanged: (selectedValue) {
                  this.userSelectedSection = selectedValue ?? '';
                }
            ),
            const SizedBox(height: 40),
            SizedBox(
              height: 40,
              child: ElevatedButton(
                onPressed: () {
                  var isValid = formKey.currentState!.validate();

                  if (isValid) {
                      this.data['name'] = nameController.text;
                      this.data['email'] = emailController.text;
                      this.data['section'] = this.userSelectedSection;



                      Navigator.pop(context, this.data);
                  }
                },
                child: const Text('Submit'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
