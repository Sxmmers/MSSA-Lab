Cisco Packet Tracer Basic Router and DHCP
##########################################
1.
  Router:    2911
  Switches:  2960
  Pc's 2

  Lan 1:
  Network    : 192.168.10.0/24
  Router G0/0: 192.168.10.1
  PC1        : 192.168.10.2 (Static)

Lan 2:
  Network    : 192.168.20.0/24
  Router G0/1: 192.168.20.1
  PC2        : 192.168.20.2 (Static)

2.
  -Router Config Mode
  enable
  configure terminal
3.
  -Config gigabitethernet 0/0 (Lan1)
  interface gigabitethernet 0/0
  ip address 192.168.10.1 255.255.255.0
  no shutdown
  exit
4.
  -Config Gigabitethernet 0/1 (Lan2)
  interface gigabitethernet 0/1
  ip address 192.168.20.1 255.255.255.0
  no shutdown
  exit
5.
  -Verify interfaces
  do show ip interface breif
* G0/0 192.168.10.1
* G0/1 192.168.20.1
  Look for:
Status  : UP
Protocol: UP
6.
  Verify Routing Table
  do show ip route
  Routing codes:
* C = Directly Connected
* L = Local interface address
* S = Static route
* O = OSPF
7.
  Config DHCP LAN 1
ip dhcp pool LAN1
network 192.168.10.0 255.255.255.0
default-router 192.168.10.1
dns-server 8.8.8.8
exit
8.
  Verify DHCP
Show ip dhcp binding
show ip dhcp pool
9.
  Configure PC to use DHCP
1.Desktop
2.IPConfig
3.Select DHCP
Expected:
* Ip address  : 192.168.10.11 or other
* SubnetMask  : 255.255.255.0
* Defualt gate: 192.168.10.1
* DNS         : 8.8.8.8
10.
  Test Connectivity (PC1)
Ping 192.168.10.1
Ping 192.168.20.1
Ping 192.168.20.2
Ping 192.168.20.11

