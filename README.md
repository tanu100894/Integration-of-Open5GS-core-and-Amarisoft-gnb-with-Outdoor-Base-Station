# Integration-of-Open5GS-and-Amarisoft-gnb-with-outdoor-Base-Station
The integration of 5G core and radio access network (RAN) components in a laboratory setting provides an essential platform for research, testing, and development of next-generation communication systems. Open5GS, as a versatile and open-source 5G Core written in C, offers the flexibility to configure and manage the core network functions such as Access and Mobility Management Function (AMF), Session Management Function (SMF), and User Plane Function (UPF). Moreover, Open5GS offers the 3GPP Release-17 support for the core network of 4G LTE or 5G NR specification and functionalities. The Open5GS software can be installed via package managers in Debian, Ubuntu, and openSUSE environments. For testing purposes a WebUI that is based on Node.js (Open5GS, 2024). On the other hand, the Amarisoft gNB is a software-based solution that implements the 5G NR (New Radio) interface, bridging the user equipment (UE) and the 5G Core.

The motivation behind this project is to establish a functional 5G network by integrating these components, enabling a comprehensive study of 5G network behavior, performance metrics, and interoperability challenges. By simulating a real-world deployment scenario within an academic environment, this project aims to provide valuable insights and hands-on experience in 5G technology, which is essential for future advancements in telecommunications.

The primary objective of this project is to successfully integrate the Open5GS 5GC with the Amarisoft gNB, creating a functional 5G network that can be used for research and testing purposes. The scope of the project includes:
- Configuring and deploying the Open5GS 5GC in the Telecommunication Lab.
- Setting up the Amarisoft gNB in the High-Frequency Lab and establishing its connection to the outdoor Base Station.
- Ensure that a secure VPN connection between the two labs is established using an IPsec tunnel.
- Testing the VPN connection for successful ping, SSH, bandwidth measurement, port availability, port scanning, etc. to ensure proper communication between the network components.
- Documenting the installation, configuration, and testing processes, any challenges encountered, and the solutions implemented.

The system architecture for this project is divided between two specialized laboratories within the institution as shown in Figure below. 
The Open5GS 5G Core is installed on a dedicated PC in the Telecommunication Lab. This lab serves as the control center for the 5G network, handling all core network functionalities, including authentication, session management, and user data routing.
In parallel, the Amarisoft gNB is installed on an AW2S PC in the High Frequency Lab. This lab equipped with an outdoor Base Station setup, enables the gNB to manage the radio access network and facilitate communication with the user equipment (UE). The outdoor Base Station setup simulates real-world conditions, providing an authentic environment for testing the network's performance and reliability.

![image](https://github.com/user-attachments/assets/eaa88c9e-2049-4272-8ad8-621a85e70ec4)
