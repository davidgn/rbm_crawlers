package com.google.firebase.inappmessaging;

import com.google.protobuf.S;
import com.google.protobuf.T;
import com.google.protobuf.U;
/* loaded from: classes2.dex */
public enum RenderErrorReason implements S {
    UNSPECIFIED_RENDER_ERROR(0),
    IMAGE_FETCH_ERROR(1),
    IMAGE_DISPLAY_ERROR(2),
    IMAGE_UNSUPPORTED_FORMAT(3);
    
    public static final int IMAGE_DISPLAY_ERROR_VALUE = 2;
    public static final int IMAGE_FETCH_ERROR_VALUE = 1;
    public static final int IMAGE_UNSUPPORTED_FORMAT_VALUE = 3;
    public static final int UNSPECIFIED_RENDER_ERROR_VALUE = 0;
    private static final T internalValueMap = new T() { // from class: com.google.firebase.inappmessaging.RenderErrorReason.1
        /* renamed from: findValueByNumber */
        public RenderErrorReason m11findValueByNumber(int i) {
            return RenderErrorReason.forNumber(i);
        }
    };
    private final int value;

    /* loaded from: classes2.dex */
    public static final class RenderErrorReasonVerifier implements U {
        static final U INSTANCE = new RenderErrorReasonVerifier();

        private RenderErrorReasonVerifier() {
        }

        @Override // com.google.protobuf.U
        public boolean isInRange(int i) {
            return RenderErrorReason.forNumber(i) != null;
        }
    }

    RenderErrorReason(int i) {
        this.value = i;
    }

    public static RenderErrorReason forNumber(int i) {
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        return null;
                    }
                    return IMAGE_UNSUPPORTED_FORMAT;
                }
                return IMAGE_DISPLAY_ERROR;
            }
            return IMAGE_FETCH_ERROR;
        }
        return UNSPECIFIED_RENDER_ERROR;
    }

    public static T internalGetValueMap() {
        return internalValueMap;
    }

    public static U internalGetVerifier() {
        return RenderErrorReasonVerifier.INSTANCE;
    }

    @Override // com.google.protobuf.S
    public final int getNumber() {
        return this.value;
    }

    @Deprecated
    public static RenderErrorReason valueOf(int i) {
        return forNumber(i);
    }
}
