
import rospy
from beginner_tutorials.msg import Info
from beginner_tutorials.msg import Vector3


 
def callback(data):
    print"Linear acc is %s, %s,%s"%(data.linear.x,data.linear.y,data.linear.z)
    print"Angular vel is %s,%s,%s"%(data.angular.x,data.angular.y,data.angular.z)
    print"Rotation is %s,%s,%s"%(data.rota.x,data.rota.y,data.rota.z)
    
def square():
    rospy.init_node('Information',anonymous=True)
    rospy.Subscriber("Combined",Info,callback)
    print"Subscribing"

    rospy.spin()

    
if __name__=='__main__':
    square()
