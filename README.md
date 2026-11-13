***CURRENT-STATUS***
Initial Linux diagnostic shell script (run_commands.sh) implemented and tested on Ubuntu 26.04.01
System Information and storage details collected using native Linux Utilities.
Diagnostic report generated in demo_ubuntu_details.txt
Verified availability of GCC. lsblk, findmnt, blkid and LVM utilities.
Identified the Ubuntu root filesystem as ext4 on /dev/sda2.
Initial investigation of block devices, mounted filesystems and loop devices completed.

***Pending-Fix***
Handle LVM discovery when no physical volumes, volume groups or logical volumes are configured.
Replace empty LVM output sections with meaningful status messages.
Distinguish between unavailable utilities, unconfigured LVM and actual command execution errors.
Regenerate and verify the diagnostic report after fixing the script.

***NEXT-MOMENTS***
Complete and Verify the pending LVM handling in the Linux diagnostic script.
Generate a clean and complete Ubuntu diagnostic report.
Update the project documentation and repository with verified results.
Begin the C implementation using native Linux utilities.
Develop the Program Incrementally, beginning with block-device discovery.
Extend the architecture to support Windows using native Windows utilities.
