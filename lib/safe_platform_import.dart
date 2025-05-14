library safe_platform_import;

// Conditional export
export 'src/mobile_service.dart'
    if (dart.library.html) 'src/web_service.dart';
