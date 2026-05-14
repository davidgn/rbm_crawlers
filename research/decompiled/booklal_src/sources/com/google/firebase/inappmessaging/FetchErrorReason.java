package com.google.firebase.inappmessaging;

import com.google.protobuf.S;
import com.google.protobuf.T;
import com.google.protobuf.U;
/* loaded from: classes2.dex */
public enum FetchErrorReason implements S {
    UNSPECIFIED_FETCH_ERROR(0),
    SERVER_ERROR(1),
    CLIENT_ERROR(2),
    NETWORK_ERROR(3);
    
    public static final int CLIENT_ERROR_VALUE = 2;
    public static final int NETWORK_ERROR_VALUE = 3;
    public static final int SERVER_ERROR_VALUE = 1;
    public static final int UNSPECIFIED_FETCH_ERROR_VALUE = 0;
    private static final T internalValueMap = new T() { // from class: com.google.firebase.inappmessaging.FetchErrorReason.1
        /* renamed from: findValueByNumber */
        public FetchErrorReason m10findValueByNumber(int i) {
            return FetchErrorReason.forNumber(i);
        }
    };
    private final int value;

    /* loaded from: classes2.dex */
    public static final class FetchErrorReasonVerifier implements U {
        static final U INSTANCE = new FetchErrorReasonVerifier();

        private FetchErrorReasonVerifier() {
        }

        @Override // com.google.protobuf.U
        public boolean isInRange(int i) {
            return FetchErrorReason.forNumber(i) != null;
        }
    }

    FetchErrorReason(int i) {
        this.value = i;
    }

    public static FetchErrorReason forNumber(int i) {
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        return null;
                    }
                    return NETWORK_ERROR;
                }
                return CLIENT_ERROR;
            }
            return SERVER_ERROR;
        }
        return UNSPECIFIED_FETCH_ERROR;
    }

    public static T internalGetValueMap() {
        return internalValueMap;
    }

    public static U internalGetVerifier() {
        return FetchErrorReasonVerifier.INSTANCE;
    }

    @Override // com.google.protobuf.S
    public final int getNumber() {
        return this.value;
    }

    @Deprecated
    public static FetchErrorReason valueOf(int i) {
        return forNumber(i);
    }
}
