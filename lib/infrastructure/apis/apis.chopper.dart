// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apis.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$HomeeService extends HomeeService {
  _$HomeeService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = HomeeService;

  @override
  Future<Response<BuiltList<Category>>> categories(
    String? apiKey,
    String? platinaApiKey,
  ) {
    final Uri $url = Uri.parse('/api/categories/');
    final Map<String, String> $headers = {
      if (apiKey != null) 'Authorization': apiKey,
      if (platinaApiKey != null) 'X-PLATINA-API-KEY': platinaApiKey,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<BuiltList<Category>, Category>($request);
  }

  @override
  Future<Response<BuiltList<MenuResponse>>> menu(
    String? apiKey,
    String? platinaApiKey,
  ) {
    final Uri $url = Uri.parse('/api/menu/');
    final Map<String, String> $headers = {
      if (apiKey != null) 'Authorization': apiKey,
      if (platinaApiKey != null) 'X-PLATINA-API-KEY': platinaApiKey,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<BuiltList<MenuResponse>, MenuResponse>($request);
  }

  @override
  Future<Response<BuiltList<PagesResponse>>> pages(
    String? apiKey,
    String? platinaApiKey,
  ) {
    final Uri $url = Uri.parse('/api/pages/');
    final Map<String, String> $headers = {
      if (apiKey != null) 'Authorization': apiKey,
      if (platinaApiKey != null) 'X-PLATINA-API-KEY': platinaApiKey,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<BuiltList<PagesResponse>, PagesResponse>($request);
  }

  @override
  Future<Response<Articless>> articles(
    String? apiKey,
    String? platinaApiKey,
  ) {
    final Uri $url = Uri.parse('/api/articles/');
    final Map<String, String> $headers = {
      if (apiKey != null) 'Authorization': apiKey,
      if (platinaApiKey != null) 'X-PLATINA-API-KEY': platinaApiKey,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<Articless, Articless>($request);
  }

  @override
  Future<Response<Articless>> popularPosts(
    String? apiKey,
    String? platinaApiKey,
  ) {
    final Uri $url = Uri.parse('/api/popular-posts/');
    final Map<String, String> $headers = {
      if (apiKey != null) 'Authorization': apiKey,
      if (platinaApiKey != null) 'X-PLATINA-API-KEY': platinaApiKey,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<Articless, Articless>($request);
  }

  @override
  Future<Response<Articless>> postRedirect(
    String? shortUrl,
    String? apiKey,
    String? platinaApiKey,
  ) {
    final Uri $url = Uri.parse('/api/post/redirect/${shortUrl}');
    final Map<String, String> $headers = {
      if (apiKey != null) 'Authorization': apiKey,
      if (platinaApiKey != null) 'X-PLATINA-API-KEY': platinaApiKey,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<Articless, Articless>($request);
  }

  @override
  Future<Response<Articless>> posts(
    String? apiKey,
    String? platinaApiKey,
  ) {
    final Uri $url = Uri.parse('/api/posts/');
    final Map<String, String> $headers = {
      if (apiKey != null) 'Authorization': apiKey,
      if (platinaApiKey != null) 'X-PLATINA-API-KEY': platinaApiKey,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<Articless, Articless>($request);
  }

  @override
  Future<Response<Articless>> authorOffered(
    String? apiKey,
    String? platinaApiKey,
  ) {
    final Uri $url = Uri.parse('/api/posts/author-offered/');
    final Map<String, String> $headers = {
      if (apiKey != null) 'Authorization': apiKey,
      if (platinaApiKey != null) 'X-PLATINA-API-KEY': platinaApiKey,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<Articless, Articless>($request);
  }

  @override
  Future<Response<BuiltList<PostsResponse>>> business(
    String? apiKey,
    String? platinaApiKey,
  ) {
    final Uri $url = Uri.parse('/api/posts/business/');
    final Map<String, String> $headers = {
      if (apiKey != null) 'Authorization': apiKey,
      if (platinaApiKey != null) 'X-PLATINA-API-KEY': platinaApiKey,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<BuiltList<PostsResponse>, PostsResponse>($request);
  }

  @override
  Future<Response<Articless>> category(
    String? apiKey,
    String? platinaApiKey,
    String? category,
  ) {
    final Uri $url = Uri.parse('/api/posts/category/${category}');
    final Map<String, String> $headers = {
      if (apiKey != null) 'Authorization': apiKey,
      if (platinaApiKey != null) 'X-PLATINA-API-KEY': platinaApiKey,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<Articless, Articless>($request);
  }

  @override
  Future<Response<Articless>> gallery(
    String? apiKey,
    String? platinaApiKey,
  ) {
    final Uri $url = Uri.parse('/api/posts/gallery/');
    final Map<String, String> $headers = {
      if (apiKey != null) 'Authorization': apiKey,
      if (platinaApiKey != null) 'X-PLATINA-API-KEY': platinaApiKey,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<Articless, Articless>($request);
  }

  @override
  Future<Response<Articless>> isPinned(
    String? apiKey,
    String? platinaApiKey,
  ) {
    final Uri $url = Uri.parse('/api/posts/is-pinned');
    final Map<String, String> $headers = {
      if (apiKey != null) 'Authorization': apiKey,
      if (platinaApiKey != null) 'X-PLATINA-API-KEY': platinaApiKey,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<Articless, Articless>($request);
  }

  @override
  Future<Response<BuiltList<PostsResponse>>> tagSlugList(
    String? apiKey,
    String? platinaApiKey,
    String? tagSlug,
  ) {
    final Uri $url = Uri.parse('/api/posts/list/tag=${tagSlug}');
    final Map<String, String> $headers = {
      if (apiKey != null) 'Authorization': apiKey,
      if (platinaApiKey != null) 'X-PLATINA-API-KEY': platinaApiKey,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<BuiltList<PostsResponse>, PostsResponse>($request);
  }

  @override
  Future<Response<PostsResponse>> subjectSlug(
    String? apiKey,
    String? platinaApiKey,
    String? subjectSlug,
  ) {
    final Uri $url = Uri.parse('/api/posts/subject/${subjectSlug}');
    final Map<String, String> $headers = {
      if (apiKey != null) 'Authorization': apiKey,
      if (platinaApiKey != null) 'X-PLATINA-API-KEY': platinaApiKey,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<PostsResponse, PostsResponse>($request);
  }

  @override
  Future<Response<Articless>> youtube(
    String? apiKey,
    String? platinaApiKey,
  ) {
    final Uri $url = Uri.parse('/api/posts/youtube/');
    final Map<String, String> $headers = {
      if (apiKey != null) 'Authorization': apiKey,
      if (platinaApiKey != null) 'X-PLATINA-API-KEY': platinaApiKey,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<Articless, Articless>($request);
  }

  @override
  Future<Response<SearchModel>> search(
    String? platinaApiKey,
    String? query,
  ) {
    final Uri $url = Uri.parse('/api/search/');
    final Map<String, dynamic> $params = <String, dynamic>{'q': query};
    final Map<String, String> $headers = {
      if (platinaApiKey != null) 'X-PLATINA-API-KEY': platinaApiKey,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<SearchModel, SearchModel>($request);
  }
}

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$AuthService extends AuthService {
  _$AuthService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = AuthService;

  @override
  Future<Response<SuccessResponseModel>> verify(
    String phoneNumber,
    String code,
  ) {
    final Uri $url = Uri.parse('/api/verify/${phoneNumber}/${code}/');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<SuccessResponseModel, SuccessResponseModel>($request);
  }

  @override
  Future<Response<SignUpResponseModel>> signUpBarber(BarberSignUpModel body) {
    final Uri $url = Uri.parse('/api/barbers/register/');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<SignUpResponseModel, SignUpResponseModel>($request);
  }
}

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$ImageUploadService extends ImageUploadService {
  _$ImageUploadService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ImageUploadService;

  @override
  Future<Response<ImageUploadResponseModel>> imageUpload(
    String objectType,
    String file,
  ) {
    final Uri $url = Uri.parse('/api/media/upload-file/');
    final Map<String, String> $headers = {
      'object-type': objectType,
    };
    final List<PartValue> $parts = <PartValue>[
      PartValueFile<String>(
        'file',
        file,
      )
    ];
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      parts: $parts,
      multipart: true,
      headers: $headers,
    );
    return client
        .send<ImageUploadResponseModel, ImageUploadResponseModel>($request);
  }
}
