## Automated-Website-Enumeration-Script
The Automated Website Enumeration Script is a Bash script designed to automate the process of subdomain enumeration and domain discovery using various popular tools. This script helps security professionals and bug bounty hunters gather extensive subdomain data, remove duplicates, and identify live domains efficiently.

## Features
- Sublist3r: Enumerates subdomains using multiple sources, such as search engines.
- SubFinder: Uses passive sources to find subdomains quickly.
- Assetfinder: Extracts subdomains from a wide range of sources.
- crt.sh: Fetches certificate transparency logs for subdomain enumeration.
- Amass: Runs both passive and brute-force enumeration modes.
- Duplicate Removal: Removes duplicate subdomains to provide a clean list.
- Alive Check: Uses httpx to identify live domains by following redirects.

## Prerequisites
Ensure you have the following tools installed:
- Sublist3r
- SubFinder
- Assetfinder
- crt.sh
- Amass
- httpx

## Installation
1. **Clone the repository and navigate to the directory:**
   ```bash
        git clone https://Gaurav-Chatribin/Automated-Website-Enumeration-Script/.git
        cd automated-website-enumeration-script

2. **Ensure that all the required tools are installed and available in your system's PATH.**

3. **Set up your directory structure:**
   - Create a directory ~/scripts/target where results will be saved.

## Usage

Run the script by providing the target domain as an argument:
<pre>
<code class="language-bash">
./enumeration_script.sh example.com
</code>
</pre>


## Output
- The script generates the following output files:
    - domains.txt: List of discovered subdomains.
    - alive.txt: List of live subdomains identified by httpx.

## Script Workflow
1. Starting Subdomain Enumeration: Begins the process by using Sublist3r.
2. SubFinder: Collects subdomains from various passive sources.
3. Assetfinder: Adds more subdomains to the list.
4. crt.sh: Extracts subdomains from certificate transparency logs.
5. Amass Passive and BruteForce: Combines passive enumeration and brute-forcing for thorough results.
6. Removing Duplicates: Cleans up the output by removing duplicate entries.
7. Checking Alive Domains: Verifies which subdomains are live using httpx.

## Contributing
Feel free to contribute to this project by submitting issues or pull requests. Contributions are welcome to improve the script, add new features, or support additional enumeration tools.

## Disclaimer
This script is intended for educational and authorized security testing purposes only. Misuse of this script could result in criminal charges. Use responsibly and only on domains that you own or have permission to test.
