import 'dart:async';

import 'package:built_collection/built_collection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:platina/infrastructure/models/articles/articless.dart';
import 'package:platina/infrastructure/models/home/home_models.dart';

import '../../infrastructure/models/posts/posts.dart';
import '../../infrastructure/models/search_post_model/search_model.dart';
import '../../infrastructure/repositories/home_repo.dart';
import '../../infrastructure/services/log_service.dart';

part 'home_bloc.freezed.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepository _homeRepository;

  HomeBloc(this._homeRepository) : super(const _HomeState()) {
    on<_Pages>(_pagesHandler);
    on<_PopularPosts>(_popularPostsHandler);
    on<_Articles>(_articlesHandler);
    on<_Categories>(_categoriesHandler);
    on<_Menu>(_menuHandler);
    on<_PostRedirect>(_postRedirectHandler);
    on<_Posts>(_postsHandler);
    on<_AuthorOffered>(_authorOfferedHandler);
    on<_GovernmentSalesList>(_governmentSalesList);
    on<_Business>(_businessHandler);
    on<_Category>(_categoryHandler);
    on<_Gallery>(_galleryHandler);
    on<_IsPinned>(_isPinnedHandler);
    on<_TagSlugList>(_tagSlugListHandler);
    on<_SubjectSlug>(_subjectSlugHandler);
    on<_Youtube>(_youtubeHandler);
    on<_Search>(_searchHandler);
    on<_ChangeSelectedItemMenu>(_changeSelectedItemMenu);
  }

  FutureOr<void> _pagesHandler(
    _Pages event,
    Emitter<HomeState> emit,
  ) async {
    EasyLoading.show();
    final res = await _homeRepository.pages();
    res.fold((error) {
      EasyLoading.showError(error.message);
      LogService.e(" ----> error on _pagesHandler: $error");
    }, (data) {
      emit(state.copyWith(pagesList: data));
    });
    EasyLoading.dismiss();
  }

  FutureOr<void> _popularPostsHandler(
    _PopularPosts event,
    Emitter<HomeState> emit,
  ) async {
    EasyLoading.show();
    final res = await _homeRepository.popularPosts();
    res.fold((error) {
      EasyLoading.showError(error.message);
      LogService.e(" ----> error on _popularPostsHandler: $error");
    }, (data) {
      emit(state.copyWith(popularPostList: data));
    });
    EasyLoading.dismiss();
  }

  FutureOr<void> _articlesHandler(
    _Articles event,
    Emitter<HomeState> emit,
  ) async {
    EasyLoading.show();
    final res = await _homeRepository.articles();
    res.fold((error) {
      EasyLoading.showError(error.message);
      LogService.e(" ----> error on _articlesHandler: $error");
    }, (data) {
      emit(state.copyWith(articlesList: data));
    });
    EasyLoading.dismiss();
  }

  FutureOr<void> _categoriesHandler(
    _Categories event,
    Emitter<HomeState> emit,
  ) async {
    EasyLoading.show();
    final res = await _homeRepository.categories();
    res.fold((error) {
      EasyLoading.showError(error.message);
      LogService.e(" ----> error on _categoriesHandler: $error");
    }, (data) {
      emit(state.copyWith(categoriesList: data));
    });
    EasyLoading.dismiss();
  }

  FutureOr<void> _menuHandler(
    _Menu event,
    Emitter<HomeState> emit,
  ) async {
    EasyLoading.show();
    final res = await _homeRepository.menu();
    res.fold((error) {
      EasyLoading.showError(error.message);
      LogService.e(" ----> error on _menuHandler: $error");
    }, (data) {
      emit(state.copyWith(menu: data));
    });
    EasyLoading.dismiss();
  }

  FutureOr<void> _postRedirectHandler(
    _PostRedirect event,
    Emitter<HomeState> emit,
  ) async {
    EasyLoading.show();
    final res = await _homeRepository.postRedirect(shortUrl: event.shortUrl);
    res.fold((error) {
      EasyLoading.showError(error.message);
      LogService.e(" ----> error on _postRedirectHandler: $error");
    }, (data) {
      emit(state.copyWith(postRedirect: data));
    });
    EasyLoading.dismiss();
  }

  FutureOr<void> _postsHandler(
    _Posts event,
    Emitter<HomeState> emit,
  ) async {
    EasyLoading.show();
    final res = await _homeRepository.posts();
    res.fold((error) {
      EasyLoading.showError(error.message);
      LogService.e(" ----> error on _postsHandler: $error");
    }, (data) {
      emit(state.copyWith(postsList: data));
    });
    EasyLoading.dismiss();
  }

  FutureOr<void> _authorOfferedHandler(
    _AuthorOffered event,
    Emitter<HomeState> emit,
  ) async {
    EasyLoading.show();
    final res = await _homeRepository.authorOffered();
    res.fold((error) {
      EasyLoading.showError(error.message);
      LogService.e(" ----> error on _authorOfferedHandler: $error");
    }, (data) {
      emit(state.copyWith(authorOfferedList: data));
    });
    EasyLoading.dismiss();
  }

  FutureOr<void> _businessHandler(
    _Business event,
    Emitter<HomeState> emit,
  ) async {
    EasyLoading.show();
    final res = await _homeRepository.business();
    res.fold((error) {
      EasyLoading.showError(error.message);
      LogService.e(" ----> error on _businessHandler: $error");
    }, (data) {
      emit(state.copyWith(businessList: data));
    });
    EasyLoading.dismiss();
  }

  FutureOr<void> _categoryHandler(
    _Category event,
    Emitter<HomeState> emit,
  ) async {
    EasyLoading.show();
    final res = await _homeRepository.category(category: event.category);
    res.fold((error) {
      EasyLoading.showError(error.message);
      LogService.e(" ----> error on _categoryHandler: $error");
    }, (data) {
      emit(state.copyWith(categoryList: data));
    });
    EasyLoading.dismiss();
  }

  FutureOr<void> _changeSelectedItemMenu(
    _ChangeSelectedItemMenu event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(selectMenuItem: event.index));
  }

  FutureOr<void> _governmentSalesList(
    _GovernmentSalesList event,
    Emitter<HomeState> emit,
  ) async {
    EasyLoading.show();
    final res = await _homeRepository.category(category: "davlat-xaridlari");
    res.fold((error) {
      EasyLoading.showError(error.message);
      LogService.e(" ----> error on _categoryHandler: $error");
    }, (data) {
      emit(state.copyWith(governmentSalesList: data));
    });
    EasyLoading.dismiss();
  }

  FutureOr<void> _galleryHandler(
    _Gallery event,
    Emitter<HomeState> emit,
  ) async {
    EasyLoading.show();
    final res = await _homeRepository.gallery();
    res.fold((error) {
      EasyLoading.showError(error.message);
      LogService.e(" ----> error on _galleryHandler: $error");
    }, (data) {
      emit(state.copyWith(galleryList: data));
    });
    EasyLoading.dismiss();
  }

  FutureOr<void> _isPinnedHandler(
      _IsPinned event, Emitter<HomeState> emit) async {
    EasyLoading.show();
    final res = await _homeRepository.isPinned();
    res.fold((error) {
      EasyLoading.showError(error.message);
      LogService.e(" ----> error on _isPinnedHandler: $error");
    }, (data) {
      emit(state.copyWith(isPinnedList: data));
    });
    EasyLoading.dismiss();
  }

  FutureOr<void> _tagSlugListHandler(
      _TagSlugList event, Emitter<HomeState> emit) async {
    EasyLoading.show();
    final res = await _homeRepository.tagSlugList(tagSlug: event.tagSlug);
    res.fold((error) {
      EasyLoading.showError(error.message);
      LogService.e(" ----> error on _tagSlugListHandler: $error");
    }, (data) {
      emit(state.copyWith(tagSlugList: data));
    });
    EasyLoading.dismiss();
  }

  FutureOr<void> _subjectSlugHandler(
      _SubjectSlug event, Emitter<HomeState> emit) async {
    EasyLoading.show();
    final res =
        await _homeRepository.subjectSlug(subjectSlug: event.subjectSlug);
    res.fold((error) {
      EasyLoading.showError(error.message);
      LogService.e(" ----> error on _subjectSlugHandler: $error");
    }, (data) {
      emit(state.copyWith(subjectSlug: data));
    });
    EasyLoading.dismiss();
  }

  FutureOr<void> _youtubeHandler(
    _Youtube event,
    Emitter<HomeState> emit,
  ) async {
    EasyLoading.show();
    final res = await _homeRepository.youtube();
    res.fold((error) {
      EasyLoading.showError(error.message);
      LogService.e(" ----> error on _youtubeHandler: $error");
    }, (data) {
      emit(state.copyWith(youtube: data));
    });
    EasyLoading.dismiss();
  }

  FutureOr<void> _searchHandler(_Search event, Emitter<HomeState> emit) async {
    EasyLoading.show();
    final res = await _homeRepository.search(event.query);
    res.fold((error) {
      EasyLoading.showError(error.message);
      LogService.e(" ----> error on _searchHandler: $error");
    }, (data) {
      emit(state.copyWith(search: data));
    });
    EasyLoading.dismiss();
  }
}
