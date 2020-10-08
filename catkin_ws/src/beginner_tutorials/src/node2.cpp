#include"ros/ros.h"
#include"std_msgs/Int32.h"
#include "std_msgs/String.h"
#include <iostream>

void out(const std_msgs::Int32::ConstPtr& no2)
{
  ROS_INFO("final output: [%d]", no2->data);

}


int main(int argc, char **argv)
{
 
   ros::init(argc, argv, "output");
   ros::NodeHandle n;
   ros::Subscriber sub = n.subscribe("topic2",1000, out);
   ros::spin();
   return 0;

}
