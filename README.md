# Usage:

In order to run the approach three essential steps are neccessary.
Begin by following these steps in the specified order.

1. ORAN SC RIC
2. Core-Network
3. UE + gNB

Subsequently, xApps can be deployed as outlined in the srsRAN ORAN SC RIC README:
https://github.com/srsran/oran-sc-ric?tab=readme-ov-file#3-example-xapp

## 1. ORAN SC RIC

Clone the oran-sc-ric repo: https://github.com/srsran/oran-sc-ric.git

```
cd  ./oran-sc-ric/
docker compose up --build
```

## 2. 5G-Core

Clone the srsRAN_Project: https://github.com/srsran/srsRAN_Project.git.

Start Core Network

```
cd  ./srsRAN_Project/docker/
docker compose up --build 5gc
```

## 3. UE + gNB

Clone the dockerized UE + gNB repo: https://github.com/fklement/srsran_dockerized.git.

Sstart the UE and the gNB.

```
cd ./srsran_dockerized
docker compose up --build
```
