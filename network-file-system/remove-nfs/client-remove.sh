sudo umount /mnt/nfs
# Forced unmount if regular unmount fails
sudo umount -lf /mnt/nfs
# Verify unmount
mount | grep nfs


sudo vi /etc/fstab
# Remove the line: 10.10.200.23:/data/nfs_share /mnt/nfs nfs defaults 0 0

#Test 
sudo mount -a

# Remove NFS Client Package
sudo apt purge nfs-common -y
sudo apt autoremove -y
# Remove mount point directory
sudo rm -rf /mnt/nfs
