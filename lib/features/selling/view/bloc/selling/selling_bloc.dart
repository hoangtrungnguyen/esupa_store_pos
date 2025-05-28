import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/domain.dart';

part 'selling_bloc.freezed.dart';
part 'selling_bloc.g.dart';
part 'selling_event.dart';
part 'selling_state.dart';

class SellingBloc extends Bloc<SellingEvent, SellingState> {
  SellingBloc.initial({required User user, required Session session})
    : super(SellingState(session: session, user: user));
}
