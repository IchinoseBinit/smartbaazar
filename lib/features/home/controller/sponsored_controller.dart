import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smartbazar/common/controller/generic_state.dart';
import 'package:smartbazar/features/home/api/sponsored_api.dart';
import 'package:smartbazar/features/home/model/sponsored_model.dart';

final authRepositoryProvider = Provider<SponsoredApi>((ref) {
  return SponsoredApi();
});
final sponsoredController =
    StateNotifierProvider<SponsoredController, GenericState>(
        (ref) => SponsoredController(SponsoredApi()));

class SponsoredController extends StateNotifier<GenericState> {
  final SponsoredApi _sponsoredApi;
  SponsoredController(this._sponsoredApi) : super(InitialState());

  Future<void> sponsored() async {
    state = LoadingState();
    try {
      final sponsoreData = await _sponsoredApi.getsponsoredData();
      state = LoadedState<SponsoredModel>(response: sponsoreData);
    } catch (ex) {
      String errorMessage = ex.toString();
      state = ErrorState(errorMessage);
    }
  }
}
