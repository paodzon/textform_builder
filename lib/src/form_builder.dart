import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:textform_builder/src/models/field_model.dart';
import 'package:textform_builder/src/widgets/labeled_textfield.dart';

class FormBuilder extends StatefulWidget {
  const FormBuilder({Key? key, required this.data, required this.onSubmit})
      : super(key: key);

  final dynamic data;
  final Function onSubmit;

  @override
  State<FormBuilder> createState() => _FormBuilderState();
}

class _FormBuilderState extends State<FormBuilder> {
  List<TextEditingController> textControllers = [];
  FormsResponseModel sampleData = FormsResponseModel(formData: []);
  late List<DOForm> inputField = sampleData.formData;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    sampleData = FormsResponseModel.fromJson(widget.data);
    createControllers();
    super.initState();
  }

  createControllers() {
    textControllers = [];
    for (var i = 0; i < inputField.length; i++) {
      textControllers.add(TextEditingController());
    }
  }

  void onSubmitData() {
    List<Map> newData = [];
    if (_formKey.currentState?.validate() ?? false) {
      for (var i = 0; i < inputField.length; i++) {
        newData.add({
          "id": inputField[i].id,
          "label": inputField[i].label,
          "type": inputField[i].type,
          "answer": textControllers[i].text,
        });
      }
      widget.onSubmit(newData);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ListView.builder(
              itemCount: inputField.length,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: LabeledTextField(
                      validator: (val) {
                        if (val!.isEmpty &&
                            inputField[index].isRequired == true) {
                          return 'This field is required';
                        }
                        return null;
                      },
                      inputFormatter: inputField[index].type == 'number'
                          ? [
                              FilteringTextInputFormatter.allow(
                                  RegExp(r'[0-9]'))
                            ]
                          : [],
                      label: inputField[index].label.toString(),
                      placeholder: '',
                      controller: textControllers[index]),
                );
              }),
          const SizedBox(height: 20),
          ElevatedButton(
              onPressed: () => onSubmitData(), child: const Text('Submit'))
        ],
      ),
    );
  }
}
