# ADSOACRem AI Architecture Overview

## Project: Agentic DevSecOps for Automated Compliance Remediation (ADSOACRem AI)

**Submission:** GitLab AI Hackathon 2026  
**Languages:** Python, Java (simulated), C++  
**Focus:** Automated vulnerability triage and remediation with NIST 800-53 compliance

---

## System Components

### 1. Python: Compliance Check Engine
- **Purpose:** Detect critical vulnerabilities and triage against NIST 800-53 standards
- **Inputs:** Mock scan results / CI/CD pipeline vulnerabilities
- **Outputs:** Deception/criticality assessment, recommended remediation actions
- **Role:** Detection & initial decision-making in the workflow

### 2. Java: Triage Logic (Simulated)
- **Purpose:** Escalate critical issues for human-in-the-loop review
- **Inputs:** Criticality flags from Python engine
- **Outputs:** Logging, remediation triggers for high-severity issues
- **Role:** Decision escalation & simulated CI/CD integration

### 3. C++: Automated Remediation Module
- **Purpose:** Safely process unsafe inputs and apply automated fixes
- **Inputs:** Vulnerabilities flagged as critical
- **Outputs:** Secured, processed inputs simulating remediation actions
- **Role:** Physical remediation logic / enforcement layer

---

## Data Flow

```text
[CI/CD Vulnerabilities] 
        │
        ▼
[Python Compliance Check] ──> [Critical Issues Detected]
        │
        ▼
[Java Triage Logic (Simulated)] ──> [Escalation & Logging]
        │
        ▼
[C++ Automated Remediation] ──> [Secured Outputs / Fixed Inputs]
