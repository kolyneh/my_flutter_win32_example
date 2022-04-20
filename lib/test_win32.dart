import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:flutter/foundation.dart';
import 'package:win32/win32.dart';

import 'win32/IWbemConfigureRefresher.dart';
import 'win32/IWbemObjectAccess.dart';
import 'win32/IWbemRefresher.dart';

/// Get Wmi PrefProc Process usage
void _getWmiPerfProcProcessUsage(int refForCompute) {
  // Obtain the initial locator to Windows Management
  // on a particular host computer.
  final pLoc = IWbemLocator(calloc<COMObject>());

  final clsid = calloc<GUID>()..ref.setGUID(CLSID_WbemLocator);
  final iid = calloc<GUID>()..ref.setGUID(IID_IWbemLocator);

  var hr = CoCreateInstance(
      clsid, nullptr, CLSCTX_INPROC_SERVER, iid, pLoc.ptr.cast());

  if (FAILED(hr)) {
    final exception = WindowsException(hr);
    if (kDebugMode) {
      print(exception.toString());
    }

    CoUninitialize();
    throw exception;
  }

  final proxy = calloc<Pointer<COMObject>>();

  // Connect to the root\cimv2 namespace with the
  // current user and obtain pointer pSvc
  // to make IWbemServices calls.
  hr = pLoc.ConnectServer(
      TEXT('ROOT\\CIMV2'),
      // WMI namespace
      nullptr,
      // User name
      nullptr,
      // User password
      nullptr,
      // Locale
      NULL,
      // Security flags
      nullptr,
      // Authority
      nullptr,
      // Context object
      proxy // IWbemServices proxy
      );

  if (FAILED(hr)) {
    final exception = WindowsException(hr);
    if (kDebugMode) {
      print(exception.toString());
    }

    pLoc.Release();
    CoUninitialize();
    throw exception; // Program has failed.
  }

  // Service
  final pSvc = IWbemServices(proxy.cast());

  final riid = calloc<GUID>()..ref.setGUID(IID_IUnknown);
  final pUnkProxy = calloc<Pointer<COMObject>>();
  pSvc.QueryInterface(riid, pUnkProxy);

  final pUnk = IUnknown(pUnkProxy.cast());

  // Set the IWbemServices proxy so that impersonation
  // of the user (client) occurs.
  hr = CoSetProxyBlanket(
      proxy.value,
      // the proxy to set
      RPC_C_AUTHN_WINNT,
      // authentication service
      RPC_C_AUTHZ_NONE,
      // authorization service
      nullptr,
      // Server principal name
      RPC_C_AUTHN_LEVEL_DEFAULT,
      // authentication level
      RPC_C_IMP_LEVEL_IMPERSONATE,
      // impersonation level
      nullptr,
      // client identity
      EOLE_AUTHENTICATION_CAPABILITIES.EOAC_NONE // proxy capabilities
      );

  if (FAILED(hr)) {
    final exception = WindowsException(hr);
    if (kDebugMode) {
      print(exception.toString());
    }
    /* pSvc.Release();
    pLoc.Release();
    CoUninitialize();*/
    throw exception; // Program has failed.
  }

  // Set the IWbemServices proxy so that impersonation
  // of the user (client) occurs.
  hr = CoSetProxyBlanket(
      pUnkProxy.value,
      // the proxy to set
      RPC_C_AUTHN_WINNT,
      // authentication service
      RPC_C_AUTHZ_NONE,
      // authorization service
      nullptr,
      // Server principal name
      RPC_C_AUTHN_LEVEL_DEFAULT,
      // authentication level
      RPC_C_IMP_LEVEL_IMPERSONATE,
      // impersonation level
      nullptr,
      // client identity
      EOLE_AUTHENTICATION_CAPABILITIES.EOAC_NONE // proxy capabilities
      );

  if (FAILED(hr)) {
    final exception = WindowsException(hr);
    if (kDebugMode) {
      print(exception.toString());
    }
    /* pSvc.Release();
    pLoc.Release();
    CoUninitialize();*/

    pUnk.Release();
    throw exception; // Program has failed.
  }

  // Clean up the IUnknown.
  pUnk.Release();

  final pRefresher = IWbemRefresher(calloc<COMObject>());

  final refclsid = calloc<GUID>()..ref.setGUID(CLSID_WbemRefresher);
  final refiid = calloc<GUID>()..ref.setGUID(IID_IWbemRefresher);

  // Create a WMI Refresher and get a pointer to the
  // IWbemConfigureRefresher interface.
  hr = CoCreateInstance(
      refclsid, nullptr, CLSCTX_INPROC_SERVER, refiid, pRefresher.ptr.cast());

  if (FAILED(hr)) {
    final exception = WindowsException(hr);
    if (kDebugMode) {
      print(exception.toString());
    }
    throw exception; // Program has failed.
  }

  final pConfigProxy = calloc<Pointer<COMObject>>();
  final ciid = calloc<GUID>()..ref.setGUID(IID_IWbemConfigureRefresher);
  pRefresher.QueryInterface(ciid, pConfigProxy);

  final pConfig = IWbemConfigureRefresher(pConfigProxy.cast());

  final pObj = calloc<Pointer<COMObject>>();

  // Add the instance to be refreshed.
  hr = pConfig.AddObjectByPath(
    proxy.value,
    TEXT('Win32_PerfRawData_PerfProc_Process.Name="WINWORD"'),
    0,
    nullptr,
    pObj,
    nullptr,
  );

  if (FAILED(hr)) {
    final exception = WindowsException(hr);
    if (kDebugMode) {
      print(exception.toString());
    }
    throw exception; // Program has failed.
  }

  final clsObj = IWbemClassObject(pObj.cast());

  // For quick property retrieval, use IWbemObjectAccess.
  final pAccProxy = calloc<Pointer<COMObject>>();
  final acciid = calloc<GUID>()..ref.setGUID(IID_IWbemObjectAccess);
  clsObj.QueryInterface(acciid, pAccProxy);
  final pAcc = IWbemObjectAccess(pAccProxy.cast());

  // This is not required.
  clsObj.Release();

  // Get a property handle for the VirtualBytes property.
  final plVirtualBytesHandle = calloc<Int32>()..value = 0;
  final pdwVirtualBytes = calloc<DWORD>()..value = 0;

  //final vtProp = calloc<VARIANT>();
  final pVariant = calloc<Int32>();
  hr = pAcc.GetPropertyHandle(
      TEXT('VirtualBytes'), pVariant, plVirtualBytesHandle);

  // Refresh the object ten times and retrieve the value.
  for (int x = 0; x < 10; x++) {
    pRefresher.Refresh(0);

    /// <- Crash at this line.
    pAcc.ReadDWORD(plVirtualBytesHandle.value, pdwVirtualBytes);

    if (kDebugMode) {
      print("Process is using ${pdwVirtualBytes.value} bytes");
    }
    // Sleep for a second.
    Sleep(1000);
  }

  // Clean up all the objects.
  pAcc.Release();
  // Done with these too.
  pConfig.Release();
  pRefresher.Release();
}

Future<void> testGetProcessUsage() async {
  await compute(_getWmiPerfProcProcessUsage, 0);
  return Future.value(null);
}
