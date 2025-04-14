import 'package:flutter_bloc/flutter_bloc.dart';

class ValueCubit extends Cubit<double> {
  ValueCubit() : super(0.0);

  void setValue(double value) => emit(value);
}
