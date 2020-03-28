# Want-to-Knows

flutter 학습하며 dart 에 대해 모호한 것 모두 모아놓는 저장소

# Overview

- TDD Clean Architecture

## TDD Clean Architecture

패키지와 클래스 목록이 필요하다. `Generic`, `Test`, `Generator`, `Async` 이해가 부족하다.

- dynamic?
- call back
- async/await : future, asyn { await doSomething() }
- test : setup, matcher
- @required : 필수 파라미터 지정 annotation
- optional parameter : function({type var1, type var2})
- generic : Map<String, dynamic> dynamic이 뭐지?
- inspect : test 결과가 안보여서 테스트 가시성이 떨어지네
- test group : rspec의 describe
- factory 는 뭐지? 명시적으로 매번 인스턴스를 새로 생성한다는 선언
- try on : try catch의 dart 구문
- typedef은 뭐지?
- private method : _를 붙이는 것으로 묵시적으로 private 선언
- part of 'number_trivia_bloc.dart'? 단독 파일을 개발자 편의에 의해 분할할 때 사용
- constant constructor 는 뭐지? 변경되지 않는 객체를 생성할 때 constant 를 줌. 여러번 생성해도 동일한 인스턴스를 돌려준다.
- constant constructor : 어떻게 상속하지?
- yield vs yield* : stream에 yield each
- async vs async* : async 는 future(모든 결과가 나올때 까지 블록), async* 는 stream(결과가 나올때마다 하나씩 돌려줌)
- 생성자 뒤에 붙는 : assert와 메소드 호출 assign
- Either.fold : B fold<B>(B ifLeft(L l), B ifRight(R r)); 
- 여러줄 주석 : 
- if/else multiple returns : 지금으로는 여러곳에서 리턴하거나 변수선언해서 assign 한뒤 리턴하는게 최선
- Theme.of(context) 의미 : 컨텍스트에서 테마 객체 획득
- BlocProvider.of<NumberTriviaBloc>(context) 의미 : NumberTriviaBloc에서 프로바이더 획득? 확실치 않네
- Stdout test