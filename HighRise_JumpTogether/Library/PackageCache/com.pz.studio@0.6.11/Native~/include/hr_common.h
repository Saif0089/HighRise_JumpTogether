/*

    Copyright (c) 2024 Pocketz World. All rights reserved.

*/

#ifndef __HR_COMMON_H__
#define __HR_COMMON_H__

#if !defined(HR_API)
#if defined(WINDOWS)
#define EXPORT_API _declspec(dllexport)
#define IMPORT_API _declspec(dllimport)
#else
#define EXPORT_API __attribute__((visibility("default")))
#define IMPORT_API __attribute__((visibility("hidden")))
#endif

#ifdef HR_API_BUILD
#define HR_API EXPORT_API
#else
#define HR_API IMPORT_API
#endif
#endif

#define HR_ASSERT(x) assert(x)

#include <stdint.h>
#include <stdlib.h>
#include <math.h>

#ifdef __cplusplus
extern "C"
{
#endif

    typedef uint32_t hr_NetworkId;

#ifdef __cplusplus
}
#endif

#endif // __HR_COMMON_H__