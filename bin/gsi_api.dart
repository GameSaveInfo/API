import 'dart:io';

import 'package:rest_server/rest_server.dart';

import 'package:gsi_api/resources/resources.dart';

void main() {
  RestServer rest = new RestServer();
  
  rest.AddDefaultContentType(new ContentType("application", "json", charset: "utf-8"));
  
  RestResource resource = new RootResource();
  
  rest.AddResource(resource);
  
  rest.AddResource(new GamesResource());
  
  rest.Start();
  
}
