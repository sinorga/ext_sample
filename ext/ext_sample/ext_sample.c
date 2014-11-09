#include <ruby.h>

static VALUE ext_sample_str_cat(VALUE self, VALUE a, VALUE b)
{
  VALUE ret = rb_str_new2(StringValuePtr(a));
  rb_str_cat2(ret, StringValuePtr(b));
  return ret;
}

void Init_ext_sample(void)
{
  VALUE mExtSample;
  mExtSample = rb_define_module("ExtSample");
  rb_define_singleton_method(mExtSample, "str_cat", ext_sample_str_cat, 2);
}
