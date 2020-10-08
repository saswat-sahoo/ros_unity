#include "ros/ros.h"
#include "std_msgs/Int32.h"
#include <sstream>
#include <iostream>

int main(int argc, char **argv)
{
  
  ros::init(argc, argv, "produce");
  ros::NodeHandle n;
  ros::Publisher gen = n.advertise<std_msgs::Int32>("topic1", 1000);
  ros::Rate loop_rate(1);
  int N = 1;
  std_msgs::Int32 no1;
  
  
  while (ros::ok())
  {
    
    no1.data=N;
    ROS_INFO("publishing %d ",N );
    gen.publish(no1);

    ros::spinOnce();

    loop_rate.sleep();
    N++;

  }
return 0;
}
