package M;

import android.os.Build;
import android.view.View;
import d3.C0377a;
import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public abstract class K {

    /* renamed from: a  reason: collision with root package name */
    public int f1800a;

    /* renamed from: b  reason: collision with root package name */
    public int f1801b;

    /* renamed from: c  reason: collision with root package name */
    public int f1802c;

    /* renamed from: d  reason: collision with root package name */
    public Object f1803d;

    public K() {
        if (C0377a.f6966d == null) {
            C0377a.f6966d = new C0377a(15);
        }
    }

    public int a(int i) {
        if (i < this.f1802c) {
            return ((ByteBuffer) this.f1803d).getShort(this.f1801b + i);
        }
        return 0;
    }

    public abstract Object b(View view);

    public abstract void c(View view, Object obj);

    public void d(View view, Object obj) {
        Object tag;
        if (Build.VERSION.SDK_INT >= this.f1801b) {
            c(view, obj);
            return;
        }
        if (Build.VERSION.SDK_INT >= this.f1801b) {
            tag = b(view);
        } else {
            tag = view.getTag(this.f1800a);
            if (!((Class) this.f1803d).isInstance(tag)) {
                tag = null;
            }
        }
        if (e(tag, obj)) {
            View.AccessibilityDelegate d2 = AbstractC0070a0.d(view);
            C0071b c0071b = d2 == null ? null : d2 instanceof C0069a ? ((C0069a) d2).f1812a : new C0071b(d2);
            if (c0071b == null) {
                c0071b = new C0071b();
            }
            AbstractC0070a0.m(view, c0071b);
            view.setTag(this.f1800a, obj);
            AbstractC0070a0.g(view, this.f1802c);
        }
    }

    public abstract boolean e(Object obj, Object obj2);
}
