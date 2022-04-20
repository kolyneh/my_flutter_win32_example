// IWbemRefresher.dart

// ignore_for_file: unused_import, directives_ordering
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

/// IWbemRefresher define in WbemCli.h
/*
MIDL_INTERFACE("49353c99-516b-11d1-aea6-00c04fb68820")
IWbemRefresher : public IUnknown
{
public:
virtual HRESULT STDMETHODCALLTYPE Refresh(
*/ /* [in] */ /* long lFlags) = 0;

};*/

/*EXTERN_C const CLSID CLSID_WbemRefresher;

#ifdef __cplusplus

class DECLSPEC_UUID("c71566f2-561e-11d1-ad87-00c04fd8fdff")
WbemRefresher;
#endif*/

/// @nodoc
const IID_IWbemRefresher = '{49353C99-516B-11D1-AEA6-00C04FB68820}';

/// {@category Interface}
/// {@category com}
class IWbemRefresher extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IWbemRefresher(Pointer<COMObject> ptr) : super(ptr);

  int Refresh(
    int lFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lFlags,
          )>()(ptr.ref.lpVtbl, lFlags);

}

/// @nodoc
const CLSID_WbemRefresher = '{C71566F2-561E-11D1-AD87-00C04FD8FDFF}';

/// {@category com}
class WbemRefresher extends IWbemRefresher {
  WbemRefresher(Pointer<COMObject> ptr) : super(ptr);

  factory WbemRefresher.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_WbemRefresher);
    final iid = calloc<GUID>()..ref.setGUID(IID_IWbemRefresher);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return WbemRefresher(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
