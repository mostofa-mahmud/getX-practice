part of pages;


class Snackbar_dialog extends StatelessWidget {
  const Snackbar_dialog({Key? key}) : super(key: key);

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
                child: Text("Show Dialog"))
          ],
        ),
      ),
    );
  }
}
