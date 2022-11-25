#include "ConcurrencyBuildTime.h"

ConcurrencyBuildTime::ConcurrencyBuildTime()
: dateTime(__DATE__ " " __TIME__)
{
}

ConcurrencyBuildTime::~ConcurrencyBuildTime()
{
}

const char* ConcurrencyBuildTime::GetDateTime()
{
    return dateTime;
}

