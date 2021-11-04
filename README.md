# Update BUILD files

The build files in ex1/pkg/stackdriver and ex2/pkg/stackdriver were generated
via:

```
bazelisk run :gazelle
```

Note the difference between the two generated files

```
diff ex{1,2}/pkg/stackdriver/BUILD.bazel
```

```
<     deps = ["@com_google_cloud_go//logging:go_default_library"],
---
>     deps = ["@com_google_cloud_go_logging//:go_default_library"],
```

The only difference between the two directories is the prefix (ex1 vs ex2) and
the presence of an empty go.mod file in ex2
