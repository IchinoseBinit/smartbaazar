
abstract class GenericState {}

class InitialState extends GenericState {}

class LoadingState extends GenericState {}

class LoadedState<T> extends GenericState {
  final T? response;
  LoadedState({
    this.response,
  });

  LoadedState<T> copyWith({
    T? response,
  }) {
    return LoadedState<T>(
      response: response ?? this.response,
    );
  }
}

class ErrorState extends GenericState {
 final String errorMessage;
  ErrorState(this.errorMessage);
}
