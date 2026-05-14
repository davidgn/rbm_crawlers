package h3;
/* renamed from: h3.d  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class RunnableC0457d implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f7689a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ H1.a f7690b;

    public /* synthetic */ RunnableC0457d(H1.a aVar, int i) {
        this.f7689a = i;
        this.f7690b = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7689a) {
            case 0:
                throw new IllegalStateException("Transformation " + this.f7690b.a() + " returned input Bitmap but recycled it.");
            default:
                throw new IllegalStateException("Transformation " + this.f7690b.a() + " mutated input Bitmap but failed to recycle the original.");
        }
    }
}
