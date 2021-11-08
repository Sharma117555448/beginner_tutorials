// Generated by gencpp from file beginner_tutorials/change_string.msg
// DO NOT EDIT!


#ifndef BEGINNER_TUTORIALS_MESSAGE_CHANGE_STRING_H
#define BEGINNER_TUTORIALS_MESSAGE_CHANGE_STRING_H

#include <ros/service_traits.h>


#include <beginner_tutorials/change_stringRequest.h>
#include <beginner_tutorials/change_stringResponse.h>


namespace beginner_tutorials
{

struct change_string
{

typedef change_stringRequest Request;
typedef change_stringResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct change_string
} // namespace beginner_tutorials


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::beginner_tutorials::change_string > {
  static const char* value()
  {
    return "3b4ae52729cca8f48b577fc1175d09e3";
  }

  static const char* value(const ::beginner_tutorials::change_string&) { return value(); }
};

template<>
struct DataType< ::beginner_tutorials::change_string > {
  static const char* value()
  {
    return "beginner_tutorials/change_string";
  }

  static const char* value(const ::beginner_tutorials::change_string&) { return value(); }
};


// service_traits::MD5Sum< ::beginner_tutorials::change_stringRequest> should match
// service_traits::MD5Sum< ::beginner_tutorials::change_string >
template<>
struct MD5Sum< ::beginner_tutorials::change_stringRequest>
{
  static const char* value()
  {
    return MD5Sum< ::beginner_tutorials::change_string >::value();
  }
  static const char* value(const ::beginner_tutorials::change_stringRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::beginner_tutorials::change_stringRequest> should match
// service_traits::DataType< ::beginner_tutorials::change_string >
template<>
struct DataType< ::beginner_tutorials::change_stringRequest>
{
  static const char* value()
  {
    return DataType< ::beginner_tutorials::change_string >::value();
  }
  static const char* value(const ::beginner_tutorials::change_stringRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::beginner_tutorials::change_stringResponse> should match
// service_traits::MD5Sum< ::beginner_tutorials::change_string >
template<>
struct MD5Sum< ::beginner_tutorials::change_stringResponse>
{
  static const char* value()
  {
    return MD5Sum< ::beginner_tutorials::change_string >::value();
  }
  static const char* value(const ::beginner_tutorials::change_stringResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::beginner_tutorials::change_stringResponse> should match
// service_traits::DataType< ::beginner_tutorials::change_string >
template<>
struct DataType< ::beginner_tutorials::change_stringResponse>
{
  static const char* value()
  {
    return DataType< ::beginner_tutorials::change_string >::value();
  }
  static const char* value(const ::beginner_tutorials::change_stringResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // BEGINNER_TUTORIALS_MESSAGE_CHANGE_STRING_H
