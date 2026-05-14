package u0;
/* renamed from: u0.S  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0892S {

    /* renamed from: a  reason: collision with root package name */
    public int f10710a;

    /* renamed from: b  reason: collision with root package name */
    public int f10711b;

    /* renamed from: c  reason: collision with root package name */
    public int f10712c;

    /* renamed from: d  reason: collision with root package name */
    public int f10713d;

    /* renamed from: e  reason: collision with root package name */
    public int f10714e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f10715f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f10716g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f10717h;
    public boolean i;

    /* renamed from: j  reason: collision with root package name */
    public boolean f10718j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f10719k;

    /* renamed from: l  reason: collision with root package name */
    public int f10720l;

    /* renamed from: m  reason: collision with root package name */
    public long f10721m;

    /* renamed from: n  reason: collision with root package name */
    public int f10722n;

    public final void a(int i) {
        if ((this.f10713d & i) != 0) {
            return;
        }
        throw new IllegalStateException("Layout state should be one of " + Integer.toBinaryString(i) + " but it is " + Integer.toBinaryString(this.f10713d));
    }

    public final int b() {
        return this.f10716g ? this.f10711b - this.f10712c : this.f10714e;
    }

    public final String toString() {
        return "State{mTargetPosition=" + this.f10710a + ", mData=null, mItemCount=" + this.f10714e + ", mIsMeasuring=" + this.i + ", mPreviousLayoutItemCount=" + this.f10711b + ", mDeletedInvisibleItemCountSincePreviousLayout=" + this.f10712c + ", mStructureChanged=" + this.f10715f + ", mInPreLayout=" + this.f10716g + ", mRunSimpleAnimations=" + this.f10718j + ", mRunPredictiveAnimations=" + this.f10719k + '}';
    }
}
