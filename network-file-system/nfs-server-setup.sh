#Install NFS Package
sudo apt update
sudo apt install nfs-kernel-server -y

#Create NFS Share Directory
sudo mkdir -p /data/nfs_share

#Set Permissions
sudo chown nobody:nogroup /data/nfs_share
sudo chmod 777 /data/nfs_share

#Configure NFS Exports
sudo vi /etc/exports
/data/nfs_share 10.10.200.72(rw,sync,no_subtree_check)

#Apply NFS Export Changes
sudo exportfs -ra
sudo systemctl restart nfs-kernel-server

#Verify NFS Export
sudo exportfs -v
