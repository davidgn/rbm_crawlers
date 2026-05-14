package W2;
/* loaded from: classes2.dex */
public enum r0 implements com.google.protobuf.S {
    OPERATOR_UNSPECIFIED(0),
    IS_NAN(2),
    IS_NULL(3),
    IS_NOT_NAN(4),
    IS_NOT_NULL(5),
    UNRECOGNIZED(-1);
    

    /* renamed from: a  reason: collision with root package name */
    public final int f2952a;

    r0(int i) {
        this.f2952a = i;
    }

    @Override // com.google.protobuf.S
    public final int getNumber() {
        if (this != UNRECOGNIZED) {
            return this.f2952a;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
