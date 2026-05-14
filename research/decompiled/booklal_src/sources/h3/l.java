package h3;

import android.widget.ImageView;
/* loaded from: classes2.dex */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    public final v f7732a;

    /* renamed from: b  reason: collision with root package name */
    public final C0448A f7733b;

    /* renamed from: c  reason: collision with root package name */
    public final C0454a f7734c;

    /* renamed from: d  reason: collision with root package name */
    public final int f7735d;

    /* renamed from: e  reason: collision with root package name */
    public final String f7736e;

    /* renamed from: f  reason: collision with root package name */
    public final Object f7737f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f7738g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f7739h;

    public l(v vVar, ImageView imageView, C0448A c0448a, int i, String str) {
        this.f7732a = vVar;
        this.f7733b = c0448a;
        this.f7734c = imageView == null ? null : new C0454a(this, imageView, vVar.f7764h);
        this.f7735d = i;
        this.f7736e = str;
        this.f7737f = this;
    }

    public final Object a() {
        C0454a c0454a = this.f7734c;
        if (c0454a == null) {
            return null;
        }
        return c0454a.get();
    }
}
