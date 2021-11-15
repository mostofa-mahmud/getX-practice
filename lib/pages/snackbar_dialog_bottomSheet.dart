part of pages;


class Snackbar_dialog_bottomSheet extends StatelessWidget {
  const Snackbar_dialog_bottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SnackBar and Dialog"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                Get.snackbar("Snackbar Title", "SnackBar message",
                  snackPosition: SnackPosition.TOP,
                );
                },

              child: Text("Show SnackBar"),
            ),




            ElevatedButton(
                onPressed: (){
                  Get.defaultDialog(
                    title: "Dialog Title",
                    titleStyle: TextStyle(
                      fontSize: 25
                    ),
                    content: Row(
                      children: [
                        CircularProgressIndicator(),
                        SizedBox(width: 15,),
                        Expanded(child: Text("Data loading.....")),
                      ],
                    ),
                    textCancel: "Cancel",
                    onCancel: (){},
                    textConfirm: "Confirm",
                      confirmTextColor: Colors.white,
                    onConfirm: (){},
                    buttonColor: Colors.green,
                    actions: [
                      ElevatedButton(
                          onPressed: (){
                            Get.back();
                          },
                          child: Text("Back")
                      )
                    ],
                    barrierDismissible: false
                  );
                },
                child: Text("Show Dialog")
            ),



            ElevatedButton(
                onPressed: (){
                  Get.bottomSheet(
                    Container(
                      child: Wrap(
                        children: [
                          ListTile(
                            leading: Icon(Icons.wb_sunny_outlined),
                            title: Text("Light Theme"),
                            onTap: ()=>{
                              Get.changeTheme(ThemeData.light())
                            },
                          ),
                          ListTile(
                            leading: Icon(Icons.wb_sunny),
                            title: Text("Dark Theme"),
                            onTap: ()=>{
                              Get.changeTheme(ThemeData.dark())
                            },
                          )
                        ],
                      ),
                    ),
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: BorderSide(
                        color: Colors.white,
                      )
                    )
                  );
                },
                child: Text("BottomSheet")
            )
          ],
        ),
      ),
    );
  }
}
