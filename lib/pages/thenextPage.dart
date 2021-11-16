part of pages;

class thenextPage extends StatelessWidget {
  const thenextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: (){
                  Get.back(result: "10");
                },
                child: Text("Back to HomePage")
            ),
            
            Text(
                "${Get.arguments}",
              style: TextStyle(color: Colors.green),
            )
          ],
        ),
      ),
    );
  }
}
