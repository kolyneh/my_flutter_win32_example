// IWbemHiPerfEnum.dart

// ignore_for_file: unused_import, directives_ordering
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';


/// IWbemHiPerfEnum define in WbemCli.h
// EXTERN_C const IID IID_IWbemHiPerfEnum;
//
// #if defined(__cplusplus) && !defined(CINTERFACE)
//
// MIDL_INTERFACE("2705C288-79AE-11d2-B348-00105A1F8177")
// IWbemHiPerfEnum : public IUnknown
// {
// public:
// virtual HRESULT STDMETHODCALLTYPE AddObjects(
// /* [in] */ long lFlags,
// /* [in] */ ULONG uNumObjects,
// /* [size_is][in] */ long *apIds,
// /* [size_is][in] */ IWbemObjectAccess **apObj) = 0;
//
// virtual HRESULT STDMETHODCALLTYPE RemoveObjects(
// /* [in] */ long lFlags,
// /* [in] */ ULONG uNumObjects,
// /* [size_is][in] */ long *apIds) = 0;
//
// virtual HRESULT STDMETHODCALLTYPE GetObjects(
// /* [in] */ long lFlags,
// /* [in] */ ULONG uNumObjects,
// /* [length_is][size_is][out] */ IWbemObjectAccess **apObj,
// /* [out] */ ULONG *puReturned) = 0;
//
// virtual HRESULT STDMETHODCALLTYPE RemoveAll(
// /* [in] */ long lFlags) = 0;
//
// };


/// @nodoc
const IID_IWbemHiPerfEnum = '{2705C288-79AE-11D2-B348-00105A1F8177}';

/// {@category Interface}
/// {@category com}
class IWbemHiPerfEnum extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IWbemHiPerfEnum(Pointer<COMObject> ptr) : super(ptr);


  // virtual HRESULT STDMETHODCALLTYPE AddObjects(
// /* [in] */ long lFlags,
// /* [in] */ ULONG uNumObjects,
// /* [size_is][in] */ long *apIds,
// /* [size_is][in] */ IWbemObjectAccess **apObj) = 0;
  int AddObjects(
      int lFlags,
      int uNumObjects,
      Pointer<Int32> apIds,
      Pointer<Pointer<COMObject>> apObj,
      ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
          Pointer<
              NativeFunction<
                  Int32 Function(
                      Pointer,
                      Int32 lFlags,
                      Int32 uNumObjects,
                      Pointer<Int32> apIds,
                      Pointer<Pointer<COMObject>> apObj,
                      )>>>()
          .value
          .asFunction<
          int Function(
              Pointer,
              int lFlags,
              int uNumObjects,
              Pointer<Int32> apIds,
              Pointer<Pointer<COMObject>> apObj,
              )>()(
        ptr.ref.lpVtbl,
        lFlags,
        uNumObjects,
        apIds,
        apObj,
      );


// virtual HRESULT STDMETHODCALLTYPE RemoveObjects(
// /* [in] */ long lFlags,
// /* [in] */ ULONG uNumObjects,
// /* [size_is][in] */ long *apIds) = 0;
  int RemoveObjects(
      int lFlags,
      int uNumObjects,
      Pointer<Int32> apIds,
      ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
          Pointer<
              NativeFunction<
                  Int32 Function(
                      Pointer,
                      Int32 lFlags,
                      Int32 uNumObjects,
                      Pointer<Int32> apIds,
                      )>>>()
          .value
          .asFunction<
          int Function(
              Pointer,
              int lFlags,
              int uNumObjects,
              Pointer<Int32> apIds,
              )>()(
        ptr.ref.lpVtbl,
        lFlags,
        uNumObjects,
        apIds,
      );

// virtual HRESULT STDMETHODCALLTYPE GetObjects(
// /* [in] */ long lFlags,
// /* [in] */ ULONG uNumObjects,
// /* [length_is][size_is][out] */ IWbemObjectAccess **apObj,
// /* [out] */ ULONG *puReturned) = 0;
  int GetObjects(
      int lFlags,
      int uNumObjects,
      Pointer<Pointer<COMObject>> apObj,
      Pointer<Int32> puReturned,
      ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
          Pointer<
              NativeFunction<
                  Int32 Function(
                      Pointer,
                      Int32 lFlags,
                      Int32 uNumObjects,
                      Pointer<Pointer<COMObject>> apObj,
                      Pointer<Int32> puReturned,
                      )>>>()
          .value
          .asFunction<
          int Function(
              Pointer,
              int lFlags,
              int uNumObjects,
              Pointer<Pointer<COMObject>> apObj,
              Pointer<Int32> puReturned,
              )>()(
        ptr.ref.lpVtbl,
        lFlags,
        uNumObjects,
        apObj,
        puReturned,
      );

// virtual HRESULT STDMETHODCALLTYPE RemoveAll(
// /* [in] */ long lFlags) = 0;
  int RemoveAll(
      int lFlags,
      ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
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

