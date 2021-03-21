// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _ApiService implements ApiService {
  _ApiService(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  @override
  Future<Categories> getCategories() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Categories>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, 'categories.php',
                    data: _data, queryParameters: queryParameters)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Categories.fromJson(_result.data!);
    return value;
  }

  @override
  Future<MealDetailListResponse> getMealById(id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'i': id};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<MealDetailListResponse>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, 'lookup.php',
                    data: _data, queryParameters: queryParameters)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = MealDetailListResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<MealDetailListResponse> searchMealByName(search) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r's': search};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<MealDetailListResponse>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, 'search.php',
                    data: _data, queryParameters: queryParameters)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = MealDetailListResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CategoryListResponse> getCategoryList(category) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'c': category};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CategoryListResponse>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, 'list.php',
                    data: _data, queryParameters: queryParameters)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CategoryListResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<AreaListReponse> getAreaList(area) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'a': area};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AreaListReponse>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, 'list.php',
                    data: _data, queryParameters: queryParameters)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = AreaListReponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<IngredientsListResponse> getIngredientsList(ingredients) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'i': ingredients};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<IngredientsListResponse>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, 'list.php',
                    data: _data, queryParameters: queryParameters)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = IngredientsListResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<MealListResponse> filterByCategory(category) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'c': category};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<MealListResponse>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, 'filter.php',
                    data: _data, queryParameters: queryParameters)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = MealListResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<MealListResponse> filterByArea(area) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'a': area};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<MealListResponse>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, 'filter.php',
                    data: _data, queryParameters: queryParameters)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = MealListResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<MealListResponse> filterByIngredients(ingredients) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'i': ingredients};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<MealListResponse>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, 'filter.php',
                    data: _data, queryParameters: queryParameters)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = MealListResponse.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
