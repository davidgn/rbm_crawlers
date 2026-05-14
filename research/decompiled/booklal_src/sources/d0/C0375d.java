package d0;
/* renamed from: d0.d  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0375d {

    /* renamed from: a  reason: collision with root package name */
    public final long f6922a;

    /* renamed from: b  reason: collision with root package name */
    public final long f6923b;

    public C0375d(long j5, long j6) {
        if (j6 == 0) {
            this.f6922a = 0L;
            this.f6923b = 1L;
            return;
        }
        this.f6922a = j5;
        this.f6923b = j6;
    }

    public final String toString() {
        return this.f6922a + "/" + this.f6923b;
    }
}
