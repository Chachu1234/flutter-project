import 'package:flutter/material.dart';

class StudentRegister extends StatefulWidget {
  const StudentRegister({super.key});

  @override
  _StudentRegisterState createState() => _StudentRegisterState();
}

class _StudentRegisterState extends State<StudentRegister> {
  final _formKey = GlobalKey<FormState>();

  late String _sex;
  late String _cgpa;
  late String _skill;
  late String _name;
  late String _department;
  late String _project;

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      Navigator.pushReplacementNamed(context, '/second');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registration form for student'),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: 'Name'),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter student name';
                  }
                  return null;
                },
                onSaved: (value) {
                  _name = value!;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Sex'),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter student sex';
                  }
                  return null;
                },
                onSaved: (value) {
                  _sex = value!;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'CGPA'),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter student  cgpa';
                  }
                  return null;
                },
                onSaved: (value) {
                  _cgpa = value!;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Department'),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter student department to advise students';
                  }
                  return null;
                },
                onSaved: (value) {
                  _department = value!;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Skill'),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter students skill email';
                  }
                  return null;
                },
                onSaved: (value) {
                  _skill = value!;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Project'),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter student project ';
                  }
                  return null;
                },
                onSaved: (value) {
                  _project = value!;
                },
              ),
              const SizedBox(height: 16.0),
              Center(
                child: ElevatedButton(
                  onPressed: _submitForm,
                  child: const Text('Add'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
