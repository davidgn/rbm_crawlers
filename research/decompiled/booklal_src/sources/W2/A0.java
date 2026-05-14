package W2;
/* loaded from: classes2.dex */
public enum A0 implements com.google.protobuf.S {
    NO_CHANGE(0),
    ADD(1),
    REMOVE(2),
    CURRENT(3),
    RESET(4),
    UNRECOGNIZED(-1);
    

    /* renamed from: a  reason: collision with root package name */
    public final int f2886a;

    A0(int i) {
        this.f2886a = i;
    }

    @Override // com.google.protobuf.S
    public final int getNumber() {
        if (this != UNRECOGNIZED) {
            return this.f2886a;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
