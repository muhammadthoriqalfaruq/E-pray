import 'package:uuid/uuid.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/model_list.dart';
import '../utils/info.dart';
import '../list_provider.dart';

class AddEditList extends StatelessWidget{
  final String title;
  final ListModel ? list;

  const AddEditList(
      {Key? key,
    required this.title,
    this.list,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _listController = TextEditingController();

    if(list != null) {
      _listController.text = list!.list;
    }
    return AlertDialog(
      title: Text(title),
      content: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              controller: _listController,
              textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(
                border: InputBorder.none,
                filled: true,
                isDense: true,
                fillColor: Colors.grey.shade100,
                labelText: "LIST",
                hintText: "Masukkan List",
              ),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("Batal"),
        ),
        TextButton(
            onPressed: (){
              if(_listController.text.isEmpty){
                showDialog(
                    context: context,
                    builder: (context){
                      return const Info(
                        title: "Error!",
                        content: "Error! List tidak boleh kosong.");
                    });
              } else {
                if (list != null) {
                  Provider.of<ListProvider>(context, listen: false).updateList(
                    ListModel(
                      id: list!.id,
                      list: _listController.text,
                  ),);
                }else {
                  const uuid = Uuid();
                  Provider.of<ListProvider>(context, listen: false).addList(
                    ListModel(
                      id: uuid.v4(),
                      list: _listController.text,
                    ),
                  );
                }
                Navigator.pop(context);
              }
            },
            child: const Text("Simpan"),
        ),
      ],
    );
  }
}