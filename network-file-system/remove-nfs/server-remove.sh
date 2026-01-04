sudo exportfs -u 10.10.200.72:/data/nfs_share
sudo exportfs -ua
sudo exportfs -v
sudo vi /etc/exports
#remove /data/nfs_share 10.10.200.72(rw,sync,no_subtree_check)

sudo systemctl stop nfs-kernel-server
sudo systemctl disable nfs-kernel-server

sudo apt purge nfs-kernel-server -y
sudo apt autoremove -y
sudo rm -rf /data/nfs_share

