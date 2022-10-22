import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../respositories/repositories.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository;
  AuthBloc({required AuthRepository authRepository})
      : _authRepository = authRepository,
        super(AuthInitial()) {
    on<AuthEvent>((event, emit) {});
  }
}
