//
// Copyright (c) 2004 James Grenning
// Released under the terms of the GNU General Public License version 2 or later.
//

#include "CppUTest/TestHarness.h"
#include "FlagSettingAction.h"

TEST_GROUP(FlagSettingAction)
  {
  void setup()
  {}
  void teardown()
  {}
  ;
};

TEST(FlagSettingAction, Create)
{
  bool wasActionExecuted = false;
  FlagSettingAction* a = new FlagSettingAction(wasActionExecuted);

  CHECK(wasActionExecuted == false);
  a->execute();
  CHECK(wasActionExecuted == true);
  a->reset();
  CHECK(wasActionExecuted == false);
  delete a;
}


