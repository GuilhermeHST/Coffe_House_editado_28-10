import '/domain/polly.dart';
import '/data/polly_dao.dart';

class Catalogo extends StatefulWidget {
  const Catalogo({Key? key}) : super(key: key);

  @override
  State<Catalogo> createState() => _CatalogoState();
}

class _CatalogoState extends State<Catalogo> {
  List<Cafe> listaCafes = DB.lista;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0XFFB7794B),
        shadowColor: Colors.transparent,
        toolbarHeight: 25,
      ),
      backgroundColor: const Color(0XFFF8EFE9),
      body: Column(
        children: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FutureBuilder<List<Polly>>(
            future: PollyDao().listarCafes(),
            builder: (context, snapshot) {
              if(snapshot.hasData){
                List<Polly> lista = snapshot.data ?? [];
                
                return  ListView.builder(
                  shrinkWrap: true,
                  itemCount: listaCafes.length,
                  itemBuilder: ((context, index){
                    return CafeCard(cafe: listaCafes[index]);
                  }),
                );
              }
            }
          ),
        );
      ),
    );
  }
}
