#!/bin/bash
# run_demo.sh
# ADSOACRem AI Full Workflow Simulation (Browser/Local Safe Version)
# Python detection -> Java triage (simulated) -> C++ remediation

echo "=== ADSOACRem AI Demo Start ==="

# Step 1: Python Compliance Check (real)
echo ""
echo "[PYTHON] Running Compliance Check..."
python3 - << 'PYTHON_CODE'
def check_compliance(scan_results):
    critical_issues = [issue for issue in scan_results if issue['severity'] == 'CRITICAL']
    if critical_issues:
        print(f"Alert: {len(critical_issues)} NIST compliance violations found.")
        print("Action: INITIATE_AGENT_REMEDIATION")
    else:
        print("No critical issues detected.")
        print("Action: COMPLIANCE_PASSED")

# Mock vulnerabilities
mock_results = [
    {'id': 'CVE-2026-1234', 'severity': 'CRITICAL'},
    {'id': 'CVE-2026-2345', 'severity': 'MEDIUM'}
]

for result in mock_results:
    print(f"Vulnerability {result['id']}:")
    check_compliance([result])
PYTHON_CODE

# Step 2: Java Triage Simulation (simulated for browser demo)
echo ""
echo "[JAVA] Running Triage Logic (simulated)..."
echo "ADSOACRem Java Agent: Triggering remediation for CRITICAL severity..."
echo "ADSOACRem Java Agent: Logging MEDIUM severity for review..."
echo "ADSOACRem Java Agent: Logging LOW severity for review..."

# Step 3: C++ Remediation Simulation (real)
echo ""
echo "[C++] Running Automated Remediation..."
g++ -std=c++11 -x c++ - << 'CPP_CODE' -o temp_exec
#include <iostream>
#include <string>
#include <vector>

void secure_copy(const std::string& unsafe_input) {
    std::string safe_buffer = unsafe_input;
    std::cout << "Securely processed input: " << safe_buffer << std::endl;
}

int main() {
    std::vector<std::string> inputs = {
        "Federal_Compliance_Data_2026",
        "Critical_CVE_Input_2026"
    };
    for (const auto& input : inputs) {
        secure_copy(input);
    }
    return 0;
}
CPP_CODE

./temp_exec
rm temp_exec

echo ""
echo "=== ADSOACRem AI Demo Complete ==="
