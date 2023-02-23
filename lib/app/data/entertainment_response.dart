class EntertainmentResponse {
  bool? succsess; // Deklarasi variabel bool dengan nullable (?)
  String? message; // Deklarasi variabel String dengan nullable (?)
  List<Data>? data; // Deklarasi variabel List yang berisi objek dari kelas Data dengan nullable (?)

  EntertainmentResponse({this.succsess, this.message, this.data}); // Konstruktor dengan parameter opsional

  EntertainmentResponse.fromJson(Map<String, dynamic> json) {
    // Konstruktor untuk mengambil data dari JSON
    succsess = json['succsess'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    // Metode untuk mengonversi objek menjadi JSON
    final Map<String, dynamic> data = <String, dynamic>{};
    data['succsess'] = succsess;
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? name; // Deklarasi variabel String dengan nullable (?)
  String? author; // Deklarasi variabel String dengan nullable (?)
  String? title; // Deklarasi variabel String dengan nullable (?)
  String? description; // Deklarasi variabel String dengan nullable (?)
  String? url; // Deklarasi variabel String dengan nullable (?)
  String? urlToImage; // Deklarasi variabel String dengan nullable (?)
  String? publishedAt; // Deklarasi variabel String dengan nullable (?)
  String? content; // Deklarasi variabel String dengan nullable (?)

  Data({this.name, this.author, this.title, this.description, this.url, this.urlToImage, this.publishedAt, this.content}); // Konstruktor dengan parameter opsional

  Data.fromJson(Map<String, dynamic> json) {
    // Konstruktor untuk mengambil data dari JSON
    name = json['name'];
    author = json['author'];
    title = json['title'];
    description = json['description'];
    url = json['url'];
    urlToImage = json['urlToImage'];
    publishedAt = json['publishedAt'];
    content = json['content'];
  }

  Map<String, dynamic> toJson() {
    // Metode untuk mengonversi objek menjadi JSON
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['author'] = author;
    data['title'] = title;
    data['description'] = description;
    data['url'] = url;
    data['urlToImage'] = urlToImage;
    data['publishedAt'] = publishedAt;
    data['content'] = content;
    return data;
  }
}
