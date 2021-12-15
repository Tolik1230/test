#!/bin/bash
#add fix to exercise6-fix here

hs=$HOSTNAME
if [ '$hs'=='server1' ]; then
	            server="server2";
		                    hostip="192.168.100.11";
				                    echo $server
						            else
								                        server="server1";
											                        hostip="192.168.100.10";
														                        echo $server
fi;
sudo printf "Host $server\n  HostName $hostip\n  UserKnownHostsFile /dev/null\n  PasswordAuthentication no\n  StrictHostKeyChecking no\n  IdentityFile ~/.ssh/private_key$server\n  IdentitiesOnly yes\n" >> ~/.ssh/config;
cp /vagrant/.vagrant/machines/$server/virtualbox/private_key ~/.ssh/private_key$server;
chmod 700 ~/.ssh/private_key$server;
scp -F ~/.ssh/config ${@: 1:$#-1} $server:${@: -1}
sum=0
i=1
touch ~/sum-temp.txt
for filename in "${@: 1:$#-1}"
do
	                 ls -l $filename | awk '{print $5}' >> ~/sum-temp.txt
			                           i=$((i + 1))
						                     done
								                       readarray -t sumarray < sum-temp.txt
										                         rm ~/sum-temp.txt
													                   for number in ${sumarray[@]}
																                     do
																			                                       sum=$((sum+$((number))))
																							                                 done
																											                           echo "$sum"
