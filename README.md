# Enterprise Secure Network Lab (Local VirtualBox)

## Overview

This project demonstrates the design, implementation, security hardening, monitoring, and automation of an enterprise-style Linux network using local virtualization (VirtualBox).

The lab simulates a real-world internal network with controlled access, hardened hosts, centralized monitoring, and operational automation. It is designed to reflect the responsibilities of a Systems Engineer supporting secure infrastructure environments.

---

## Architecture

            Internet
                |
          [ Host Machine ]
                |
       ---------------------
       |                   |
 Bastion Host          Internal Network
 (SSH Gateway)     -----------------------
                   |          |          |
              Web Server  Monitoring  Future Services
               (Nginx)     (Prom/Graf)


### Network Design
- **Bastion Host**
  - Single SSH entry point
  - Hardened access
  - Key-based authentication only

- **Web Server**
  - Internal-only access
  - Nginx service
  - Firewall-restricted

- **Monitoring Server**
  - Prometheus
  - Grafana
  - Node Exporter on all hosts

---

## Technology Stack

- VirtualBox
- Ubuntu Server LTS
- Bash
- UFW / iptables
- OpenSSH
- Nginx
- Prometheus
- Grafana
- Cron

---

## Security Controls Implemented

- SSH hardening (no root login, key-only auth)
- Bastion-based access model
- Host-based firewall rules
- Least-privilege user management
- Logging and audit readiness
- Network segmentation
- Monitoring and alerting foundations

---

## VirtualBox Setup

### VM Requirements
- 3 Ubuntu Server VMs
- 2 Network Adapters per VM:
  - Adapter 1: NAT
  - Adapter 2: Internal Network (`intnet`)

### VM Roles
| VM | Purpose | Example IP |
|---|---|---|
| bastion | SSH gateway | 192.168.56.10 |
| web | Web services | 192.168.56.20 |
| monitor | Monitoring | 192.168.56.30 |

---

## Installation Workflow

1. Create VMs in VirtualBox
2. Assign static IPs
3. Run base hardening scripts
4. Configure firewall rules
5. Deploy services
6. Enable monitoring
7. Validate access paths

---

## Automation

All system configuration is automated using Bash scripts:
- Firewall deployment
- SSH hardening
- User provisioning
- Monitoring agent installation
- Backup and maintenance tasks

Scripts are idempotent and safe to re-run.

---

## Validation Checklist

- SSH access allowed only through bastion
- Root login disabled
- Firewall denies unused ports
- Web server reachable internally
- Grafana dashboards display host metrics
- Logs generated and rotated

---

## Resume Use Case

This project demonstrates:
- Enterprise Linux administration
- Secure network design
- Infrastructure hardening
- Monitoring and observability
- Operational automation
- Clear documentation

---

## Future Enhancements

- Ansible playbooks
- Centralized logging (ELK)
- Cloud adaptation (AWS / Azure)
- Zero Trust segmentation
- MFA integration

---

## Author

Guerod McGirt  
Systems Engineer | Linux | Networking | Security | Automation

<img width="1536" height="1024" alt="Network Design" src="https://github.com/user-attachments/assets/85eac7a6-1c30-4b69-adc0-010c238cd7f6" />
