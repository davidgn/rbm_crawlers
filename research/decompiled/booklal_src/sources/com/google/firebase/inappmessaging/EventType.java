package com.google.firebase.inappmessaging;

import com.google.protobuf.S;
import com.google.protobuf.T;
import com.google.protobuf.U;
/* loaded from: classes2.dex */
public enum EventType implements S {
    UNKNOWN_EVENT_TYPE(0),
    IMPRESSION_EVENT_TYPE(1),
    CLICK_EVENT_TYPE(2);
    
    public static final int CLICK_EVENT_TYPE_VALUE = 2;
    public static final int IMPRESSION_EVENT_TYPE_VALUE = 1;
    public static final int UNKNOWN_EVENT_TYPE_VALUE = 0;
    private static final T internalValueMap = new T() { // from class: com.google.firebase.inappmessaging.EventType.1
        /* renamed from: findValueByNumber */
        public EventType m8findValueByNumber(int i) {
            return EventType.forNumber(i);
        }
    };
    private final int value;

    /* loaded from: classes2.dex */
    public static final class EventTypeVerifier implements U {
        static final U INSTANCE = new EventTypeVerifier();

        private EventTypeVerifier() {
        }

        @Override // com.google.protobuf.U
        public boolean isInRange(int i) {
            return EventType.forNumber(i) != null;
        }
    }

    EventType(int i) {
        this.value = i;
    }

    public static EventType forNumber(int i) {
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    return null;
                }
                return CLICK_EVENT_TYPE;
            }
            return IMPRESSION_EVENT_TYPE;
        }
        return UNKNOWN_EVENT_TYPE;
    }

    public static T internalGetValueMap() {
        return internalValueMap;
    }

    public static U internalGetVerifier() {
        return EventTypeVerifier.INSTANCE;
    }

    @Override // com.google.protobuf.S
    public final int getNumber() {
        return this.value;
    }

    @Deprecated
    public static EventType valueOf(int i) {
        return forNumber(i);
    }
}
