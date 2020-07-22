load("//:oppia_android_test.bzl", "oppia_android_test")

def utility_test(name, src, test_class):

    oppia_android_test(
        name = name,
        srcs = src,
        resource_files = native.glob(["src/main/res/**/*.xml"]),
        src_library_name = "utility_test_lib",
        custom_package = "org.oppia.util",
        test_class = test_class,
        test_manifest = "src/test/TestManifest.xml",
    )