//
// Copyright (c) 2004 James Grenning
// Released under the terms of the GNU General Public License version 2 or later.
//

#include "CppUTest/TestHarness.h"
#include "EventSettingAction.h"

TEST_GROUP(EventSettingAction)
  {
  void setup()
  {}
  void teardown()
  {}
  ;
};

TEST(EventSettingAction, Create)
{
  Event e;
  EventSettingAction* a = new EventSettingAction(e);

  CHECK(!e.isSignaled());
  a->execute();
  CHECK(e.isSignaled());
  delete a;
}


