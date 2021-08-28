import 'package:college/app/shared/components/custom_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:string_validator/string_validator.dart' as validator;

class UserDate extends StatefulWidget {
  // const UserDate({ Key? key }) : super(key: key);

  @override
  _UserDateState createState() => _UserDateState();
}

class _UserDateState extends State<UserDate> {
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dados pesssoais'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextField(
                  label: 'Número de matrícula',
                  icon: Icons.confirmation_num,
                  keyboard: TextInputType.number,
                  validator: (text) => text == null || text.isEmpty
                      ? 'O campo matricula e obrigatório'
                      : null,
                ),
                SizedBox(height: 15),
                CustomTextField(
                    label: 'Nome completo',
                    icon: Icons.person,
                    keyboard: TextInputType.name,
                    validator: (text) {
                      if (text == null || text.isEmpty) {
                        return 'O nome completo e obrigatório';
                      }
                      return null;
                    }),
                SizedBox(height: 15),
                CustomTextField(
                    label: 'Nome da faculdade',
                    icon: Icons.home,
                    keyboard: TextInputType.name,
                    validator: (text) {
                      if (text == null || text.isEmpty) {
                        return 'O nome da faculdade e obrigatório';
                      }
                      return null;
                    }),
                SizedBox(height: 15),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      formkey.currentState?.validate();
                      if (formkey.currentState.validate()) {
                        formkey.currentState.save();
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Processando dados')),
                        );
                      }
                    },
                    icon: Icon(Icons.save),
                    label: Text("Salvar"),
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
