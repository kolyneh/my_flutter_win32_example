// IWbemObjectAccess.dart

// ignore_for_file: unused_import, directives_ordering
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

/// IWbemObjectAccess define in WbemCli.h
//
// EXTERN_C const IID IID_IWbemObjectAccess;
//
// #if defined(__cplusplus) && !defined(CINTERFACE)
//
// MIDL_INTERFACE("49353c9a-516b-11d1-aea6-00c04fb68820")
// IWbemObjectAccess : public IWbemClassObject
// {
// public:
// virtual HRESULT STDMETHODCALLTYPE GetPropertyHandle(
// /* [string][in] */ LPCWSTR wszPropertyName,
// /* [out] */ CIMTYPE *pType,
// /* [out] */ long *plHandle) = 0;
//
// virtual HRESULT STDMETHODCALLTYPE WritePropertyValue(
// /* [in] */ long lHandle,
// /* [in] */ long lNumBytes,
// /* [size_is][in] */ const byte *aData) = 0;
//
// virtual HRESULT STDMETHODCALLTYPE ReadPropertyValue(
// /* [in] */ long lHandle,
// /* [in] */ long lBufferSize,
// /* [out] */ long *plNumBytes,
// /* [length_is][size_is][out] */ byte *aData) = 0;
//
// virtual HRESULT STDMETHODCALLTYPE ReadDWORD(
// /* [in] */ long lHandle,
// /* [out] */ DWORD *pdw) = 0;
//
// virtual HRESULT STDMETHODCALLTYPE WriteDWORD(
// /* [in] */ long lHandle,
// /* [in] */ DWORD dw) = 0;
//
// virtual HRESULT STDMETHODCALLTYPE ReadQWORD(
// /* [in] */ long lHandle,
// /* [out] */ unsigned __int64 *pqw) = 0;
//
// virtual HRESULT STDMETHODCALLTYPE WriteQWORD(
// /* [in] */ long lHandle,
// /* [in] */ unsigned __int64 pw) = 0;
//
// virtual HRESULT STDMETHODCALLTYPE GetPropertyInfoByHandle(
// /* [in] */ long lHandle,
// /* [out] */ BSTR *pstrName,
// /* [out] */ CIMTYPE *pType) = 0;
//
// virtual HRESULT STDMETHODCALLTYPE Lock(
// /* [in] */ long lFlags) = 0;
//
// virtual HRESULT STDMETHODCALLTYPE Unlock(
// /* [in] */ long lFlags) = 0;
//
// };


/// @nodoc
const IID_IWbemObjectAccess = '{49353C9A-516B-11D1-AEA6-00C04FB68820}';

/// {@category Interface}
/// {@category com}
class IWbemObjectAccess extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IWbemObjectAccess(Pointer<COMObject> ptr) : super(ptr);

  // virtual HRESULT STDMETHODCALLTYPE GetPropertyHandle(
// /* [string][in] */ LPCWSTR wszPropertyName,
// /* [out] */ CIMTYPE *pType,
// /* [out] */ long *plHandle) = 0;

  int GetPropertyHandle(
      Pointer<Utf16> wszPropertyName,
      Pointer<Int32> pType,
      Pointer<Int32> plHandle,
      ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
          Pointer<
              NativeFunction<
                  Int32 Function(
                      Pointer,
                      Pointer<Utf16> wszPropertyName,
                      Pointer<Int32> pType,
                      Pointer<Int32> plHandle,
                      )>>>()
          .value
          .asFunction<
          int Function(
              Pointer,
              Pointer<Utf16> wszPropertyName,
              Pointer<Int32> pType,
              Pointer<Int32> plHandle,
              )>()(
        ptr.ref.lpVtbl,
        wszPropertyName,
        pType,
        plHandle,
      );


  // virtual HRESULT STDMETHODCALLTYPE WritePropertyValue(
// /* [in] */ long lHandle,
// /* [in] */ long lNumBytes,
// /* [size_is][in] */ const byte *aData) = 0;
  int WritePropertyValue(
      int lHandle,
      int lNumBytes,
      Pointer<Uint8> aData,
      ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
          Pointer<
              NativeFunction<
                  Int32 Function(
                      Pointer,
                      Int32 lHandle,
                      Int32 lNumBytes,
                      Pointer<Uint8> aData,
                      )>>>()
          .value
          .asFunction<
          int Function(
              Pointer,
              int lHandle,
              int lNumBytes,
              Pointer<Uint8> aData,
              )>()(
        ptr.ref.lpVtbl,
        lHandle,
        lNumBytes,
        aData,
      );

// virtual HRESULT STDMETHODCALLTYPE ReadPropertyValue(
// /* [in] */ long lHandle,
// /* [in] */ long lBufferSize,
// /* [out] */ long *plNumBytes,
// /* [length_is][size_is][out] */ byte *aData) = 0;
  int ReadPropertyValue(
      int lHandle,
      int lNumBytes,
      Pointer<Int32> plNumBytes,
      Pointer<Uint8> aData,
      ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
          Pointer<
              NativeFunction<
                  Int32 Function(
                      Pointer,
                      Int32 lHandle,
                      Int32 lNumBytes,
                      Pointer<Int32> plNumBytes,
                      Pointer<Uint8> aData,
                      )>>>()
          .value
          .asFunction<
          int Function(
              Pointer,
              int lHandle,
              int lNumBytes,
              Pointer<Int32> plNumBytes,
              Pointer<Uint8> aData,
              )>()(
        ptr.ref.lpVtbl,
        lHandle,
        lNumBytes,
        plNumBytes,
        aData,
      );


  // virtual HRESULT STDMETHODCALLTYPE ReadDWORD(
// /* [in] */ long lHandle,
// /* [out] */ DWORD *pdw) = 0;
  int ReadDWORD(
      int lHandle,
      Pointer<DWORD> pdw,
      ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
          Pointer<
              NativeFunction<
                  Int32 Function(
                      Pointer,
                      Int32 lHandle,
                      Pointer<DWORD> pdw,
                      )>>>()
          .value
          .asFunction<
          int Function(
              Pointer,
              int lHandle,
              Pointer<DWORD> pdw,
              )>()(
        ptr.ref.lpVtbl,
        lHandle,
        pdw,
      );

// virtual HRESULT STDMETHODCALLTYPE WriteDWORD(
// /* [in] */ long lHandle,
// /* [in] */ DWORD dw) = 0;
  int WriteDWORD(
      int lHandle,
      int dw,
      ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
          Pointer<
              NativeFunction<
                  Int32 Function(
                      Pointer,
                      Int32 lHandle,
                      DWORD dw,
                      )>>>()
          .value
          .asFunction<
          int Function(
              Pointer,
              int lHandle,
              int dw,
              )>()(
        ptr.ref.lpVtbl,
        lHandle,
        dw,
      );

// virtual HRESULT STDMETHODCALLTYPE ReadQWORD(
// /* [in] */ long lHandle,
// /* [out] */ unsigned __int64 *pqw) = 0;
  int ReadQWORD(
      int lHandle,
      Pointer<Uint64> pqw,
      ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
          Pointer<
              NativeFunction<
                  Int32 Function(
                      Pointer,
                      Int32 lHandle,
                      Pointer<Uint64> pqw,
                      )>>>()
          .value
          .asFunction<
          int Function(
              Pointer,
              int lHandle,
              Pointer<Uint64> pqw,
              )>()(
        ptr.ref.lpVtbl,
        lHandle,
        pqw,
      );


// virtual HRESULT STDMETHODCALLTYPE WriteQWORD(
// /* [in] */ long lHandle,
// /* [in] */ unsigned __int64 pw) = 0;
  int WriteQWORD(
      int lHandle,
      int pw,
      ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
          Pointer<
              NativeFunction<
                  Int32 Function(
                      Pointer,
                      Int32 lHandle,
                      Uint64 pw,
                      )>>>()
          .value
          .asFunction<
          int Function(
              Pointer,
              int lHandle,
              int pw,
              )>()(
        ptr.ref.lpVtbl,
        lHandle,
        pw,
      );


// virtual HRESULT STDMETHODCALLTYPE GetPropertyInfoByHandle(
// /* [in] */ long lHandle,
// /* [out] */ BSTR *pstrName,
// /* [out] */ CIMTYPE *pType) = 0;
  int GetPropertyInfoByHandle(
      int lHandle,
      Pointer<Utf16> pstrName,
      Pointer<Int32> pType,
      ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
          Pointer<
              NativeFunction<
                  Int32 Function(
                      Pointer,
                      Int32 lHandle,
                      Pointer<Utf16> pstrName,
                      Pointer<Int32> pType,
                      )>>>()
          .value
          .asFunction<
          int Function(
              Pointer,
              int lHandle,
              Pointer<Utf16> pstrName,
              Pointer<Int32> pType,
              )>()(
        ptr.ref.lpVtbl,
        lHandle,
        pstrName,
        pType,
      );


// virtual HRESULT STDMETHODCALLTYPE Lock(
// /* [in] */ long lFlags) = 0;
  int Lock(
      int lFlags,
      ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
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
              )>()(
        ptr.ref.lpVtbl,
        lFlags,
      );

// virtual HRESULT STDMETHODCALLTYPE Unlock(
// /* [in] */ long lFlags) = 0;

  int Unlock(
      int lFlags,
      ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
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
              )>()(
        ptr.ref.lpVtbl,
        lFlags,
      );

}
