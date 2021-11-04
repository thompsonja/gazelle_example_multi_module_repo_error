"""Bazel dependencies."""

load("@bazel_gazelle//internal:go_repository.bzl", "go_repository")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def dependencies():
    maybe(
        go_repository,
        name = "com_google_cloud_go",
        importpath = "cloud.google.com/go",
        sum = "h1:at8Tk2zUz63cLPR0JPWm5vp77pEZmzxEQBEfRKn1VV8=",
        version = "v0.81.0",
    )

    maybe(
        go_repository,
        name = "com_google_cloud_go_logging",
        importpath = "cloud.google.com/go/logging",
        sum = "h1:kaunpnoEh9L4hu6JUsBa8Y20LBfKnCuDhKUgdZp7oK8=",
        version = "v1.0.0",
    )
