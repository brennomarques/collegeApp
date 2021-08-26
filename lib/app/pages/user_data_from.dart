import 'package:college/app/shared/components/Custom_Text_Field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserDate extends StatefulWidget {
  // const UserDate({ Key? key }) : super(key: key);

  @override
  _UserDateState createState() => _UserDateState();
}

class _UserDateState extends State<UserDate> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dados pesssoais'),
      ),
      body: SingleChildScrollView(
        child: Form(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextField(
                  label: 'Número de matrícula',
                  icon: Icons.confirmation_num,
                  keyboard: TextInputType.number,
                ),
                SizedBox(height: 15),
                CustomTextField(
                  label: 'Nome completo',
                  icon: Icons.person,
                  keyboard: TextInputType.name,
                ),
                SizedBox(height: 15),
                CustomTextField(
                  label: 'Nome da faculdade',
                  icon: Icons.home,
                  keyboard: TextInputType.name,
                ),
                SizedBox(height: 15),
                CustomTextField(label: 'Teste icon'),
                SizedBox(height: 15),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.save),
                    label: Text("Salvar"),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
