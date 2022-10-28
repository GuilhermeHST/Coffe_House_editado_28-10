class Polly{
  int? id;
  String? foto;
  String? nome;
  String? aux;
  String? volume;
  String? preco;
  String? ingredientes;

  User({this.id, this.foto, this.nome, this.aux, this.volume, this.preco, this.ingredientes});

  User.fromJson(Map<String, dynamic> json){
    id = json['id'];
    foto = json['foto'];
    nome = json['nome'];
    aux = json['aux'];
    volume = json['volume'];
    preco = json['preco'];
    ingredientes = json['ingredientes'];
  }

  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = username;
    data['foto'] = password;
    data['nome'] = password;
    data['aux'] = password;
    data['volume'] = password;
    data['preco'] = password;
    data['ingredientes'] = password;
    return data;
  }
}
