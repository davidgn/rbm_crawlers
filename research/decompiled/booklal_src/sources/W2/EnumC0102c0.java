package W2;
/* renamed from: W2.c0  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public enum EnumC0102c0 implements com.google.protobuf.S {
    OPERATOR_UNSPECIFIED(0),
    AND(1),
    OR(2),
    UNRECOGNIZED(-1);
    

    /* renamed from: a  reason: collision with root package name */
    public final int f2919a;

    EnumC0102c0(int i) {
        this.f2919a = i;
    }

    @Override // com.google.protobuf.S
    public final int getNumber() {
        if (this != UNRECOGNIZED) {
            return this.f2919a;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
