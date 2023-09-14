part of 'home_bloc.dart';

@immutable
@freezed
class HomeState with _$HomeState {
  const HomeState._();

  const factory HomeState({
    @Default(null) BuiltList<PagesResponse>? pagesList,
    @Default(null) Articless? popularPostList,
    @Default(null) Articless? articlesList,
    @Default(null) BuiltList<Category>? categoriesList,
    @Default(null) BuiltList<MenuResponse>? menu,
    @Default(null) Articless? postRedirect,
    @Default(null) Articless? postsList,
    @Default(null) Articless? authorOfferedList,
    @Default(null) Articless? governmentSalesList,
    @Default(null) BuiltList<PostsResponse>? businessList,
    @Default(null) Articless? categoryList,
    @Default(null) Articless? galleryList,
    @Default(null) Articless? isPinnedList,
    @Default(null) BuiltList<PostsResponse>? tagSlugList,
    @Default(null) PostsResponse? subjectSlug,
    @Default(null) Articless? youtube,
    @Default(null) SearchModel? search,
    @Default(null) int? selectMenuItem,
  }) = _HomeState;
}
