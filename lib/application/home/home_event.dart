part of 'home_bloc.dart';

@freezed
abstract class HomeEvent with _$HomeEvent {
  const factory HomeEvent.pages() = _Pages;

  const factory HomeEvent.governmentSalesList() = _GovernmentSalesList;

  const factory HomeEvent.popularPosts() = _PopularPosts;

  const factory HomeEvent.articles() = _Articles;

  const factory HomeEvent.categories() = _Categories;

  const factory HomeEvent.menu() = _Menu;

  const factory HomeEvent.changeSelectedItemMenu(int index) =
      _ChangeSelectedItemMenu;

  const factory HomeEvent.postRedirect({required String shortUrl}) =
      _PostRedirect;

  const factory HomeEvent.posts() = _Posts;

  const factory HomeEvent.authorOffered() = _AuthorOffered;

  const factory HomeEvent.business() = _Business;

  const factory HomeEvent.gallery() = _Gallery;

  const factory HomeEvent.isPinned() = _IsPinned;

  const factory HomeEvent.tagSlugList({required String tagSlug}) = _TagSlugList;

  const factory HomeEvent.subjectSlug({required String subjectSlug}) =
      _SubjectSlug;

  const factory HomeEvent.youtube() = _Youtube;

  const factory HomeEvent.search(String query) = _Search;

  const factory HomeEvent.category({required String category}) = _Category;
}
