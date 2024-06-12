import 'package:flutter/material.dart';
import 'package:tap/hive_store/hive_store_function.dart';

class HiveStoreUi extends StatefulWidget {
  const HiveStoreUi({super.key});

  @override
  State<HiveStoreUi> createState() => _HiveStoreUiState();
}

class _HiveStoreUiState extends State<HiveStoreUi> {
  List myHiveData = [];
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailContoller = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getHiveData();
  }

  getHiveData() {
    myHiveData = HiveFunction.getAllData();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hive crud oppration"),
        actions: [
          IconButton(
              onPressed: () {
                getHiveData();
              },
              icon: const Icon(Icons.refresh))
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          showForm(null);
        },
        label: const Text("Add Data"),
        icon: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: myHiveData.isEmpty
            ? const Center(
                child: Text("No Data found"),
              )
            : Column(
                children: List.generate(myHiveData.length, (index) {
                  final userData = myHiveData[index];
                  return Card(
                    child: ListTile(
                      title: Text("Name :${userData["name"]}"),
                      subtitle: Text("Email : ${userData["email"]}"),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                              onPressed: () {
                                showForm(userData["key"]);
                              },
                              icon: const Icon(Icons.edit)),
                          IconButton(
                              onPressed: () {
                                HiveFunction.deleteUser(userData["key"]);
                                getHiveData();
                              },
                              icon: const Icon(Icons.delete))
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
      ),
    );
  }

  void showForm(int? itemKey) async {
    if (itemKey != null) {
      final existingItem =
          myHiveData.firstWhere((element) => element['key'] == itemKey);
      _nameController.text = existingItem['name'];
      _emailContoller.text = existingItem['email'];
    }
    showModalBottomSheet(
        context: context,
        elevation: 5,
        isScrollControlled: true,
        isDismissible: true,
        builder: (_) {
          return Container(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
                top: 15,
                left: 15,
                right: 15),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    itemKey == null ? 'Create New User' : "Update",
                    style: const TextStyle(
                        fontSize: 22, fontWeight: FontWeight.w600),
                  ),
                ),
                TextField(
                  controller: _nameController,
                  decoration: const InputDecoration(
                      hintText: 'Name', border: InputBorder.none),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: _emailContoller,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                      hintText: 'Email', border: InputBorder.none),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () async {
                      if (itemKey == null) {
                        HiveFunction.createUser({
                          'name': _nameController.text.trim(),
                          "email": _emailContoller.text.trim()
                        });
                      }
                      if (itemKey != null) {
                        HiveFunction.updateUser(itemKey, {
                          "name": _nameController.text.trim(),
                          "email": _emailContoller.text.trim()
                        });
                      }
                      _nameController.clear();
                      _emailContoller.clear();
                      Navigator.of(context).pop();
                      getHiveData();
                    },
                    child: Text(itemKey == null ? "Create User" : "Update"))
              ],
            ),
          );
        });
  }
}
