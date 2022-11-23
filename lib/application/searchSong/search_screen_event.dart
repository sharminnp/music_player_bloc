part of 'search_screen_bloc.dart';

@freezed
class SearchScreenEvent with _$SearchScreenEvent {
  const factory SearchScreenEvent.initialSearch() = InitialSearch;
  const factory SearchScreenEvent.searchStudent({required String searchValue}) =
      SearchStudent;
}
