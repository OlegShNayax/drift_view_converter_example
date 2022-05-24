// ignore_for_file: directives_ordering
import 'package:build_runner_core/build_runner_core.dart' as _i1;
import 'package:drift_dev/integrations/build.dart' as _i2;
import 'package:floor_generator/builder.dart' as _i3;
import 'package:json_serializable/builder.dart' as _i4;
import 'package:retrofit_generator/retrofit_generator.dart' as _i5;
import 'package:source_gen/builder.dart' as _i6;
import 'package:build_modules/builders.dart' as _i7;
import 'package:build_web_compilers/builders.dart' as _i8;
import 'package:build_config/build_config.dart' as _i9;
import 'package:build/build.dart' as _i10;
import 'dart:isolate' as _i11;
import 'package:build_runner/build_runner.dart' as _i12;
import 'dart:io' as _i13;

final _builders = <_i1.BuilderApplication>[
  _i1.apply(r'drift_dev:preparing_builder', [_i2.preparingBuilder],
      _i1.toDependentsOf(r'drift_dev'),
      hideOutput: true, appliesBuilders: const [r'drift_dev:cleanup']),
  _i1.apply(r'drift_dev:not_shared', [_i2.moorBuilderNotShared],
      _i1.toNoneByDefault(),
      hideOutput: false),
  _i1.apply(r'drift_dev:drift_dev', [_i2.moorBuilder],
      _i1.toDependentsOf(r'drift_dev'),
      hideOutput: true,
      appliesBuilders: const [r'source_gen:combining_builder']),
  _i1.apply(r'floor_generator:floor_generator', [_i3.floorBuilder],
      _i1.toDependentsOf(r'floor_generator'),
      hideOutput: true,
      appliesBuilders: const [r'source_gen:combining_builder']),
  _i1.apply(r'json_serializable:json_serializable', [_i4.jsonSerializable],
      _i1.toDependentsOf(r'json_serializable'),
      hideOutput: true,
      appliesBuilders: const [r'source_gen:combining_builder']),
  _i1.apply(r'retrofit_generator:retrofit', [_i5.retrofitBuilder],
      _i1.toDependentsOf(r'retrofit_generator'),
      hideOutput: true,
      appliesBuilders: const [r'source_gen:combining_builder']),
  _i1.apply(r'source_gen:combining_builder', [_i6.combiningBuilder],
      _i1.toNoneByDefault(),
      hideOutput: false, appliesBuilders: const [r'source_gen:part_cleanup']),
  _i1.apply(r'build_modules:module_library', [_i7.moduleLibraryBuilder],
      _i1.toAllPackages(),
      isOptional: true,
      hideOutput: true,
      appliesBuilders: const [r'build_modules:module_cleanup']),
  _i1.apply(
      r'build_web_compilers:dart2js_modules',
      [
        _i8.dart2jsMetaModuleBuilder,
        _i8.dart2jsMetaModuleCleanBuilder,
        _i8.dart2jsModuleBuilder
      ],
      _i1.toNoneByDefault(),
      isOptional: true,
      hideOutput: true,
      appliesBuilders: const [r'build_modules:module_cleanup']),
  _i1.apply(
      r'build_web_compilers:ddc_modules',
      [
        _i8.ddcMetaModuleBuilder,
        _i8.ddcMetaModuleCleanBuilder,
        _i8.ddcModuleBuilder
      ],
      _i1.toNoneByDefault(),
      isOptional: true,
      hideOutput: true,
      appliesBuilders: const [r'build_modules:module_cleanup']),
  _i1.apply(
      r'build_web_compilers:ddc',
      [
        _i8.ddcKernelBuilderUnsound,
        _i8.ddcBuilderUnsound,
        _i8.ddcKernelBuilderSound,
        _i8.ddcBuilderSound
      ],
      _i1.toAllPackages(),
      isOptional: true,
      hideOutput: true,
      appliesBuilders: const [
        r'build_web_compilers:ddc_modules',
        r'build_web_compilers:dart2js_modules',
        r'build_web_compilers:dart_source_cleanup'
      ]),
  _i1.apply(
      r'build_web_compilers:sdk_js',
      [_i8.sdkJsCompileUnsound, _i8.sdkJsCompileSound, _i8.sdkJsCopyRequirejs],
      _i1.toNoneByDefault(),
      isOptional: true,
      hideOutput: true),
  _i1.apply(r'build_web_compilers:entrypoint', [_i8.webEntrypointBuilder],
      _i1.toRoot(),
      hideOutput: true,
      defaultGenerateFor: const _i9.InputSet(include: [
        r'web/**',
        r'test/**.dart.browser_test.dart',
        r'example/**',
        r'benchmark/**'
      ], exclude: [
        r'test/**.node_test.dart',
        r'test/**.vm_test.dart'
      ]),
      defaultOptions: const _i10.BuilderOptions({
        r'dart2js_args': [r'--minify']
      }),
      defaultDevOptions: const _i10.BuilderOptions({
        r'dart2js_args': [r'--enable-asserts']
      }),
      defaultReleaseOptions:
          const _i10.BuilderOptions({r'compiler': r'dart2js'}),
      appliesBuilders: const [
        r'build_web_compilers:dart2js_archive_extractor'
      ]),
  _i1.applyPostProcess(r'build_modules:module_cleanup', _i7.moduleCleanup),
  _i1.applyPostProcess(r'build_web_compilers:dart2js_archive_extractor',
      _i8.dart2jsArchiveExtractor,
      defaultReleaseOptions:
          const _i10.BuilderOptions({r'filter_outputs': true})),
  _i1.applyPostProcess(
      r'build_web_compilers:dart_source_cleanup', _i8.dartSourceCleanup,
      defaultReleaseOptions: const _i10.BuilderOptions({r'enabled': true})),
  _i1.applyPostProcess(r'source_gen:part_cleanup', _i6.partCleanup),
  _i1.applyPostProcess(r'drift_dev:cleanup', _i2.moorCleanup)
];
void main(List<String> args, [_i11.SendPort? sendPort]) async {
  var result = await _i12.run(args, _builders);
  sendPort?.send(result);
  _i13.exitCode = result;
}
