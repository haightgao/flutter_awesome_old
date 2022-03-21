import 'package:flutter/material.dart';
import 'package:flutter_awesome/example/rest_api/flutter_consume_rest_api_with_best_practices/models/article_model.dart';
import 'package:flutter_awesome/example/rest_api/flutter_consume_rest_api_with_best_practices/network/network_enums.dart';
import 'package:flutter_awesome/example/rest_api/flutter_consume_rest_api_with_best_practices/network/network_helper.dart';
import 'package:flutter_awesome/example/rest_api/flutter_consume_rest_api_with_best_practices/network/network_service.dart';
import 'package:flutter_awesome/example/rest_api/flutter_consume_rest_api_with_best_practices/network/query_param.dart';
import 'package:flutter_awesome/example/rest_api/flutter_consume_rest_api_with_best_practices/static/static_values.dart';
import 'package:flutter_awesome/example/rest_api/flutter_consume_rest_api_with_best_practices/widgets/article_widget.dart';

class FlutterConsumeRestApiWithBestPracticesHomePage extends StatefulWidget {
  const FlutterConsumeRestApiWithBestPracticesHomePage({Key? key}) : super(key: key);

  @override
  State<FlutterConsumeRestApiWithBestPracticesHomePage> createState() => _FlutterConsumeRestApiWithBestPracticesHomePage();
}

class _FlutterConsumeRestApiWithBestPracticesHomePage extends State<FlutterConsumeRestApiWithBestPracticesHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News Articles'),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done && snapshot.hasData) {
            final List<Article> articles = snapshot.data as List<Article>;

            return ListView.builder(
              itemBuilder: (context, index) {
                return ArticleWidget(article: articles[index]);
              },
              itemCount: articles.length,
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.error_outline,
                    color: Colors.red,
                    size: 25,
                  ),
                  SizedBox(height: 10),
                  Text('Something Went Wrong'),
                ],
              ),
            );
          }

          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }

  Future<List<Article>?> getData() async {
    final response = await NetworkService.sendRequest(
        requestType: RequestType.get,
        url: StaticValues.apiUrl,
        queryParam: QP.apiQP(
          apiKey: StaticValues.apikey,
          country: StaticValues.apiCountry,
        ));

    print(response?.statusCode);

    return await NetworkHelper.filterResponse(
        callBack: _listOfArticlesFromJson,
        response: response,
        parameterName: CallBackParameterName.articles,
        onFailureCallBackWithMessage: (errorType, msg) {
          print('Error type - $errorType - Message $msg');
          return null;
        });
  }

  List<Article> _listOfArticlesFromJson(json) => (json as List).map((item) => Article.fromJson(item as Map<String, dynamic>)).toList();
}
