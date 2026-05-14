package W2;
/* renamed from: W2.g0  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public enum EnumC0110g0 implements com.google.protobuf.S {
    OPERATOR_UNSPECIFIED(0),
    LESS_THAN(1),
    LESS_THAN_OR_EQUAL(2),
    GREATER_THAN(3),
    GREATER_THAN_OR_EQUAL(4),
    EQUAL(5),
    NOT_EQUAL(6),
    ARRAY_CONTAINS(7),
    IN(8),
    ARRAY_CONTAINS_ANY(9),
    NOT_IN(10),
    UNRECOGNIZED(-1);
    

    /* renamed from: a  reason: collision with root package name */
    public final int f2938a;

    EnumC0110g0(int i) {
        this.f2938a = i;
    }

    @Override // com.google.protobuf.S
    public final int getNumber() {
        if (this != UNRECOGNIZED) {
            return this.f2938a;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
