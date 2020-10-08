#include "ros/ros.h"
#include "std_msgs/Int32.h"
#include <iostream>

ros::Publisher sq;


void sqr(const std_msgs::Int32::ConstPtr& no)
{
  ROS_INFO("received: %d", no->data);
 
  int n=no->data;
  int N=n*n*n;
  std_msgs::Int32 no2;
  no2.data=N;
  ROS_INFO("PUBLISHING %d",no2.data);
  
  sq.publish(no2);
  
  
  
}

int main(int argc, char **argv)
{
  
  ros::init(argc, argv, "square");
  ros::NodeHandle n;
  ros::Subscriber sub = n.subscribe("topic1", 1000, sqr);
  
  sq = n.advertise<std_msgs::Int32>("topic2", 1000);
  
  
  ros::spin();
  return 0;

}
