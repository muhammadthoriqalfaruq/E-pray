import 'dart:core';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../list_provider.dart';
import '../utils/add_edit_todo.dart';

class List extends StatefulWidget{
  const List({Key? key}) : super(key: key);

  @override
  State<List> createState() => _List();
}

class _List extends State<List> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("List Hafalan"),
      ),
      body: Consumer<ListProvider>(builder: (
          context,
          listProvider,
          child,
      ){
        return ListView(
          padding: const EdgeInsets.all(20.0),
          children: listProvider.list.isNotEmpty
              ? listProvider.list.map((list) {
                return Dismissible(
                  key: Key(list.id),
                  background: Container(
                    color: Colors.red.shade300,
                    child: const Center(
                      child: Text(
                        "Hapus?",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              child: Card(
                child: ListTile(
                  title: Text(list.list),
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AddEditList(
                            title: "Edit List",
                            list: list,
                          );
                        });
                  },
                ),
              ),
              onDismissed: (direction) {
                Provider.of<ListProvider>(
                  context,
                  listen: false,
                ).removeList(list);
              },
            );
          }).toList()
          : [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height - 100,
              child: const Center(
                child: Text(
                  "List Hafalan Masih Kosong!",
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showDialog(context: context, builder: (context){
            return const AddEditList(
              title: "Tambah List"
            );
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}