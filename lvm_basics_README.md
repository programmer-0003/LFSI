***TOUR_TO_LVM***

# What is LVM?
LVM ( LOGICAL VOLUME MANAGER ) in Linux is a storage management tool that acts as a flexible abstraction layer between your physical hard drive and file system.

Core Building Blocks of LVM

LVM operates in three main layers:
1. Physical Volumes (PV):
	• The lowest level. These are raw physical hard drives, SSDs, or standard partitions (like /dev/sda1 or /dev/sdb) initialized for use with LVM.
2. Volume Groups (VG):
	• A storage pool created by combining one or more Physical Volumes. The Volume Group acts as a single large storage container from which you can carve out space.
3. Logical Volumes (LV):
	• The "virtual partitions" created from a Volume Group. These behave like normal disk partitions—you can format them with a file system (such as ext4 or xfs) and mount them to directories like / or /home.
4. Physical Extents (PE):
	• The small chunks (default 4 MiB) into which Physical Volumes are divided. Data is allocated from PEs to build Logical Volumes.

Why Use LVM? (Key Benefits)

• Dynamic Resizing: You can expand or shrink Logical Volumes and file systems on the fly without needing to reboot the machine (provided the file system supports online resizing).
• Spanning Multiple Disks: A single Logical Volume can stretch across multiple physical disks. For example, a 500 GB /home directory can live on two 250 GB drives combined into one Volume Group.
• Snapshots: You can take "frozen in time" read-only or writable snapshots of a Logical Volume to perform backups safely while the system is actively running.
• Easy Hardware Upgrades: You can add a new, larger hard drive to an existing Volume Group, migrate your data off an aging smaller drive while the system is online, and then remove the old drive safely.

============================================================================

Now,instead of practicing with actual system partitions, we will create a 2GB sparse file and also it won't immediately consume full 2 GiB of Physical storage.

Loop device is a virtual block device that we can find at /dev/loopN ( n is number here )

=============================================================================

=============================================================================

before running anything it is required to check if lvm is present on the system or not, and the command for that is "which lvm" and it will show something like "/usr/sbin/lvm"

=============================================================================

=============================================================================
The mkfs (make file system) command in Linux is used to format a storage device or partition with a specific file system. Before a new drive, SSD, or USB stick can store files and directories, mkfs writes the structural layout (such as superblocks and inodes) onto the raw storage.

In modern Linux distributions, mkfs acts as a front-end wrapper. Rather than running mkfs directly, it is standard practice to invoke the file-system-specific builder directly, such as mkfs.ext4 or mkfs.xfs.

==============================================================================

==============================================================================

**which**: you can check any linux programs/commands by typing proceeding "which" command 

==============================================================================

**trunncate**: The truncate command in Linux shrinks or extends the size of a file to a specified byte value without  deleting the file itself.

==============================================================================

Goal:

01. Create lvm-disk.img
02. Attach it to a loop device using losetup.
03. Initialize the loop device as an LVM Physical Volume.
04.  Create lfsi_vg.
05.  Create two logical Volumes.
06.  Format them with ext4 ( modern linux filesystem )
07.  Mount them and create test files.
