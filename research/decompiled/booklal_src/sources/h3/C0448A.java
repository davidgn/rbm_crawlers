package h3;

import android.net.Uri;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.TimeUnit;
/* renamed from: h3.A  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0448A {

    /* renamed from: a  reason: collision with root package name */
    public final Uri f7643a;

    /* renamed from: b  reason: collision with root package name */
    public final List f7644b;

    /* renamed from: c  reason: collision with root package name */
    public final int f7645c;

    /* renamed from: d  reason: collision with root package name */
    public final int f7646d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f7647e;

    /* renamed from: f  reason: collision with root package name */
    public final int f7648f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f7649g;

    /* renamed from: h  reason: collision with root package name */
    public final int f7650h;

    static {
        TimeUnit.SECONDS.toNanos(5L);
    }

    public C0448A(Uri uri, ArrayList arrayList, int i, int i4, boolean z4, boolean z5, int i5, int i6) {
        this.f7643a = uri;
        if (arrayList == null) {
            this.f7644b = null;
        } else {
            this.f7644b = Collections.unmodifiableList(arrayList);
        }
        this.f7645c = i;
        this.f7646d = i4;
        this.f7647e = z4;
        this.f7649g = z5;
        this.f7648f = i5;
        this.f7650h = i6;
    }

    public final boolean a() {
        return (this.f7645c == 0 && this.f7646d == 0) ? false : true;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Request{");
        sb.append(this.f7643a);
        List<H1.a> list = this.f7644b;
        if (list != null && !list.isEmpty()) {
            for (H1.a aVar : list) {
                sb.append(' ');
                sb.append(aVar.a());
            }
        }
        int i = this.f7645c;
        if (i > 0) {
            sb.append(" resize(");
            sb.append(i);
            sb.append(',');
            sb.append(this.f7646d);
            sb.append(')');
        }
        if (this.f7647e) {
            sb.append(" centerCrop");
        }
        if (this.f7649g) {
            sb.append(" centerInside");
        }
        sb.append('}');
        return sb.toString();
    }
}
