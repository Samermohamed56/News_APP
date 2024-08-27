import 'package:dio/dio.dart';
import 'package:news/models/articlemodel.dart';

class newsService {
  final Dio dio;

  newsService({required this.dio});

  Future<List<Articlemodel>> getGeneralNews({required String category}) async {
    try {
      final response = await dio.get(
          "https://newsapi.org/v2/top-headlines?country=us&apiKey=453b5e7f27804f23864fa520ba40e5fd&category=$category");

      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<Articlemodel> articlesList = [];
      for (var article in articles) {
        Articlemodel articlemodel = Articlemodel.fromjson(article);
        articlesList.add(articlemodel);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
