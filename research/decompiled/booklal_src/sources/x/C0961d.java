package x;

import android.view.ViewGroup;
/* renamed from: x.d  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0961d extends ViewGroup.MarginLayoutParams {

    /* renamed from: A  reason: collision with root package name */
    public int f11270A;

    /* renamed from: B  reason: collision with root package name */
    public int f11271B;

    /* renamed from: C  reason: collision with root package name */
    public int f11272C;

    /* renamed from: D  reason: collision with root package name */
    public int f11273D;

    /* renamed from: E  reason: collision with root package name */
    public float f11274E;

    /* renamed from: F  reason: collision with root package name */
    public float f11275F;

    /* renamed from: G  reason: collision with root package name */
    public String f11276G;
    public float H;

    /* renamed from: I  reason: collision with root package name */
    public float f11277I;

    /* renamed from: J  reason: collision with root package name */
    public int f11278J;

    /* renamed from: K  reason: collision with root package name */
    public int f11279K;

    /* renamed from: L  reason: collision with root package name */
    public int f11280L;

    /* renamed from: M  reason: collision with root package name */
    public int f11281M;

    /* renamed from: N  reason: collision with root package name */
    public int f11282N;

    /* renamed from: O  reason: collision with root package name */
    public int f11283O;

    /* renamed from: P  reason: collision with root package name */
    public int f11284P;

    /* renamed from: Q  reason: collision with root package name */
    public int f11285Q;

    /* renamed from: R  reason: collision with root package name */
    public float f11286R;

    /* renamed from: S  reason: collision with root package name */
    public float f11287S;

    /* renamed from: T  reason: collision with root package name */
    public int f11288T;

    /* renamed from: U  reason: collision with root package name */
    public int f11289U;

    /* renamed from: V  reason: collision with root package name */
    public int f11290V;

    /* renamed from: W  reason: collision with root package name */
    public boolean f11291W;

    /* renamed from: X  reason: collision with root package name */
    public boolean f11292X;
    public String Y;

    /* renamed from: Z  reason: collision with root package name */
    public int f11293Z;

    /* renamed from: a  reason: collision with root package name */
    public int f11294a;

    /* renamed from: a0  reason: collision with root package name */
    public boolean f11295a0;

    /* renamed from: b  reason: collision with root package name */
    public int f11296b;

    /* renamed from: b0  reason: collision with root package name */
    public boolean f11297b0;

    /* renamed from: c  reason: collision with root package name */
    public float f11298c;

    /* renamed from: c0  reason: collision with root package name */
    public boolean f11299c0;

    /* renamed from: d  reason: collision with root package name */
    public boolean f11300d;

    /* renamed from: d0  reason: collision with root package name */
    public boolean f11301d0;

    /* renamed from: e  reason: collision with root package name */
    public int f11302e;

    /* renamed from: e0  reason: collision with root package name */
    public boolean f11303e0;

    /* renamed from: f  reason: collision with root package name */
    public int f11304f;

    /* renamed from: f0  reason: collision with root package name */
    public int f11305f0;

    /* renamed from: g  reason: collision with root package name */
    public int f11306g;

    /* renamed from: g0  reason: collision with root package name */
    public int f11307g0;

    /* renamed from: h  reason: collision with root package name */
    public int f11308h;

    /* renamed from: h0  reason: collision with root package name */
    public int f11309h0;
    public int i;

    /* renamed from: i0  reason: collision with root package name */
    public int f11310i0;

    /* renamed from: j  reason: collision with root package name */
    public int f11311j;

    /* renamed from: j0  reason: collision with root package name */
    public int f11312j0;

    /* renamed from: k  reason: collision with root package name */
    public int f11313k;

    /* renamed from: k0  reason: collision with root package name */
    public int f11314k0;

    /* renamed from: l  reason: collision with root package name */
    public int f11315l;

    /* renamed from: l0  reason: collision with root package name */
    public float f11316l0;

    /* renamed from: m  reason: collision with root package name */
    public int f11317m;

    /* renamed from: m0  reason: collision with root package name */
    public int f11318m0;

    /* renamed from: n  reason: collision with root package name */
    public int f11319n;
    public int n0;
    public int o;

    /* renamed from: o0  reason: collision with root package name */
    public float f11320o0;

    /* renamed from: p  reason: collision with root package name */
    public int f11321p;

    /* renamed from: p0  reason: collision with root package name */
    public u.d f11322p0;

    /* renamed from: q  reason: collision with root package name */
    public int f11323q;

    /* renamed from: r  reason: collision with root package name */
    public float f11324r;

    /* renamed from: s  reason: collision with root package name */
    public int f11325s;

    /* renamed from: t  reason: collision with root package name */
    public int f11326t;

    /* renamed from: u  reason: collision with root package name */
    public int f11327u;

    /* renamed from: v  reason: collision with root package name */
    public int f11328v;

    /* renamed from: w  reason: collision with root package name */
    public int f11329w;

    /* renamed from: x  reason: collision with root package name */
    public int f11330x;

    /* renamed from: y  reason: collision with root package name */
    public int f11331y;

    /* renamed from: z  reason: collision with root package name */
    public int f11332z;

    public final void a() {
        this.f11301d0 = false;
        this.f11295a0 = true;
        this.f11297b0 = true;
        int i = ((ViewGroup.MarginLayoutParams) this).width;
        if (i == -2 && this.f11291W) {
            this.f11295a0 = false;
            if (this.f11280L == 0) {
                this.f11280L = 1;
            }
        }
        int i4 = ((ViewGroup.MarginLayoutParams) this).height;
        if (i4 == -2 && this.f11292X) {
            this.f11297b0 = false;
            if (this.f11281M == 0) {
                this.f11281M = 1;
            }
        }
        if (i == 0 || i == -1) {
            this.f11295a0 = false;
            if (i == 0 && this.f11280L == 1) {
                ((ViewGroup.MarginLayoutParams) this).width = -2;
                this.f11291W = true;
            }
        }
        if (i4 == 0 || i4 == -1) {
            this.f11297b0 = false;
            if (i4 == 0 && this.f11281M == 1) {
                ((ViewGroup.MarginLayoutParams) this).height = -2;
                this.f11292X = true;
            }
        }
        if (this.f11298c == -1.0f && this.f11294a == -1 && this.f11296b == -1) {
            return;
        }
        this.f11301d0 = true;
        this.f11295a0 = true;
        this.f11297b0 = true;
        if (!(this.f11322p0 instanceof u.f)) {
            this.f11322p0 = new u.f();
        }
        ((u.f) this.f11322p0).O(this.f11290V);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0082  */
    @Override // android.view.ViewGroup.MarginLayoutParams, android.view.ViewGroup.LayoutParams
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void resolveLayoutDirection(int r11) {
        /*
            Method dump skipped, instructions count: 259
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: x.C0961d.resolveLayoutDirection(int):void");
    }
}
