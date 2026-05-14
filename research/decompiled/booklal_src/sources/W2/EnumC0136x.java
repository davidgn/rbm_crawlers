package W2;
/* renamed from: W2.x  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public enum EnumC0136x implements com.google.protobuf.S {
    SERVER_VALUE_UNSPECIFIED(0),
    REQUEST_TIME(1),
    UNRECOGNIZED(-1);
    

    /* renamed from: a  reason: collision with root package name */
    public final int f2957a;

    EnumC0136x(int i) {
        this.f2957a = i;
    }

    @Override // com.google.protobuf.S
    public final int getNumber() {
        if (this != UNRECOGNIZED) {
            return this.f2957a;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
