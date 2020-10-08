 #include <std_msgs/String.h>
    
    std_msgs::String msg;
    int main(int argc, char **argv)
{
  
  ros::init(argc, argv, "generator");
  ros::NodeHandle n;
  ros::Publisher gen = n.advertise<std_msgs::String msg>("topic1", 1000);
  ros::Rate loop_rate(1);
 // int N = 1;int main(int argc, char **argv)
{
  
  ros::init(argc, argv, "generator");
  ros::NodeHandle n;
  ros::Publisher gen = n.advertise<std_msgs::String>("topic1", 1000);
  ros::Rate loop_rate(1);
 // int N = 1;
  //String N="HELLOE";
  std_msgs::String msg no1;
  std::stringstream ss;
  
  ss<<"HELLO";
  while (ros::ok())
  {
   
    msg.data = ss.str();
    ROS_INFO("publishing %s", msg.data.c_str());
    //ROS_INFO("publishing %d ",N );
    gen.publish(msg);

    ros::spinOnce();

    loop_rate.sleep();
    //N++;
//a.processEvents();
  }
return 0;
}

  //String N="HELLOE";
  std_msgs::String no1;
  std::stringstream ss;
  
  ss<<"HELLO";int main(int argc, char **argv)
{
  
  ros::init(argc, argv, "generator");
  ros::NodeHandle n;
  ros::Publisher gen = n.advertise<std_msgs::String>("topic1", 1000);
  ros::Rate loop_rate(1);
 // int N = 1;
  //String N="HELLOE";
  std_msgs::String no1;
  std::stringstream ss;
  
  ss<<"HELLO";
  while (ros::ok())
  {
   
    msg.data = ss.str();
    ROS_INFO("publishing %s", msg.data.c_str());
    //ROS_INFO("publishing %d ",N );
    gen.publish(msg);

    ros::spinOnce();

    loop_rate.sleep();
    //N++;
//a.processEvents();
  }
return 0;
}

  while (ros::ok())
  {
   
    msg.data = ss.str();
    ROS_INFO("publishing %s", msg.data.c_str());
    //ROS_INFO("publishing %d ",N );
    gen.publish(msg);

    ros::spinOnce();

    loop_rate.sleep();
    //N++;
//a.processEvents();
  }
return 0;
}
