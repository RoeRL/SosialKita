import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sosialkita/LigaPremiereModel.dart';

class ListFootball extends StatefulWidget {
  const ListFootball({Key? key}) : super(key: key);

  @override
  State<ListFootball> createState() => _ListFootballState();
}

class _ListFootballState extends State<ListFootball> {
  LigaPremiereModel? ligaPremiereModel;
  bool isloaded = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getAllLP();
  }
  void getAllLP() async{
    setState(() {
      isloaded = false;
    });
    
    final res = await http.get(Uri.parse("https://www.thesportsdb.com/api/v1/json/2/search_all_teams.php?l=English%20Premier%20League"));
    print("Status code: " + res.statusCode.toString());
    ligaPremiereModel = LigaPremiereModel.fromJson(json.decode(res.body.toString()));
    print("Team 0 =" + ligaPremiereModel!.teams![0].strTeam.toString());

    setState(() {
      isloaded = true;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Liga Inggris"),),
      body: Center(
        child: Container(
          child: isloaded ? 
              ListView.builder(
                itemCount: ligaPremiereModel!.teams!.length,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      //Navigator.push(context, MaterialPageRoute(builder: (context) => DetailTeam(teams: ligaPremiereModel!.teams![index])),
                    },
                    child: Card(
                      child: Container(
                        margin: EdgeInsets.all(15),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 20),
                              width: 20,
                              height: 20,
                              child: Image.network(ligaPremiereModel!.teams![index].strTeamBadge.toString()),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(ligaPremiereModel!.teams![index].strTeam.toString()),
                                Text(ligaPremiereModel!.teams![index].strStadium.toString()),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },

              )
              : CircularProgressIndicator(),
        ),
      ),
    );
  }

}
