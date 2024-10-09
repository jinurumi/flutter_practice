void main() {
  /// 분기문과 반복문
  /// 분기문 프로그램이 특정한 상황에 일을 할 지/ 하지않고 넘길지
  /// if / else || switch

  /// if 문 / if - else 문
  /// if (조건식) {
  /// 조건식이 참일 경우 실행할 코드
  /// }
  /// else if (조건식2) {
  /// 맨처음 조건식이 거짓이지만, 조건식2 가 참일 경우 실행할 코드
  /// } else {
  /// 조건식이 거짓일 경우 실행할 코드
  /// }
  ///

  bool isTrue= true;

  if (isTrue) {
    print('True');
    //true
  }

  String text = 'Hello';
  if (text == "Hello") {
    print('True');
  }

  /// switch 문
  /// Flutter 3.10 / Dart 3.0 버전 이상부터 변경 된 부분이 조금 있는 문법 중 하나.
  /// 일단 예시에서는 3.10 / 3.0 버전 기준으로 설명. but
  /// 중간중간에 구 버전 (3.7버전 이하) 에서 사용하는 방법도 명시.
  ///
  /// switch (비교 대상) {
  ///   case (조건 식1) :
  ///   case (조건 식2) :
  ///   case (조건 식3) :
  ///   case (조건 식4) :
  ///   case (조건 식5) :
  ///   default :
  /// }
  ///

  int num = 5;

  switch (num) {
    case 1:
      print('Switch $num');
    case 2:
      print('Switch $num');
    case 3:
      print('Switch $num');
    case 4:
      print('Switch $num');
    case 5:
      print('Switch $num');
    case > 100:
      print('big num!! $num');
    default:
      print('Not 1~5');
  }



}
