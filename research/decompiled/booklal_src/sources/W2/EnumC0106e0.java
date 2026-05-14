package W2;
/* renamed from: W2.e0  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public enum EnumC0106e0 implements com.google.protobuf.S {
    DIRECTION_UNSPECIFIED(0),
    ASCENDING(1),
    DESCENDING(2),
    UNRECOGNIZED(-1);
    

    /* renamed from: a  reason: collision with root package name */
    public final int f2925a;

    EnumC0106e0(int i) {
        this.f2925a = i;
    }

    @Override // com.google.protobuf.S
    public final int getNumber() {
        if (this != UNRECOGNIZED) {
            return this.f2925a;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
