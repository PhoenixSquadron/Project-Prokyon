# ProjectProkyon


Please Note: 
Project Prokyon is still in beta development. Stay tuned for future updates as code and schematics are released!
In the meantime, check out our website: www.phoenixsquadron.concordiashanghai.org and some of our drone swarm code at https://github.com/Shreyas-dotcom/DJI-SwarmKit


***
#### Researchers: 
- Marcus Chu 
- Shreyas Sharma 


***

###Project Description: 

Safety and efficiency are always the key goals and objectives in every industry, for example in traditional oil and gas industries, or the new renewable energy industries. Project Prokyon aims to develop a leading All-In-One drone for industrial application. Project Prokyon will develop a fully modular Octocopter, with fully interchangeable and modular parts. The applications of this drone could span across a very wide range of applications. Many energy-producing industries, such as gas, solar, or wind industries are required to carry out industrial-grade inspections over their assets at least once a month. Traditionally, helicopter crews are used for this job, or very expensive piloted drones are used for this task. Project Prokyon aims to carry out this process autonomously with a new algorithm that collects information from a LiDAR sensor along with an Intel Realsense depth Perception camera and with 2 GPS modules. All data will be collectively processed by an onboard companion computer (Jetson Nano). This drone will allow industries around the world the ability to use just one drone for all their inspections autonomously. Unlike traditional drones, which store data locally and require human intervention to view the data, project Prokyon will incorporate an AI algorithm to spot any anomalies in the data collected. Upon uploading the data to a blockchain-based network, the flagged anomalies will be highlighted for human review. Project Prokyon will provide a fully autonomous and self-contained Unmanned Aerial Vehicle (UAV) inspection solution capable of operating in GPS-denied environments without pre-mapping or requiring external computers by engaging advanced real-time path planning algorithms utilizing a LiDAR and stereoscopic SLAM system along with a modular Gas Sensor Suite (GSS) that has a maximum payload of 10kg. Such a system will improve operational efficiency by not requiring a dedicated UAV crew to pilot the UAV and it will also be able to arrive-and-deploy, as no other preparation is required other than the drone and ground equipment, making this system a valuable and time-saving investment. 

Execution Procedure:  

1. Takeoff command is given from (what is the full name? Ground Control Station (GCS)  

2. Drone Lift-off. GPS Coordinates are logged, and drone proceeds to first flight point autonomously. As the drone is enroute to its destination, onboard Jetson Nano will be using the data from the sensor suite (from???) for real-time flight calculations, A1 Lidar and Intel Realsense camea will be generating a 3D map of flight environment that is capable of avoiding any potential obstacles.  

3. When the drone reaches sight, it will begin data collection with the onboard sensors, in our example, a Gas Sensor Suite (GSS) – a series of gas sensors developed by us will be used. The drone collects data points from sensors, as well as conducting autonomous inspection of assets. Data points are collected via sensor value logging. 

4. Depending on data collected, the drone can either return to launch point, or if anomalies were detected, carry out through an inspection, and notify operating personnel.  

5. Upon successful landing, the drone will power down, the Jetson Nano uploads the collected images, xlxs sensor log data, and infrared images to a Blockchain based network.  

6. The drone’s sensors can be easily removed, and replaced with task specific sensors, such as a thermal camera, atmospheric particle sensors, or any of the 3 types of pin sensors.  

***
#Equipment: 

* Nvidia Jetson Nano (Ubuntu 18.04)
* T1200 Octacopter
* Intel D345i
* MQ Series gas sensors
* Rpi A1 LiDAR
* 1200mhz Telemetry modeule
* AT10II Transmitter
* 




©2022 Phoenix Squadron. All rights reserved.
