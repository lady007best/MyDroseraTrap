A trap for [Drosera](https://github.com/drosera-network) implemented in Solidity.
cat > README.md <<'EOF'
A trap for [Drosera](https://github.com/drosera-network) implemented in Solidity.
## Description
`BlockTimeDeltaTrap` is a smart contract that detects anomalies in the time interval between blocks.  
If the difference exceeds the predefined `DELTA_THRESHOLD`, the trap generates an alert for response.
mplementation is split into two files:
- **BlockTimeDeltaTrap.sol** — the trap itself, implementing the `ITrap` interface
- **BlockAlertReceiver.sol** — the alert receiver, which reacts when the trap is triggered

## Repository structure

src/
BlockTimeDeltaTrap.sol
BlockAlertReceiver.sol
ITrap.sol
Trap.sol
drosera.toml
images/
screenshot1.png
screenshot2.png
README.md

## Deployment
Example command with Forge:
```bash
forge create src/BlockTimeDeltaTrap.sol:BlockTimeDeltaTrap \
  --rpc-url <RPC_URL> \
  --private-key <PRIVATE_KEY> \
  --broadcast

Screenshots

Screenshots showing the deployment and testing process of the trap.




License

MIT
