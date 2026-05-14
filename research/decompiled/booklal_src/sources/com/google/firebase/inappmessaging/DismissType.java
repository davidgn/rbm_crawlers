package com.google.firebase.inappmessaging;

import com.google.protobuf.S;
import com.google.protobuf.T;
import com.google.protobuf.U;
/* loaded from: classes2.dex */
public enum DismissType implements S {
    UNKNOWN_DISMISS_TYPE(0),
    AUTO(1),
    CLICK(2),
    SWIPE(3);
    
    public static final int AUTO_VALUE = 1;
    public static final int CLICK_VALUE = 2;
    public static final int SWIPE_VALUE = 3;
    public static final int UNKNOWN_DISMISS_TYPE_VALUE = 0;
    private static final T internalValueMap = new T() { // from class: com.google.firebase.inappmessaging.DismissType.1
        /* renamed from: findValueByNumber */
        public DismissType m7findValueByNumber(int i) {
            return DismissType.forNumber(i);
        }
    };
    private final int value;

    /* loaded from: classes2.dex */
    public static final class DismissTypeVerifier implements U {
        static final U INSTANCE = new DismissTypeVerifier();

        private DismissTypeVerifier() {
        }

        @Override // com.google.protobuf.U
        public boolean isInRange(int i) {
            return DismissType.forNumber(i) != null;
        }
    }

    DismissType(int i) {
        this.value = i;
    }

    public static DismissType forNumber(int i) {
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        return null;
                    }
                    return SWIPE;
                }
                return CLICK;
            }
            return AUTO;
        }
        return UNKNOWN_DISMISS_TYPE;
    }

    public static T internalGetValueMap() {
        return internalValueMap;
    }

    public static U internalGetVerifier() {
        return DismissTypeVerifier.INSTANCE;
    }

    @Override // com.google.protobuf.S
    public final int getNumber() {
        return this.value;
    }

    @Deprecated
    public static DismissType valueOf(int i) {
        return forNumber(i);
    }
}
