part of pages;


class Routes extends StatelessWidget {
  const Routes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


      return Scaffold(
        appBar: AppBar(
          title: Text("Navigation"),
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: (){
                    Get.toNamed("/nextPage");
                  },
                  child: Text("NextPage")
              )
            ],
          ),
        ),
    );
  }
}
