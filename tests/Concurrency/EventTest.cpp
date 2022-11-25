//
// Copyright (c) 2004 James Grenning
// Released under the terms of the GNU General Public License version 2 or later.
//

#include "Event.h"
#include "Action.h"
#include "WaitingAction.h"
#include "Thread.h"
#include "ActionExecutingRunnable.h"
#include "CppUTest/TestHarness.h"

TEST_GROUP(Event)
{
	Event* e;
	void setup()
	{
		e = new Event();
	}
	void teardown()
	{
		delete e;
	}
};

TEST(Event, Create)
{
	CHECK(!e->isSignaled());
}

TEST(Event, SignalAndWaitInSameThread)
{
	e->signal();
	e->wait();
	CHECK(!e->isSignaled());
}

TEST(Event, IsSignaledDoesnNotResetEvent)
{
	e->signal();
	CHECK(e->isSignaled());
	CHECK(e->isSignaled());
	CHECK(e->isSignaled());
}

TEST(Event, WaitDoesResetEvent)
{
	e->signal();
	e->wait();
	CHECK(!e->isSignaled());
}

TEST(Event, MultiplSignalsNeedOneWait)
{
	e->signal();
	e->signal();
	e->wait();
	CHECK(!e->isSignaled());
}

TEST(Event, SignalAndWaitInDifferentThreads)
{
	Event event;
	Runnable* r = new ActionExecutingRunnable(new WaitingAction(event));
	Thread thread(r);
	CHECK(!event.isSignaled());
	thread.start();
	event.signal();
	thread.join();
}
