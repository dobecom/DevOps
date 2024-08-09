# Monitoring System Setup with Prometheus & Grafana

## Overview

This guide provides step-by-step instructions on setting up a comprehensive monitoring system using Prometheus and Grafana. The setup includes metric collection, visualization, alerting, and log management to ensure robust monitoring and quick response to system issues.
![image](https://github.com/user-attachments/assets/e5c3dab7-0b27-4c49-a0fd-b3eafeafa573)


## Table of Contents
1. [Introduction](#introduction)
2. [Metric Collection](#metric-collection)
3. [Data Visualization](#data-visualization)
4. [Alerting System](#alerting-system)
5. [Log Collection](#log-collection)
6. [Provisioning and Automation](#provisioning-and-automation)
7. [Conclusion](#conclusion)

## Introduction

In this guide, we aim to set up a monitoring system capable of collecting metrics from hosts and containers, visualizing them in Grafana, and setting up alert notifications. This system will use open-source tools such as Prometheus, Grafana, Loki, and AlertManager.

## Metric Collection

We use Prometheus for scraping and storing metrics, Node Exporter for hardware and OS metrics, and cAdvisor for container metrics.

### Prometheus

Prometheus is the core of our monitoring system, responsible for gathering and storing metrics.

- **Docker Compose Configuration:** `./docker-compose.yml`
- **Prometheus Configuration:** `./conf/prometheus/prometheus.yml`

### Node Exporter

Node Exporter collects hardware and OS metrics.

- **Docker Compose Configuration:** `./docker-compose.yml`

### cAdvisor

cAdvisor collects container metrics.

- **Docker Compose Configuration:** `./docker-compose.yml`

## Data Visualization

Grafana is used to visualize the data collected by Prometheus.

### Grafana Setup

Grafana allows you to create dashboards to visualize your metrics.

- **Docker Compose Configuration:** `./docker-compose.yml`

### Dashboard Configuration

Configure Grafana dashboards to visualize metrics such as CPU usage, memory usage, and storage utilization.

- **Grafana Data Source Configuration:** `./conf/grafana/datasource.yaml`
- **Grafana Dashboard Configuration:** `./conf/grafana/dashboard.yaml`

## Alerting System

Prometheus AlertManager handles alerting based on the metrics collected.

### Prometheus AlertManager

Configure AlertManager to handle alerts and route them to the appropriate channels.

- **Docker Compose Configuration:** `./docker-compose.yml`
- **AlertManager Configuration:** `./conf/alertmanager/alertmanager.yml`
- **Prometheus Alert Rules Configuration:** 
  - `./conf/prometheus/rules.yml`
  - `./conf/prometheus/cpu_rules.yml`
  - `./conf/prometheus/mem_rules.yml`
  - `./conf/prometheus/cpu_recording_rules.yml`
  - `./conf/prometheus/mem_recording_rules.yml`

### Webhook Notifications

Set up webhook notifications to send alerts to messaging platforms like Telegram and Jandi.

- **Webhook Agent Docker Compose Configuration:** `./docker-compose.yml`
- **Webhook Agent Configuration:** `./webhook-agent/`

## Log Collection

We use Loki for log collection and Promtail for forwarding logs to Loki.

### Loki

Loki collects log data for analysis.

- **Docker Compose Configuration:** `./docker-compose.yml`
- **Loki Configuration:** `./conf/loki/local-config.yaml`

### Promtail

Promtail forwards logs from Docker containers to Loki.

- **Docker Compose Configuration:** `./docker-compose.yml`
- **Promtail Configuration:** `./conf/promtail/promtail.yml`

## Provisioning and Automation

Automate the provisioning of Grafana dashboards and data sources to ensure consistent setup across environments.

- **Dashboard and Data Source Configuration:**
  - `./conf/grafana/dashboard.yaml`
  - `./conf/grafana/datasource.yaml`
  - `./conf/grafana/dashboard.json`

## Conclusion

By following this guide, you will have a robust monitoring system in place using Prometheus, Grafana, and other related tools. This setup ensures comprehensive monitoring, efficient data visualization, timely alerts, and effective log management, enabling proactive system management and quick issue resolution.
