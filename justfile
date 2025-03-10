build:
  bazel build //...

fix:
  bazel run //:buildifier

clean:
  rm -rf node_modules
  bazel clean --expunge

release version tag="next":
  #!/bin/bash
  set -e
  git tag {{version}}
  hack/release.sh publish {{tag}}
  git push origin {{version}}

