# AstroDeviceKit

Part of **Project Meridian**, the library family powering **AstroLab**.

AstroDeviceKit provides typed Swift astronomy-device abstractions layered over INDIKit.

## Scope

- Dynamic device registry
- Typed capability negotiation
- Mount protocol
- Imaging and guide camera protocols
- Focuser, filter wheel and rotator protocols
- Dome/roof, dust cap and flat-panel protocols
- Weather and GPS protocols
- Actor-isolated device state snapshots
- Simulator and fake device support

## Direct Project Meridian dependencies

- [AstroCore](https://github.com/emilybelnavis/AstroCore)
- [INDIKit](https://github.com/emilybelnavis/INDIKit)

## Platform and implementation policy

- macOS 27+
- Swift 6 strict concurrency
- Objective-C prohibited
- Swift Package Manager

## Development

```sh
swift build
swift test
```

See `AGENTS.md`, `PLANS.md`, and `docs/SPEC.md`.
