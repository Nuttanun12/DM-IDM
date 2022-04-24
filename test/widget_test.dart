Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.93,
              width: MediaQuery.of(context).size.height * 0.7,
              child: Card(
                color: HexColor('3a3f4a'),
                child: Center(child: Userfiled(title: 'UserName')),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 20,
              ),
            ),
          ),