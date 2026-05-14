package V2;

import com.google.protobuf.S;
/* loaded from: classes2.dex */
public enum b implements S {
    FIRST(0),
    LAST(1),
    UNRECOGNIZED(-1);
    

    /* renamed from: a  reason: collision with root package name */
    public final int f2823a;

    b(int i) {
        this.f2823a = i;
    }

    @Override // com.google.protobuf.S
    public final int getNumber() {
        if (this != UNRECOGNIZED) {
            return this.f2823a;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
