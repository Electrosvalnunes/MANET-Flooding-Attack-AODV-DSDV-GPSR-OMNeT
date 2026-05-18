# MANET Flooding Attack Evaluation using AODV, DSDV and GPSR in OMNeT++/INET

This repository contains the reproducibility materials of a scientific study focused on the evaluation of Flooding attacks in Mobile Ad Hoc Networks using OMNeT++ and the INET framework.

## Overview

The project evaluates the impact of Flooding attacks on different MANET routing protocols. The analyzed protocols are AODV, DSDV and GPSR. The study compares normal and attack scenarios using network performance metrics extracted from OMNeT++ simulation outputs.

## Simulation Environment

The simulations were developed using:

- OMNeT++
- INET Framework
- IEEE 802.11 wireless communication
- UDP traffic
- Mobile Ad Hoc Network topology
- AODV, DSDV and GPSR routing protocols

## Network Scenario

The simulated topology includes one source node, one destination node and eight intermediate mobile nodes. Some nodes are configured as malicious nodes in the Flooding attack scenarios.

## Evaluated Protocols

The following routing protocols are evaluated:

- AODV
- DSDV
- GPSR

## Evaluated Scenarios

The repository includes normal and Flooding attack scenarios:

- AODV normal
- AODV under Flooding attack
- DSDV normal
- DSDV under Flooding attack
- GPSR normal
- GPSR under Flooding attack

## Main Metrics

The following performance metrics are analyzed:

- Packet Delivery Ratio
- End-to-end delay
- Throughput
- Routing overhead

## Repository Structure

```text
omnetpp/    OMNeT++/INET simulation files
configs/    Additional configuration files
figures/    Topology, methodology flowchart and result charts
scripts/    Python scripts for metric extraction and plotting
results/    Raw and processed simulation outputs
docs/       Methodology and reproducibility documentation
