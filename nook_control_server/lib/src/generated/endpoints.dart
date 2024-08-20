/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/company_endpoint.dart' as _i2;
import '../endpoints/example_endpoint.dart' as _i3;
import '../endpoints/resource_test_endpoint.dart' as _i4;
import '../endpoints/search_tv_show_endpoint.dart' as _i5;
import '../endpoints/tmdb_movie_endpoint.dart' as _i6;
import '../endpoints/user_endpoit.dart' as _i7;
import 'package:nook_control_server/src/generated/company.dart' as _i8;
import 'package:nook_control_server/src/generated/user.dart' as _i9;
import 'package:nook_control_server/src/generated/tmdb/search/search_query_single_tmdb.dart'
    as _i10;
import 'package:serverpod_auth_server/serverpod_auth_server.dart' as _i11;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'company': _i2.CompanyEndpoint()
        ..initialize(
          server,
          'company',
          null,
        ),
      'example': _i3.ExampleEndpoint()
        ..initialize(
          server,
          'example',
          null,
        ),
      'resourceTest': _i4.ResourceTestEndpoint()
        ..initialize(
          server,
          'resourceTest',
          null,
        ),
      'tvShows': _i5.TvShowsEndpoint()
        ..initialize(
          server,
          'tvShows',
          null,
        ),
      'tmdbMovie': _i6.TmdbMovieEndpoint()
        ..initialize(
          server,
          'tmdbMovie',
          null,
        ),
      'userEndpoit': _i7.UserEndpoit()
        ..initialize(
          server,
          'userEndpoit',
          null,
        ),
    };
    connectors['company'] = _i1.EndpointConnector(
      name: 'company',
      endpoint: endpoints['company']!,
      methodConnectors: {
        'isLegit': _i1.MethodConnector(
          name: 'isLegit',
          params: {
            'company': _i1.ParameterDescription(
              name: 'company',
              type: _i1.getType<_i8.Company>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['company'] as _i2.CompanyEndpoint).isLegit(
            session,
            params['company'],
          ),
        )
      },
    );
    connectors['example'] = _i1.EndpointConnector(
      name: 'example',
      endpoint: endpoints['example']!,
      methodConnectors: {
        'hello': _i1.MethodConnector(
          name: 'hello',
          params: {
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['example'] as _i3.ExampleEndpoint).hello(
            session,
            params['name'],
          ),
        )
      },
    );
    connectors['resourceTest'] = _i1.EndpointConnector(
      name: 'resourceTest',
      endpoint: endpoints['resourceTest']!,
      methodConnectors: {
        'register': _i1.MethodConnector(
          name: 'register',
          params: {
            'user': _i1.ParameterDescription(
              name: 'user',
              type: _i1.getType<_i9.User>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['resourceTest'] as _i4.ResourceTestEndpoint).register(
            session,
            params['user'],
          ),
        )
      },
    );
    connectors['tvShows'] = _i1.EndpointConnector(
      name: 'tvShows',
      endpoint: endpoints['tvShows']!,
      methodConnectors: {
        'searchShows': _i1.MethodConnector(
          name: 'searchShows',
          params: {
            'query': _i1.ParameterDescription(
              name: 'query',
              type: _i1.getType<_i10.SearchQuerySingleTMDB>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['tvShows'] as _i5.TvShowsEndpoint).searchShows(
            session,
            params['query'],
          ),
        )
      },
    );
    connectors['tmdbMovie'] = _i1.EndpointConnector(
      name: 'tmdbMovie',
      endpoint: endpoints['tmdbMovie']!,
      methodConnectors: {
        'searchMovie': _i1.MethodConnector(
          name: 'searchMovie',
          params: {
            'query': _i1.ParameterDescription(
              name: 'query',
              type: _i1.getType<_i10.SearchQuerySingleTMDB>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['tmdbMovie'] as _i6.TmdbMovieEndpoint).searchMovie(
            session,
            params['query'],
          ),
        ),
        'getMovieDetails': _i1.MethodConnector(
          name: 'getMovieDetails',
          params: {
            'movieId': _i1.ParameterDescription(
              name: 'movieId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['tmdbMovie'] as _i6.TmdbMovieEndpoint).getMovieDetails(
            session,
            params['movieId'],
          ),
        ),
      },
    );
    connectors['userEndpoit'] = _i1.EndpointConnector(
      name: 'userEndpoit',
      endpoint: endpoints['userEndpoit']!,
      methodConnectors: {
        'register': _i1.MethodConnector(
          name: 'register',
          params: {
            'user': _i1.ParameterDescription(
              name: 'user',
              type: _i1.getType<_i9.User>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['userEndpoit'] as _i7.UserEndpoit).register(
            session,
            params['user'],
          ),
        ),
        'login': _i1.MethodConnector(
          name: 'login',
          params: {
            'user': _i1.ParameterDescription(
              name: 'user',
              type: _i1.getType<_i9.User>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['userEndpoit'] as _i7.UserEndpoit).login(
            session,
            params['user'],
          ),
        ),
      },
    );
    modules['serverpod_auth'] = _i11.Endpoints()..initializeEndpoints(server);
  }
}
