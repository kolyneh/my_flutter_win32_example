// IWbemConfigureRefresher.dart

// ignore_for_file: unused_import, directives_ordering
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

/// IWbemConfigureRefresher define in WbemCli.h

// MIDL_INTERFACE("49353c92-516b-11d1-aea6-00c04fb68820")
// IWbemConfigureRefresher : public IUnknown
// {
// public:
// virtual HRESULT STDMETHODCALLTYPE AddObjectByPath(
// /* [in] */ IWbemServices *pNamespace,
// /* [string][in] */ LPCWSTR wszPath,
// /* [in] */ long lFlags,
// /* [in] */ IWbemContext *pContext,
// /* [out] */ IWbemClassObject **ppRefreshable,
// /* [unique][in][out] */ long *plId) = 0;
//
// virtual HRESULT STDMETHODCALLTYPE AddObjectByTemplate(
// /* [in] */ IWbemServices *pNamespace,
// /* [in] */ IWbemClassObject *pTemplate,
// /* [in] */ long lFlags,
// /* [in] */ IWbemContext *pContext,
// /* [out] */ IWbemClassObject **ppRefreshable,
// /* [unique][in][out] */ long *plId) = 0;
//
// virtual HRESULT STDMETHODCALLTYPE AddRefresher(
// /* [in] */ IWbemRefresher *pRefresher,
// /* [in] */ long lFlags,
// /* [unique][in][out] */ long *plId) = 0;
//
// virtual HRESULT STDMETHODCALLTYPE Remove(
// /* [in] */ long lId,
// /* [in] */ long lFlags) = 0;
//
// virtual HRESULT STDMETHODCALLTYPE AddEnum(
// /* [in] */ IWbemServices *pNamespace,
// /* [string][in] */ LPCWSTR wszClassName,
// /* [in] */ long lFlags,
// /* [in] */ IWbemContext *pContext,
// /* [out] */ IWbemHiPerfEnum **ppEnum,
// /* [unique][in][out] */ long *plId) = 0;
//
// };


/// @nodoc
const IID_IWbemConfigureRefresher = '{49353C92-516B-11D1-AEA6-00C04FB68820}';

/// {@category Interface}
/// {@category com}
class IWbemConfigureRefresher extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IWbemConfigureRefresher(Pointer<COMObject> ptr) : super(ptr);

  // virtual HRESULT STDMETHODCALLTYPE AddObjectByPath(
// /* [in] */ IWbemServices *pNamespace,
// /* [string][in] */ LPCWSTR wszPath,
// /* [in] */ long lFlags,
// /* [in] */ IWbemContext *pContext,
// /* [out] */ IWbemClassObject **ppRefreshable,
// /* [unique][in][out] */ long *plId) = 0;
  int AddObjectByPath(
      Pointer<COMObject> pNamespace,
      Pointer<Utf16> wszPath,
      int lFlags,
      Pointer<COMObject> pContext,
      Pointer<Pointer<COMObject>> ppRefreshable,
      Pointer<Int32> plId,
      ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
          Pointer<
              NativeFunction<
                  Int32 Function(
                      Pointer,
                      Pointer<COMObject> pNamespace,
                      Pointer<Utf16> wszPath,
                      Int32 lFlags,
                      Pointer<COMObject> pContext,
                      Pointer<Pointer<COMObject>> ppRefreshable,
                      Pointer<Int32> plId,
                      )>>>()
          .value
          .asFunction<
          int Function(
              Pointer,
              Pointer<COMObject> pNamespace,
              Pointer<Utf16> wszPath,
              int lFlags,
              Pointer<COMObject> pContext,
              Pointer<Pointer<COMObject>> ppRefreshable,
              Pointer<Int32> plId,
              )>()(
        ptr.ref.lpVtbl,
        pNamespace,
        wszPath,
        lFlags,
        pContext,
        ppRefreshable,
        plId,
      );


  // virtual HRESULT STDMETHODCALLTYPE AddObjectByTemplate(
// /* [in] */ IWbemServices *pNamespace,
// /* [in] */ IWbemClassObject *pTemplate,
// /* [in] */ long lFlags,
// /* [in] */ IWbemContext *pContext,
// /* [out] */ IWbemClassObject **ppRefreshable,
// /* [unique][in][out] */ long *plId) = 0;
  int AddObjectByTemplate(
      Pointer<COMObject> pNamespace,
      Pointer<COMObject> pTemplate,
      int lFlags,
      Pointer<COMObject> pContext,
      Pointer<Pointer<COMObject>> ppRefreshable,
      Pointer<Int32> plId,
      ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
          Pointer<
              NativeFunction<
                  Int32 Function(
                      Pointer,
                      Pointer<COMObject> pNamespace,
                      Pointer<COMObject> pTemplate,
                      Int32 lFlags,
                      Pointer<COMObject> pContext,
                      Pointer<Pointer<COMObject>> ppRefreshable,
                      Pointer<Int32> plId,
                      )>>>()
          .value
          .asFunction<
          int Function(
              Pointer,
              Pointer<COMObject> pNamespace,
              Pointer<COMObject> pTemplate,
              int lFlags,
              Pointer<COMObject> pContext,
              Pointer<Pointer<COMObject>> ppRefreshable,
              Pointer<Int32> plId,
              )>()(
        ptr.ref.lpVtbl,
        pNamespace,
        pTemplate,
        lFlags,
        pContext,
        ppRefreshable,
        plId,
      );


  // virtual HRESULT STDMETHODCALLTYPE AddRefresher(
// /* [in] */ IWbemRefresher *pRefresher,
// /* [in] */ long lFlags,
// /* [unique][in][out] */ long *plId) = 0;
  int AddRefresher(
      Pointer<COMObject> pRefresher,
      int lFlags,
      Pointer<Int32> plId,
      ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
          Pointer<
              NativeFunction<
                  Int32 Function(
                      Pointer,
                      Pointer<COMObject> pRefresher,
                      Int32 lFlags,
                      Pointer<Int32> plId,
                      )>>>()
          .value
          .asFunction<
          int Function(
              Pointer,
              Pointer<COMObject> pRefresher,
              int lFlags,
              Pointer<Int32> plId,
              )>()(
        ptr.ref.lpVtbl,
        pRefresher,
        lFlags,
        plId,
      );


  // virtual HRESULT STDMETHODCALLTYPE Remove(
// /* [in] */ long lId,
// /* [in] */ long lFlags) = 0;
  int Remove(
      int lId,
      int lFlags,
      ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
          Pointer<
              NativeFunction<
                  Int32 Function(
                      Pointer,
                      Int32 lId,
                      Int32 lFlags,
                      )>>>()
          .value
          .asFunction<
          int Function(
              Pointer,
              int lId,
              int lFlags,
              )>()(
        ptr.ref.lpVtbl,
        lId,
        lFlags,
      );


// virtual HRESULT STDMETHODCALLTYPE AddEnum(
// /* [in] */ IWbemServices *pNamespace,
// /* [string][in] */ LPCWSTR wszClassName,
// /* [in] */ long lFlags,
// /* [in] */ IWbemContext *pContext,
// /* [out] */ IWbemHiPerfEnum **ppEnum,
// /* [unique][in][out] */ long *plId) = 0;
  int AddEnum(
      Pointer<COMObject> pNamespace,
      Pointer<Utf16> wszClassName,
      int lFlags,
      Pointer<COMObject> pContext,
      Pointer<Pointer<COMObject>> ppEnum,
      Pointer<Int32> plId,
      ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
          Pointer<
              NativeFunction<
                  Int32 Function(
                      Pointer,
                      Pointer<COMObject> pNamespace,
                      Pointer<Utf16> wszClassName,
                      Int32 lFlags,
                      Pointer<COMObject> pContext,
                      Pointer<Pointer<COMObject>> ppEnum,
                      Pointer<Int32> plId,
                      )>>>()
          .value
          .asFunction<
          int Function(
              Pointer,
              Pointer<COMObject> pNamespace,
              Pointer<Utf16> wszClassName,
              int lFlags,
              Pointer<COMObject> pContext,
              Pointer<Pointer<COMObject>> ppEnum,
              Pointer<Int32> plId,
              )>()(
        ptr.ref.lpVtbl,
        pNamespace,
        wszClassName,
        lFlags,
        pContext,
        ppEnum,
        plId,
      );
}
