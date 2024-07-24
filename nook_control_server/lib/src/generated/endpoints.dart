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
import '../endpoints/user_endpoit.dart' as _i5;
import 'package:nook_control_server/src/generated/company.dart' as _i6;
import 'package:nook_control_server/src/generated/user.dart' as _i7;

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
      'userEndpoit': _i5.UserEndpoit()
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
              type: _i1.getType<_i6.Company>(),
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
              type: _i1.getType<_i7.User>(),
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
    connectors['userEndpoit'] = _i1.EndpointConnector(
      name: 'userEndpoit',
      endpoint: endpoints['userEndpoit']!,
      methodConnectors: {
        'register': _i1.MethodConnector(
          name: 'register',
          params: {
            'user': _i1.ParameterDescription(
              name: 'user',
              type: _i1.getType<_i7.User>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['userEndpoit'] as _i5.UserEndpoit).register(
            session,
            params['user'],
          ),
        ),
        'login': _i1.MethodConnector(
          name: 'login',
          params: {
            'user': _i1.ParameterDescription(
              name: 'user',
              type: _i1.getType<_i7.User>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['userEndpoit'] as _i5.UserEndpoit).login(
            session,
            params['user'],
          ),
        ),
      },
    );
  }
}
