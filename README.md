# adminpw

working on a way to change the admin password on Kandji


To deploy and execute the provided script that changes the password for a user named diceadmin on macOS devices using an MDM solution like Kandji, follow these step-by-step instructions:

Step 1: Prepare the Script
Edit the Script: Make sure the script meets your requirements. Confirm the username is correct (diceadmin), and consider setting a parameter for the password instead of hardcoding it.
Secure the Password: Instead of hardcoding the new password in the script, plan to use Kandji's parameter feature to pass the password securely when the script runs.

Step 2: Log into Kandji
Access Kandji: Log in to your Kandji admin dashboard using your credentials.

Step 3: Navigate to the Library
Library Section: Once logged in, find and click on the "Library" tab in the Kandji dashboard. This area allows you to manage scripts, applications, and configuration profiles.

Step 4: Add a New Library Item
Add New Item: Click on the "Add New" button or link within the Library section. Choose "Scripts" from the list of available types of library items.

Step 5: Configure the Script
Script Details:
Name: Enter a descriptive name for the script, such as "Change Admin Password for diceadmin."
Script Content: Paste your Bash script into the script content field provided by Kandji.
Execution Rights: Select the option to execute the script as an administrator (sudo privileges) because changing a user's password requires administrative rights.
Parameter Configuration: If Kandji supports script parameters, configure the password to be passed as a secure parameter.

Step 6: Set Execution Triggers
Triggers:
Decide when the script should run. Options might include:
On-device enrollment
On a recurring schedule
Manually triggered

Step 7: Test the Script
Test on a Device:
Before deploying widely, select a few test devices to deploy the script. This ensures that it functions as expected without affecting all devices in case of errors.
Monitor the script execution through Kandji's logs or reports to verify successful execution.

Step 8: Deploy the Script
Assign Devices:
Once tested, assign the script to the appropriate devices or groups within your organization that require the password update.
Configure any additional deployment settings, such as dependencies or conditions that must be met before the script executes.

Step 9: Monitor and Follow Up
Monitoring:
Keep track of the script’s deployment and execution through Kandji’s management console.
Check for any errors and ensure the script is running successfully across all intended devices.

Step 10: Documentation and Maintenance
Document the Changes:
Keep a record of the script and its deployment details for IT audits and troubleshooting.
Plan to update the script as necessary if device configurations or administrative credentials change.
This sequence of steps ensures that the script is deployed securely and effectively, with minimal risk to device functionality and user disruption.






