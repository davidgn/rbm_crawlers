package U2;

import com.google.protobuf.S;
/* loaded from: classes2.dex */
public enum f implements S {
    /* JADX INFO: Fake field, exist only in values array */
    QUERY_SCOPE_UNSPECIFIED(0),
    /* JADX INFO: Fake field, exist only in values array */
    COLLECTION(1),
    COLLECTION_GROUP(2),
    UNRECOGNIZED(-1);
    

    /* renamed from: a  reason: collision with root package name */
    public final int f2757a;

    f(int i) {
        this.f2757a = i;
    }

    @Override // com.google.protobuf.S
    public final int getNumber() {
        if (this != UNRECOGNIZED) {
            return this.f2757a;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
