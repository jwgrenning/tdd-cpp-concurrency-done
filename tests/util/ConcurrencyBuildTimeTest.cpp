#include "CppUTest/TestHarness.h"
#include "ConcurrencyBuildTime.h"

TEST_GROUP(ConcurrencyBuildTime)
{
  ConcurrencyBuildTime* projectBuildTime;

  void setup()
  {
    projectBuildTime = new ConcurrencyBuildTime();
  }
  void teardown()
  {
    delete projectBuildTime;
  }
};

TEST(ConcurrencyBuildTime, Create)
{
  CHECK(0 != projectBuildTime->GetDateTime());
}

