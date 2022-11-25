#ifndef D_ConcurrencyBuildTime_H
#define D_ConcurrencyBuildTime_H

///////////////////////////////////////////////////////////////////////////////
//
//  ConcurrencyBuildTime is responsible for recording and reporting when
//  this project library was built
//
///////////////////////////////////////////////////////////////////////////////

class ConcurrencyBuildTime
  {
  public:
    explicit ConcurrencyBuildTime();
    virtual ~ConcurrencyBuildTime();
    
    const char* GetDateTime();

  private:
      
    const char* dateTime;

    ConcurrencyBuildTime(const ConcurrencyBuildTime&);
    ConcurrencyBuildTime& operator=(const ConcurrencyBuildTime&);

  };

#endif  // D_ConcurrencyBuildTime_H
