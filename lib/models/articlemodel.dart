class Articlemodel {
  final String? image;
  final String? subtitle;
  final String title;

  Articlemodel(
      {required this.image, required this.subtitle, required this.title});
factory Articlemodel.fromjson(json)
{
  return Articlemodel(
            image: json['urlToImage'],
            subtitle: json['description'],
            title: json['title']);
}
}
