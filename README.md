# Log Archive Script

A simple Bash script that automates the process of archiving log directories on Linux. It creates compressed `.tar.gz` archives with timestamps and records archive creation details in a log file.

## Features

- Checks whether a log directory is provided.
- Validates whether the specified directory exists.
- Creates an archive directory automatically.
- Compresses log directories into `.tar.gz` files.
- Adds timestamps to archive filenames to avoid naming conflicts.
- Records archive creation details in a log file.
- Handles errors if archive creation fails.

## Technologies Used

- Bash Scripting
- Linux Command Line
- `tar` for archiving and compression
- `mkdir` for directory creation
- `date` for timestamps
- Git and GitHub for version control

## Prerequisites

- A Linux environment (Ubuntu or Kali Linux).
- Bash shell.
- `tar` utility installed.

## Usage

Clone the repository:

```bash
git clone https://github.com/eranda555/log-archiver.git
```

Navigate to the project directory:

```bash
cd log-archiver
```

Make the script executable:

```bash
chmod +x log-archive.sh
```

Run the script by providing the path to the log directory:

```bash
./log-archive.sh /path/to/log-directory
```

Example:

```bash
./log-archive.sh /var/log
```

## Output

The script creates an `archive` directory in the current working directory.

Example structure:

```text
log-archive/
├── log-archive.sh
└── archive/
    ├── logs_archive_20261010_214000.tar.gz
    └── archive.log
```

The archive filename includes the date and time when it was created.

The `archive.log` file stores details about archive creation.

## Error Handling

The script checks for missing directory arguments and invalid directory paths. If archive creation fails, it displays an error message and removes the incomplete archive file.

## Learning Objectives

This project demonstrates practical Linux skills, including:

- Bash scripting and conditional statements.
- Command-line arguments.
- Directory and file management.
- Archive creation and compression.
- Timestamps and logging.
- Basic error handling.

## Future Improvements

- Add automated scheduled backups using cron.
- Allow users to choose a custom archive destination.
- Add automatic deletion of old archives.
- Improve logging and error reporting.

---

**Author:** Eranda555

**Project:** Log Archive Script
