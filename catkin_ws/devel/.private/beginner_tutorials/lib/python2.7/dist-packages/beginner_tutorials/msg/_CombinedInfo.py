# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from beginner_tutorials/CombinedInfo.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class CombinedInfo(genpy.Message):
  _md5sum = "81953f79fe8ffdaa1da172c5ee7b8504"
  _type = "beginner_tutorials/CombinedInfo"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """int64[3] linear_acceleration
int64[3] angular_velocity
int64[3] rotation

"""
  __slots__ = ['linear_acceleration','angular_velocity','rotation']
  _slot_types = ['int64[3]','int64[3]','int64[3]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       linear_acceleration,angular_velocity,rotation

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(CombinedInfo, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.linear_acceleration is None:
        self.linear_acceleration = [0] * 3
      if self.angular_velocity is None:
        self.angular_velocity = [0] * 3
      if self.rotation is None:
        self.rotation = [0] * 3
    else:
      self.linear_acceleration = [0] * 3
      self.angular_velocity = [0] * 3
      self.rotation = [0] * 3

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      buff.write(_get_struct_3q().pack(*self.linear_acceleration))
      buff.write(_get_struct_3q().pack(*self.angular_velocity))
      buff.write(_get_struct_3q().pack(*self.rotation))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      start = end
      end += 24
      self.linear_acceleration = _get_struct_3q().unpack(str[start:end])
      start = end
      end += 24
      self.angular_velocity = _get_struct_3q().unpack(str[start:end])
      start = end
      end += 24
      self.rotation = _get_struct_3q().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      buff.write(self.linear_acceleration.tostring())
      buff.write(self.angular_velocity.tostring())
      buff.write(self.rotation.tostring())
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      start = end
      end += 24
      self.linear_acceleration = numpy.frombuffer(str[start:end], dtype=numpy.int64, count=3)
      start = end
      end += 24
      self.angular_velocity = numpy.frombuffer(str[start:end], dtype=numpy.int64, count=3)
      start = end
      end += 24
      self.rotation = numpy.frombuffer(str[start:end], dtype=numpy.int64, count=3)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3q = None
def _get_struct_3q():
    global _struct_3q
    if _struct_3q is None:
        _struct_3q = struct.Struct("<3q")
    return _struct_3q
