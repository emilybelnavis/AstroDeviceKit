# AGENTS.md

## Repository mission

`AstroDeviceKit` is part of **Project Meridian**, the library family behind **AstroLab**.

Mission: typed Swift astronomy-device abstractions layered over INDIKit.

## Hard constraints

- Swift only for Project Meridian source.
- Objective-C and Objective-C++ are prohibited.
- Swift 6 strict concurrency.
- macOS 27 is the minimum supported platform.
- Preserve dependency direction: AstroDeviceKit may depend on AstroCore and INDIKit, but not on higher-level workflow packages.
- Keep INDI's dynamic property details behind typed device abstractions where possible.

## Implementation rules

- Each mutable physical device should have a clearly isolated state owner.
- Expose immutable, Sendable snapshots for consumers.
- Capability discovery must be explicit and resilient to missing optional properties.
- Device protocols should model what hardware can do, not one specific vendor.
- Operations need cancellation, timeout and error semantics where applicable.
- Add fakes/simulators for downstream tests.
- Never make a SwiftUI view the owner of a physical connection.

## Codex workflow

Read `README.md` and `docs/SPEC.md` for scope-changing work. Use `PLANS.md` for substantial device-contract changes.

Before finishing:

1. Build and test.
2. Add fake/simulator coverage for changed device behavior.
3. Test disconnect and capability-loss paths.
4. Check strict-concurrency diagnostics.
5. Update public API documentation.
