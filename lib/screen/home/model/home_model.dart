class HomeModel {
  List<ResultModel>? resultModel = [];

  HomeModel({this.resultModel});

  factory HomeModel.mapToModel(Map m1) {
    List l1 = m1['results'];
    return HomeModel(
      resultModel: l1
          .map(
            (e) => ResultModel.mapToModel(e),
          )
          .toList(),
    );
  }
}

class ResultModel {
  String? type, difficulty, category, question, cAnswer;
  List? wAnswer = [];

  ResultModel(
      {this.category,
      this.cAnswer,
      this.difficulty,
      this.question,
      this.type,
      this.wAnswer});

  factory ResultModel.mapToModel(Map m1) {
    return ResultModel(
        type: m1['type'],
        difficulty: m1['difficulty'],
        category: m1['category'],
        question: m1['question'],
        wAnswer: m1['incorrect_answers'],
        cAnswer: m1['correct_answer']);
  }
}

class AllDataModel{

  List? optionList = [];
  String? cAns,question;

  AllDataModel({this.question,this.cAns,this.optionList
  });
}
