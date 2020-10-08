// Generated by gencpp from file beginner_tutorials/AddTwoIntsResponse.msg
// DO NOT EDIT!


#ifndef BEGINNER_TUTORIALS_MESSAGE_ADDTWOINTSRESPONSE_H
#define BEGINNER_TUTORIALS_MESSAGE_ADDTWOINTSRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace beginner_tutorials
{
template <class ContainerAllocator>
struct AddTwoIntsResponse_
{
  typedef AddTwoIntsResponse_<ContainerAllocator> Type;

  AddTwoIntsResponse_()
    : sum()  {
    }
  AddTwoIntsResponse_(const ContainerAllocator& _alloc)
    : sum(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<int64_t, typename ContainerAllocator::template rebind<int64_t>::other >  _sum_type;
  _sum_type sum;





  typedef boost::shared_ptr< ::beginner_tutorials::AddTwoIntsResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::beginner_tutorials::AddTwoIntsResponse_<ContainerAllocator> const> ConstPtr;

}; // struct AddTwoIntsResponse_

typedef ::beginner_tutorials::AddTwoIntsResponse_<std::allocator<void> > AddTwoIntsResponse;

typedef boost::shared_ptr< ::beginner_tutorials::AddTwoIntsResponse > AddTwoIntsResponsePtr;
typedef boost::shared_ptr< ::beginner_tutorials::AddTwoIntsResponse const> AddTwoIntsResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::beginner_tutorials::AddTwoIntsResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::beginner_tutorials::AddTwoIntsResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::beginner_tutorials::AddTwoIntsResponse_<ContainerAllocator1> & lhs, const ::beginner_tutorials::AddTwoIntsResponse_<ContainerAllocator2> & rhs)
{
  return lhs.sum == rhs.sum;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::beginner_tutorials::AddTwoIntsResponse_<ContainerAllocator1> & lhs, const ::beginner_tutorials::AddTwoIntsResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace beginner_tutorials

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::beginner_tutorials::AddTwoIntsResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::beginner_tutorials::AddTwoIntsResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::beginner_tutorials::AddTwoIntsResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::beginner_tutorials::AddTwoIntsResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::beginner_tutorials::AddTwoIntsResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::beginner_tutorials::AddTwoIntsResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::beginner_tutorials::AddTwoIntsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "90c30f4ac96dc42f9594ba161f7b344a";
  }

  static const char* value(const ::beginner_tutorials::AddTwoIntsResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x90c30f4ac96dc42fULL;
  static const uint64_t static_value2 = 0x9594ba161f7b344aULL;
};

template<class ContainerAllocator>
struct DataType< ::beginner_tutorials::AddTwoIntsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "beginner_tutorials/AddTwoIntsResponse";
  }

  static const char* value(const ::beginner_tutorials::AddTwoIntsResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::beginner_tutorials::AddTwoIntsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64[] sum\n"
"\n"
;
  }

  static const char* value(const ::beginner_tutorials::AddTwoIntsResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::beginner_tutorials::AddTwoIntsResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.sum);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct AddTwoIntsResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::beginner_tutorials::AddTwoIntsResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::beginner_tutorials::AddTwoIntsResponse_<ContainerAllocator>& v)
  {
    s << indent << "sum[]" << std::endl;
    for (size_t i = 0; i < v.sum.size(); ++i)
    {
      s << indent << "  sum[" << i << "]: ";
      Printer<int64_t>::stream(s, indent + "  ", v.sum[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // BEGINNER_TUTORIALS_MESSAGE_ADDTWOINTSRESPONSE_H
