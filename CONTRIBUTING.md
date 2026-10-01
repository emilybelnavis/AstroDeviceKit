# Contributing

- Swift 6 strict concurrency.
- macOS 27+.
- Objective-C prohibited.
- Public device contracts require documentation and tests.
- New device capabilities should include fake/simulator coverage where feasible.
- Do not leak INDI-specific string keys into higher-level package APIs without a documented reason.

```sh
swift build
swift test
```
