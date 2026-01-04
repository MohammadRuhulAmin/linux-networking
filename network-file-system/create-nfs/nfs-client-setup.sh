#NFS Client Setup 
sudo apt install nfs-common -y

#Add mount Point
sudo mkdir -p /mnt/nfs

#Mount NFS Share
sudo mount -t nfs 10.10.200.23:/data/nfs_share /mnt/nfs


#Test mount point 
touch /mnt/nfs/test.txt
echo "NFS working" >> /mnt/nfs/test.txt
cat /mnt/nfs/test.txt


#After reboot if i want an auto mount
sudo vi /etc/fstab
10.10.200.23:/data/nfs_share /mnt/nfs nfs defaults 0 0
sudo mount -a

# If issue found in firewall 
sudo ufw allow from 10.10.200.72 to any port nfs
sudo ufw allow 111
sudo ufw allow 2049
