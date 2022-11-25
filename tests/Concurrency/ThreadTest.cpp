//
// Copyright (c) 2004 James Grenning
// Released under the terms of the GNU General Public License version 2 or later.
//

#include "CppUTest/TestHarness.h"
#include "ActionExecutingRunnable.h"
#include "FlagSettingAction.h"
#include "EventSettingAction.h"
#include "Thread.h"
#include "Delay.h"
#include "Event.h"

TEST_GROUP(Thread)
{
    void setup()
    {}
    void teardown()
    {}
};


TEST(Thread, StartYieldCheckJoinTest)
{
  Event e;
  Runnable* r = new ActionExecutingRunnable(new EventSettingAction(e));
  Thread thread(r);
  Delay::yield();
  CHECK(!e.isSignaled());
  thread.start();
  e.wait();
  thread.join();
}

TEST(Thread, StartRunJoin)
{
  bool runnableRan = false;
  Runnable* r = new ActionExecutingRunnable(new FlagSettingAction(runnableRan));
  Thread thread(r);
  CHECK(!runnableRan);
  thread.start();
  thread.join();
  CHECK(runnableRan);
}

TEST(Thread, JoinANeverStartedThread)
{
  bool runnableRan = false;
  Runnable* r = new ActionExecutingRunnable(new FlagSettingAction(runnableRan));
  Thread thread(r);
  thread.join();
}



