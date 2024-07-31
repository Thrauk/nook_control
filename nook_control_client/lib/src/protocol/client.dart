/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dart:async' as _i2;
import 'package:nook_control_client/src/protocol/company.dart' as _i3;
import 'package:nook_control_client/src/protocol/user.dart' as _i4;
import 'package:nook_control_client/src/protocol/auth_response.dart' as _i5;
import 'package:serverpod_auth_client/serverpod_auth_client.dart' as _i6;
import 'protocol.dart' as _i7;

/// {@category Endpoint}
class EndpointCompany extends _i1.EndpointRef {
  EndpointCompany(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'company';

  _i2.Future<bool> isLegit(_i3.Company company) =>
      caller.callServerEndpoint<bool>(
        'company',
        'isLegit',
        {'company': company},
      );
}

/// {@category Endpoint}
class EndpointExample extends _i1.EndpointRef {
  EndpointExample(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'example';

  _i2.Future<String> hello(String name) => caller.callServerEndpoint<String>(
        'example',
        'hello',
        {'name': name},
      );
}

/// {@category Endpoint}
class EndpointResourceTest extends _i1.EndpointRef {
  EndpointResourceTest(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'resourceTest';

  _i2.Future<bool> register(_i4.User user) => caller.callServerEndpoint<bool>(
        'resourceTest',
        'register',
        {'user': user},
      );
}

/// {@category Endpoint}
class EndpointUserEndpoit extends _i1.EndpointRef {
  EndpointUserEndpoit(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'userEndpoit';

  _i2.Future<bool> register(_i4.User user) => caller.callServerEndpoint<bool>(
        'userEndpoit',
        'register',
        {'user': user},
      );

  _i2.Future<_i5.AuthResponse> login(_i4.User user) =>
      caller.callServerEndpoint<_i5.AuthResponse>(
        'userEndpoit',
        'login',
        {'user': user},
      );
}

class _Modules {
  _Modules(Client client) {
    auth = _i6.Caller(client);
  }

  late final _i6.Caller auth;
}

class Client extends _i1.ServerpodClient {
  Client(
    String host, {
    dynamic securityContext,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
    Duration? streamingConnectionTimeout,
    Duration? connectionTimeout,
    Function(
      _i1.MethodCallContext,
      Object,
      StackTrace,
    )? onFailedCall,
    Function(_i1.MethodCallContext)? onSucceededCall,
  }) : super(
          host,
          _i7.Protocol(),
          securityContext: securityContext,
          authenticationKeyManager: authenticationKeyManager,
          streamingConnectionTimeout: streamingConnectionTimeout,
          connectionTimeout: connectionTimeout,
          onFailedCall: onFailedCall,
          onSucceededCall: onSucceededCall,
        ) {
    company = EndpointCompany(this);
    example = EndpointExample(this);
    resourceTest = EndpointResourceTest(this);
    userEndpoit = EndpointUserEndpoit(this);
    modules = _Modules(this);
  }

  late final EndpointCompany company;

  late final EndpointExample example;

  late final EndpointResourceTest resourceTest;

  late final EndpointUserEndpoit userEndpoit;

  late final _Modules modules;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'company': company,
        'example': example,
        'resourceTest': resourceTest,
        'userEndpoit': userEndpoit,
      };

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup =>
      {'auth': modules.auth};
}
