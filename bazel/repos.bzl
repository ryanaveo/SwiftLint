load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def swiftlint_repos():
    """Fetches SwiftLint repositories"""
    http_archive(
        name = "com_github_jpsim_sourcekitten",
        sha256 = "bb200a812f46caa58814a655140e5088225925179bf587901ac62a897341d179",
        strip_prefix = "SourceKitten-0.33.1",
        url = "https://github.com/jpsim/SourceKitten/archive/refs/tags/0.33.1.tar.gz",
    )

    http_archive(
        name = "swiftlint_com_github_scottrhoyt_swifty_text_table",
        sha256 = "b77d403db9f33686caeb2a12986997fb02a0819e029e669c6b9554617c4fd6ae",
        build_file = "@SwiftLint//bazel:SwiftyTextTable.BUILD",
        strip_prefix = "SwiftyTextTable-0.9.0",
        url = "https://github.com/scottrhoyt/SwiftyTextTable/archive/refs/tags/0.9.0.tar.gz",
    )

    http_archive(
        name = "com_github_apple_swift_syntax",
        sha256 = "0ff70c364a149613a96b8c38b48562fec02659bd549b44c895c6fa9d6ddca58c", # SwiftSyntax sha256
        build_file = "@SwiftLint//bazel:SwiftSyntax.BUILD",
        strip_prefix = "swift-syntax-b46348af9644845b39af1927ded6c84fe0a2749f",
        url = "https://github.com/apple/swift-syntax/archive/b46348af9644845b39af1927ded6c84fe0a2749f.tar.gz",
    )

    http_archive(
        name = "com_github_johnsundell_collectionconcurrencykit",
        sha256 = "9083fe6f8b4f820bfb5ef5c555b31953116f158ec113e94c6406686e78da34aa",
        build_file = "@SwiftLint//bazel:CollectionConcurrencyKit.BUILD",
        strip_prefix = "CollectionConcurrencyKit-0.2.0",
        url = "https://github.com/JohnSundell/CollectionConcurrencyKit/archive/refs/tags/0.2.0.tar.gz",
    )

    # https://github.com/krzyzanowskim/CryptoSwift/pull/989
    http_archive(
        name = "com_github_krzyzanowskim_cryptoswift",
        sha256 = "bbabd3a5c5f50683d6eeb90cf3f7f7184e18065beaec7cccd2059ed3c9bac2ed",
        build_file = "@SwiftLint//bazel:CryptoSwift.BUILD",
        strip_prefix = "CryptoSwift-ea07950124f7e44e88bd783bf29e6691a7866228",
        url = "https://github.com/krzyzanowskim/CryptoSwift/archive/ea07950124f7e44e88bd783bf29e6691a7866228.tar.gz",
    )
