abstract class AuthenticationState {}

final class AuthenticationInitial extends AuthenticationState {}

final class AuthenticationLoading extends AuthenticationState {}

final class AuthenticationFailure extends AuthenticationState {
  final String errorMessage;
  AuthenticationFailure({required this.errorMessage});
}

final class AuthenticationInsertNameSuccess extends AuthenticationState {}
