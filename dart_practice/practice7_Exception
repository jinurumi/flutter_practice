void main() {
  ///예외처리 :  프로그램이 진행 중일 때, 의도하였거나 / 의도하지 않은 상황에 대해서
  ///프로그램적으로 오류가 발생했을 때, 대처하는 방법.
  ///try - catch 문
  ///finally 문
  ///on 문
  ///throw / rethrow 문
  
  try {
    ///print(10 ~/ 0);
    /// 몫을 print
   print(1);
    throw Exception('Unknown Error');
  } on UnsupportedError catch (e,s) {
    print('해당연산자는 0으로 나눌 수 없습니다.');
  } on TypeError catch (e,s) {
    print('Null 값이 참조되었다.');
  } catch(error,stack) {
    /// 무슨 error 인지, 어떻게 해서 발생했는지 (stack)
    /// 위 두가지 에러를 제외하고 모든 에러 포함
    print(error);
    print(stack);
    print('모르는 에러가 발생하였습니다.');
    rethrow; /// 잡은 에러를 main함수 밖으로 빠져나가게 함.
  } finally {
    /// 예외가 발생하던, 하지 않던 try- catch 문 이후에 실행하고자 하는 코드
    print('예외처리 문을 지나갔습니다.');
  }
  print('위의 에러 때문에 동작을 하지 않습니다.');

}
