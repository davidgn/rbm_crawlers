package U2;

import com.google.protobuf.S;
/* loaded from: classes2.dex */
public enum d implements S {
    ORDER_UNSPECIFIED(0),
    ASCENDING(1),
    DESCENDING(2),
    UNRECOGNIZED(-1);
    

    /* renamed from: a  reason: collision with root package name */
    public final int f2753a;

    d(int i) {
        this.f2753a = i;
    }

    @Override // com.google.protobuf.S
    public final int getNumber() {
        if (this != UNRECOGNIZED) {
            return this.f2753a;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
