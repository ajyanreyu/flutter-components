import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _name = '';
  String _email = '';
  String _password = '';
  String _date = '';
  String _selectedOption = 'fly';
  TextEditingController _inputFieldDateController = new TextEditingController();
  List<String> _powers = ['fly', 'x-rays', 'super strength'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Text Inputs')),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: <Widget>[
          _createInputs(),
          Divider(),
          _createdEmail(),
          Divider(),
          _createdPassword(),
          Divider(),
          _createdDate(context),
          Divider(),
          _createdDropDown(),
          Divider(),
          _createPerson(),
          Divider(),
        ],
      ),
    );
  }

  Widget _createInputs() {
    return TextField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          counter: Text('Letters: ${_name.length}'),
          hintText: 'Person name',
          labelText: 'Name',
          helperText: 'Only name',
          suffixIcon: Icon(Icons.accessibility),
          icon: Icon(Icons.account_circle)),
      onChanged: (value) => setState(() => _name = value),
    );
  }

  Widget _createdEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          counter: Text('Letters: ${_name.length}'),
          hintText: 'email',
          labelText: 'Email',
          suffixIcon: Icon(Icons.lock),
          icon: Icon(Icons.lock)),
      onChanged: (value) => setState(() => _email = value),
    );
  }

  Widget _createdPassword() {
    return TextField(
      obscureText: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          counter: Text('Letters: ${_name.length}'),
          hintText: 'Password',
          labelText: 'Password',
          suffixIcon: Icon(Icons.alternate_email),
          icon: Icon(Icons.email)),
      onChanged: (value) => setState(() => _password = value),
    );
  }

  Widget _createdDate(BuildContext context) {
    return TextField(
      controller: _inputFieldDateController,
      enableInteractiveSelection: false,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          counter: Text('Letters: ${_name.length}'),
          hintText: 'Day of birth',
          labelText: 'Day of birth',
          suffixIcon: Icon(Icons.perm_contact_calendar),
          icon: Icon(Icons.calendar_today)),
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      },
    );
  }

  void _selectDate(BuildContext context) async {
    DateTime picked = await showDatePicker(
      locale: Locale('es', 'ES'),
      context: context,
      initialDate: new DateTime.now(),
      firstDate: new DateTime(2018),
      lastDate: new DateTime(2050),
    );
    if (picked != null) {
      _date = picked.toString();
      _inputFieldDateController.text = _date;
    }
  }

  List<DropdownMenuItem<String>> getDropDownOptions() {
    List<DropdownMenuItem<String>> list = new List();
    _powers.forEach((power) {
      list.add(DropdownMenuItem(
        child: Text(power),
        value: power,
      ));
    });
    return list;
  }

  Widget _createdDropDown() {
    return Row(
      children: <Widget>[
        Icon(Icons.select_all),
        SizedBox(width: 30.0),
        Expanded(
          child: DropdownButton(
            value: _selectedOption,
            items: getDropDownOptions(),
            onChanged: (option) => setState(() {
              _selectedOption = option;
            }),
          ),
        )
      ],
    );
  }

  Widget _createPerson() {
    return ListTile(
      title: Text('Name: $_name'),
      subtitle: Text('Email: $_email'),
      leading: Text('Power: $_selectedOption'),
    );
  }
}
