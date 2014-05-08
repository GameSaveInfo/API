import 'dart:io';

import 'package:rest_dart/rest_dart.dart';

import 'package:gsi_api/resources/resources.dart';

void main() {
  RestServer rest = new RestServer();
  
  rest.AddDefaultContentType(new ContentType("application", "json", charset: "utf-8"));
  
  RestResource resource = new RootResource();
  
  rest.AddResource(resource);
  
  rest.Start();
  
}
