# AstroDeviceKit Specification

## Purpose

Typed Swift astronomy-device abstractions layered over INDIKit.

## Required capabilities

- [ ] Dynamic device registry
- [ ] Typed capability negotiation
- [ ] Mount protocol
- [ ] Imaging camera protocol
- [ ] Guide camera protocol
- [ ] Focuser protocol
- [ ] Filter wheel protocol
- [ ] Rotator protocol
- [ ] Dome and roof protocols
- [ ] Dust cap and flat-panel protocols
- [ ] Weather station protocol
- [ ] GPS protocol
- [ ] Actor-isolated device state snapshots
- [ ] Simulator and fake device support

## Non-goals

- Capture sequencing
- Scheduler policy
- Device-specific INDI driver implementation

## Dependencies

AstroCore and INDIKit.

## Architectural requirements

- Downstream packages consume typed capability protocols rather than raw INDI property dictionaries.
- Mutable device state is isolated.
- Device loss and capability changes are first-class events.
- Fakes allow deterministic workflow testing without hardware.
