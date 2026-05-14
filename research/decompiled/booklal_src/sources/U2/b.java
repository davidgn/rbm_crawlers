package U2;

import com.google.protobuf.S;
/* loaded from: classes2.dex */
public enum b implements S {
    /* JADX INFO: Fake field, exist only in values array */
    ARRAY_CONFIG_UNSPECIFIED(0),
    CONTAINS(1),
    UNRECOGNIZED(-1);
    

    /* renamed from: a  reason: collision with root package name */
    public final int f2747a;

    b(int i) {
        this.f2747a = i;
    }

    @Override // com.google.protobuf.S
    public final int getNumber() {
        if (this != UNRECOGNIZED) {
            return this.f2747a;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
