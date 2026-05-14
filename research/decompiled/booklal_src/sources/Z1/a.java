package Z1;
/* loaded from: classes.dex */
public final class a {

    /* renamed from: f  reason: collision with root package name */
    public static final a f3464f = new a(10485760, 604800000, 200, 10000, 81920);

    /* renamed from: a  reason: collision with root package name */
    public final long f3465a;

    /* renamed from: b  reason: collision with root package name */
    public final int f3466b;

    /* renamed from: c  reason: collision with root package name */
    public final int f3467c;

    /* renamed from: d  reason: collision with root package name */
    public final long f3468d;

    /* renamed from: e  reason: collision with root package name */
    public final int f3469e;

    public a(long j5, long j6, int i, int i4, int i5) {
        this.f3465a = j5;
        this.f3466b = i;
        this.f3467c = i4;
        this.f3468d = j6;
        this.f3469e = i5;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof a) {
            a aVar = (a) obj;
            return this.f3465a == aVar.f3465a && this.f3466b == aVar.f3466b && this.f3467c == aVar.f3467c && this.f3468d == aVar.f3468d && this.f3469e == aVar.f3469e;
        }
        return false;
    }

    public final int hashCode() {
        long j5 = this.f3465a;
        long j6 = this.f3468d;
        return ((((((((((int) (j5 ^ (j5 >>> 32))) ^ 1000003) * 1000003) ^ this.f3466b) * 1000003) ^ this.f3467c) * 1000003) ^ ((int) ((j6 >>> 32) ^ j6))) * 1000003) ^ this.f3469e;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("EventStoreConfig{maxStorageSizeInBytes=");
        sb.append(this.f3465a);
        sb.append(", loadBatchSize=");
        sb.append(this.f3466b);
        sb.append(", criticalSectionEnterTimeoutMs=");
        sb.append(this.f3467c);
        sb.append(", eventCleanUpAge=");
        sb.append(this.f3468d);
        sb.append(", maxBlobByteSizePerRow=");
        return e1.i.b(this.f3469e, "}", sb);
    }
}
