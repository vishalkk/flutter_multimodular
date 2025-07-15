import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/domain/usecase/movies_usecase.dart';
import 'package:movies/presentation/bloc/movies_event.dart';
import 'package:movies/presentation/bloc/movies_state.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  final MoviesUseCase _moviesUseCase;

  MoviesBloc(this._moviesUseCase) : super(const MoviesInitial()) {
    on<MoviesGetter>(_onMoviesGetter);
  }
  Future<void> _onMoviesGetter(
      MoviesGetter event, Emitter<MoviesState> emit) async {
    emit(const MoviesLoading());

    final result = await _moviesUseCase.execute("");

    result.fold(
      (failure) => emit(MoviesError(errorMessage: failure.message)),
      (movies) => emit(MoviesSuccess(movies: movies)),
    );
  }
  
}